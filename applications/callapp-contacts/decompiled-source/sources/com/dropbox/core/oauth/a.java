package com.dropbox.core.oauth;

import com.dropbox.core.DbxException;
import com.dropbox.core.e;
import com.dropbox.core.h;
import com.dropbox.core.http.a;
import com.dropbox.core.i;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonWriter;
import com.facebook.AccessToken;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/oauth/a.class */
public final class a {

    /* renamed from: d  reason: collision with root package name */
    public static final JsonReader<a> f17826d = new JsonReader<a>() { // from class: com.dropbox.core.oauth.DbxCredential$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final a read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            Long l = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals(AccessToken.ACCESS_TOKEN_KEY)) {
                        str = StringReader.readField(jsonParser, currentName, str);
                    } else if (currentName.equals("expires_at")) {
                        l = Int64Reader.readField(jsonParser, currentName, l);
                    } else if (currentName.equals("refresh_token")) {
                        str2 = StringReader.readField(jsonParser, currentName, str2);
                    } else if (currentName.equals("app_key")) {
                        str3 = StringReader.readField(jsonParser, currentName, str3);
                    } else if (currentName.equals("app_secret")) {
                        str4 = StringReader.readField(jsonParser, currentName, str4);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e2) {
                    throw e2.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str != null) {
                return new a(str, l, str2, str3, str4);
            }
            throw new JsonReadException("missing field \"access_token\"", expectObjectStart);
        }
    };
    public static final JsonWriter<a> e = new JsonWriter<a>() { // from class: com.dropbox.core.oauth.DbxCredential$3
        public final void write(a aVar, JsonGenerator jsonGenerator) throws IOException {
            String str;
            Long l;
            String str2;
            String str3;
            String str4;
            String str5;
            String str6;
            String str7;
            Long l2;
            jsonGenerator.writeStartObject();
            str = aVar.f17827a;
            jsonGenerator.writeStringField(AccessToken.ACCESS_TOKEN_KEY, str);
            l = aVar.f17828b;
            if (l != null) {
                l2 = aVar.f17828b;
                jsonGenerator.writeNumberField("expires_at", l2.longValue());
            }
            str2 = aVar.f17829c;
            if (str2 != null) {
                str7 = aVar.f17829c;
                jsonGenerator.writeStringField("refresh_token", str7);
            }
            str3 = aVar.f;
            if (str3 != null) {
                str6 = aVar.f;
                jsonGenerator.writeStringField("app_key", str6);
            }
            str4 = aVar.g;
            if (str4 != null) {
                str5 = aVar.g;
                jsonGenerator.writeStringField("app_secret", str5);
            }
            jsonGenerator.writeEndObject();
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public String f17827a;

    /* renamed from: b  reason: collision with root package name */
    public Long f17828b;

    /* renamed from: c  reason: collision with root package name */
    public final String f17829c;
    private final String f;
    private final String g;

    public a(String str) {
        this(str, null, null, null, null);
    }

    public a(String str, Long l, String str2, String str3) {
        this(str, l, str2, str3, null);
    }

    public a(String str, Long l, String str2, String str3, String str4) {
        if (str == null) {
            throw new IllegalArgumentException("Missing access token.");
        } else if (str2 != null && str3 == null) {
            throw new IllegalArgumentException("Can't refresh without app Key.");
        } else if (str2 == null || l != null) {
            this.f17827a = str;
            this.f17828b = l;
            this.f17829c = str2;
            this.f = str3;
            this.g = str4;
        } else {
            throw new IllegalArgumentException("Missing expireAt.");
        }
    }

    public final c a(h hVar, e eVar) throws DbxException {
        if (this.f17829c == null) {
            throw new DbxOAuthException(null, new b("invalid_request", "Cannot refresh becasue there is no refresh token"));
        } else if (this.f != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("grant_type", "refresh_token");
            hashMap.put("refresh_token", this.f17829c);
            hashMap.put("locale", hVar.f17764b);
            ArrayList arrayList = new ArrayList();
            String str = this.g;
            if (str == null) {
                hashMap.put("client_id", this.f);
            } else {
                i.a(arrayList, this.f, str);
            }
            c cVar = (c) i.a(hVar, "OfficialDropboxJavaSDKv2", eVar.f17753b, "oauth2/token", i.a(hashMap), arrayList, new i.b<c>() { // from class: com.dropbox.core.oauth.a.1
                @Override // com.dropbox.core.i.b
                public final /* synthetic */ c a(a.b bVar) throws DbxException {
                    if (bVar.f17782a == 200) {
                        return (c) i.a(c.f17835d, bVar);
                    }
                    throw new DbxOAuthException(i.c(bVar), (b) i.a(b.f17832d, bVar));
                }
            });
            synchronized (this) {
                this.f17827a = cVar.f17836a;
                this.f17828b = Long.valueOf(cVar.f17838c + (cVar.f17837b * 1000));
            }
            return cVar;
        } else {
            throw new IllegalStateException("DbxCredential's constructor should always guarantee appKey is not null if refreshToken is not null.");
        }
    }

    public final String toString() {
        return e.writeToString(this);
    }
}
