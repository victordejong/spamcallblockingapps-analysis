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
/* renamed from: com.dropbox.core.oauth.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/oauth/b.class */
public final class C8626b {

    /* renamed from: a */
    public static final Set<String> f30630a = new HashSet(Arrays.asList("invalid_request", "invalid_grant", "unsupported_grant_type"));

    /* renamed from: d */
    public static final JsonReader<C8626b> f30631d = new JsonReader<C8626b>() { // from class: com.dropbox.core.oauth.DbxOAuthError$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final C8626b read(JsonParser jsonParser) throws IOException, JsonReadException {
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
                return new C8626b(str, str2);
            }
            throw new JsonReadException("missing field \"error\"", expectObjectStart);
        }
    };

    /* renamed from: b */
    public final String f30632b;

    /* renamed from: c */
    final String f30633c;

    public C8626b(String str, String str2) {
        if (f30630a.contains(str)) {
            this.f30632b = str;
        } else {
            this.f30632b = "unknown";
        }
        this.f30633c = str2;
    }
}
