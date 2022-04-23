package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.facebook.AccessToken;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final JsonReader<String> f17756a = new JsonReader<String>() { // from class: com.dropbox.core.DbxOAuth1Upgrader$3
        @Override // com.dropbox.core.json.JsonReader
        public final String read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                JsonReader.nextToken(jsonParser);
                try {
                    if (currentName.equals("token_type")) {
                        str = c.k.readField(jsonParser, currentName, str);
                    } else if (currentName.equals(AccessToken.ACCESS_TOKEN_KEY)) {
                        str2 = c.l.readField(jsonParser, currentName, str2);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str == null) {
                throw new JsonReadException("missing field \"token_type\"", expectObjectStart);
            } else if (str2 != null) {
                return str2;
            } else {
                throw new JsonReadException("missing field \"access_token\"", expectObjectStart);
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final h f17757b;

    /* renamed from: c  reason: collision with root package name */
    private final b f17758c;

    public f(h hVar, b bVar) {
        if (hVar == null) {
            throw new IllegalArgumentException("'requestConfig' is null");
        } else if (bVar != null) {
            this.f17757b = hVar;
            this.f17758c = bVar;
        } else {
            throw new IllegalArgumentException("'appInfo' is null");
        }
    }
}
