#!/bin/bash

# Usage: ./extract_samaccountnames_from_file.sh <ldap_output.txt>

if [ -z "$1" ]; then
    echo "Usage: $0 <ldap_output_file.txt>"
    exit 1
fi

INPUT_FILE="$1"

if [ ! -f "$INPUT_FILE" ]; then
    echo "File not found: $INPUT_FILE"
    exit 1
fi

# Extract and display all sAMAccountName values
grep "^sAMAccountName:" "$INPUT_FILE" | awk '{print $2}'

