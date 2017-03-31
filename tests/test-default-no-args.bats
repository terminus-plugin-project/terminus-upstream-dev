#!/usr/bin/env bats

#
# test-default-no-args.bats
#
# Test to check default command with no arguments
#

@test "output of plugin 'site:update' command with no arguments" {
  run terminus site:update $TERMINUS_SITE
  [[ "$output" == *"${TERMINUS_SITE_LABEL} Starting"* ]]
  [[ "$output" == *"${TERMINUS_SITE_LABEL}: dev creating backup"* ]]
  [[ "$output" == *"${TERMINUS_SITE_LABEL}: dev drusn updatedb"* ]]
  [[ "$output" == *"${TERMINUS_SITE_LABEL}: dev drush clear cache"* ]]
  [[ "$ouptut" == *"Completed Upstream Update for ${TERMINUS_SITE_LABEL}"* ]]
  [ "$status" -eq 0 ]
}