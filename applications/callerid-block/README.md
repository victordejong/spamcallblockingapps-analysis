# Findings

- Does not work on API <= 28

## On disk

Has an offline database with around 20 000 entries.

## Network

Makes calls over the network, likely binary encoded. Observed URLs:

- `https://app.ayamote.com/api/v1/sea.php`
- `https://app.ayamote.com/api/v1/searep.php`
- `https://ct.ayamote.com/c_n/api/v1/cnwik.php`