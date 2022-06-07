# Findings

## On disk

`cca.db` contains offline records of spam phone numbers. Around 38000. Very unstructured/encoded.

## Network

- Likely
- Unknown encoding, not human readable
- Request reports its JSON, but payload indicates likely base64, but no json, nor compressed output is produced

Calls made:
- https://www.everycaller.com/api/android/41/en_US/lookup/
- https://www.everycaller.com/api/android/41/en_US/get_caller/
- https://www.googleapis.com/plus/v2whitelisted/people/lookup

GoogleAPIs call produces readable payloads:

Request observed:
```
# These are parsed query paramaters, there is no payload
includePeople: 1
includeGal:    1
type:          phone
fields:        kind,items(id,metadata(objectType,plusPageType,attributions),names,phoneNumbers(value,type,formattedType,canonicalizedForm),addresses(value,type,formattedType),images(url,metadata(container)),urls(value),placeDetails,extendedData)
includePlaces: 1
callType:      incoming
id:            [REDACTED]         # My phone number
```

Response observed:
```json
{
    "kind": "plus#peopleList"
}
```