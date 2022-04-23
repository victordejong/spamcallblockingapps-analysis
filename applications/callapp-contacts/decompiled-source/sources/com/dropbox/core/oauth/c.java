package com.dropbox.core.oauth;

import com.dropbox.core.c;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.facebook.AccessToken;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/oauth/c.class */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    public static final JsonReader<c> f17835d = new JsonReader<c>() { // from class: com.dropbox.core.oauth.DbxRefreshResult$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final c read(JsonParser jsonParser) throws IOException, JsonReadException {
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
                        str = c.k.readField(jsonParser, currentName, str);
                    } else if (currentName.equals(AccessToken.ACCESS_TOKEN_KEY)) {
                        str2 = c.l.readField(jsonParser, currentName, str2);
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
            if (str == null) {
                throw new JsonReadException("missing field \"token_type\"", expectObjectStart);
            } else if (str2 == null) {
                throw new JsonReadException("missing field \"access_token\"", expectObjectStart);
            } else if (l != null) {
                return new c(str2, l.longValue(), str3);
            } else {
                throw new JsonReadException("missing field \"expires_in\"", expectObjectStart);
            }
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final String f17836a;

    /* renamed from: b  reason: collision with root package name */
    final long f17837b;

    /* renamed from: c  reason: collision with root package name */
    long f17838c;
    private String e;

    public c(String str, long j) {
        this(str, j, null);
    }

    public c(String str, long j, String str2) {
        if (str != null) {
            this.f17836a = str;
            this.f17837b = j;
            this.f17838c = System.currentTimeMillis();
            this.e = str2;
            return;
        }
        throw new IllegalArgumentException("access token can't be null.");
    }
}
