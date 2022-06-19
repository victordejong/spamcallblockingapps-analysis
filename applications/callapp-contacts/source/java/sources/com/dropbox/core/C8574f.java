package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.facebook.AccessToken;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.f */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/f.class */
public final class C8574f {

    /* renamed from: a */
    public static final JsonReader<String> f30537a = new JsonReader<String>() { // from class: com.dropbox.core.DbxOAuth1Upgrader$3
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
                        str = C8571c.f30513k.readField(jsonParser, currentName, str);
                    } else if (currentName.equals(AccessToken.ACCESS_TOKEN_KEY)) {
                        str2 = C8571c.f30514l.readField(jsonParser, currentName, str2);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str != null) {
                if (str2 == null) {
                    throw new JsonReadException("missing field \"access_token\"", expectObjectStart);
                }
                return str2;
            }
            throw new JsonReadException("missing field \"token_type\"", expectObjectStart);
        }
    };

    /* renamed from: b */
    private final C8577h f30538b;

    /* renamed from: c */
    private final C8570b f30539c;

    public C8574f(C8577h c8577h, C8570b c8570b) {
        if (c8577h != null) {
            if (c8570b == null) {
                throw new IllegalArgumentException("'appInfo' is null");
            }
            this.f30538b = c8577h;
            this.f30539c = c8570b;
            return;
        }
        throw new IllegalArgumentException("'requestConfig' is null");
    }
}
