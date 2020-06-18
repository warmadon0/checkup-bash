#!/bin/bash
free | tr -s ' ' ',' | jq -nR '[( input | split(",") ) as $keys |( inputs | split(",") ) as $vals |[ [$keys, $vals] |transpose[] |{key:.[0],value:.[1]} ] |from_entries ]'
