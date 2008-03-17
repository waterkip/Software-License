#!perl
use strict;
use warnings;

use Test::More 'no_plan';

my $class = 'Software::License::Perl_5';
require_ok($class);

my $license = $class->new({ holder => 'X. Ample' });

diag "fulltext length: " . length $license->_templates->{FULLTEXT};
diag $license->name;
diag $license->notice;
diag $license->fulltext;
diag $license->version;
