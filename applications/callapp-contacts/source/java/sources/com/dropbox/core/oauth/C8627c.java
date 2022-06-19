package com.dropbox.core.oauth;

import com.dropbox.core.C8571c;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.facebook.AccessToken;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.oauth.c */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/oauth/c.class */
public final class C8627c {

    /* renamed from: d */
    public static final JsonReader<C8627c> f30634d = new JsonReader<C8627c>() { // from class: com.dropbox.core.oauth.DbxRefreshResult$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final C8627c read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            String str2 = null;
            Long l = null;
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                JsonReader.nextToken(jsonParser);
                try {
                    if (currentName.equals("token_type")) {
                        str = C8571c.f30513k.readField(jsonParser, currentName, str);
                    } else if (currentName.equals(AccessToken.ACCESS_TOKEN_KEY)) {
                        str2 = C8571c.f30514l.readField(jsonParser, currentName, str2);
                    } else if (currentName.equals(AccessToken.EXPIRES_IN_KEY)) {
                        l = JsonReader.UInt64Reader.readField(jsonParser, currentName, l);
                    } else if (currentName.equals("scope")) {
                        str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
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
                if (l == null) {
                    throw new JsonReadException("missing field \"expires_in\"", expectObjectStart);
                }
                return new C8627c(str2, l.longValue(), str3);
            }
            throw new JsonReadException("missing field \"token_type\"", expectObjectStart);
        }
    };

    /* renamed from: a */
    final String f30635a;

    /* renamed from: b */
    final long f30636b;

    /* renamed from: c */
    long f30637c;

    /* renamed from: e */
    private String f30638e;

    public C8627c(String str, long j) {
        this(str, j, null);
    }

    public C8627c(String str, long j, String str2) {
        if (str != null) {
            this.f30635a = str;
            this.f30636b = j;
            this.f30637c = System.currentTimeMillis();
            this.f30638e = str2;
            return;
        }
        throw new IllegalArgumentException("access token can't be null.");
    }
}
