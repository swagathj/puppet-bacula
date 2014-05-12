require 'rspec-puppet'

fixture_path = File.expand_path(File.join(__FILE__, '..', 'fixtures'))

RSpec.configure do |c|
  c.module_path   = File.join(fixture_path, 'modules')
  c.manifest_dir  = File.join(fixture_path, 'manifests')
  c.fail_fast     = true,
  c.hiera_config  = 'spec/fixtures/hiera.yaml'
  c.default_facts = {
    :concat_basedir => 'ugg postgres',
    :kernel         => 'Linux',
  }
end