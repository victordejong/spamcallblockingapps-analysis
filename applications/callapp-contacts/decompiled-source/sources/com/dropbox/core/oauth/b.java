package com.dropbox.core.oauth;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/oauth/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final Set<String> f17831a = new HashSet(Arrays.asList("invalid_request", "invalid_grant", "unsupported_grant_type"));

    /* renamed from: d  reason: collision with root package name */
    public static final JsonReader<b> f17832d = new JsonReader<b>() { // from class: com.dropbox.core.oauth.DbxOAuthError$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final b read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("error")) {
                        str = StringReader.readField(jsonParser, currentName, str);
                    } else if (currentName.equals("error_description")) {
                        str2 = StringReader.readField(jsonParser, currentName, str2);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str != null) {
                return new b(str, str2);
            }
            throw new JsonReadException("missing field \"error\"", expectObjectStart);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public final String f17833b;

    /* renamed from: c  reason: collision with root package name */
    final String f17834c;

    public b(String str, String str2) {
        if (f17831a.contains(str)) {
            this.f17833b = str;
        } else {
            this.f17833b = "unknown";
        }
        this.f17834c = str2;
    }
}
