class dns::server::install inherits dns::server::params {

  case $operatingsystem {
    centos, redhat: {
      package { 'bind9':
        name => ['bind','bind-utils'],
        ensure => latest,
      }
    }
    ubuntu, debian: {
      package { 'bind9':
        name => ['bind9','bind9utils'],
        ensure => latest,
      }
    }
  }

}
