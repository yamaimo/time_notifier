lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "time_notifier/version"

Gem::Specification.new do |spec|
  spec.name          = "time_notifier"
  spec.version       = TimeNotifier::VERSION
  spec.authors       = ["yamaimo"]
  spec.email         = ["hello@yamaimo.dev"]

  spec.summary       = "Notify specified times on macOS using Notification Center."
  spec.homepage      = "https://github.com/yamaimo/time_notifier"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "terminal-notifier"
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
