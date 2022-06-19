package com.dropbox.core.oauth;

import com.dropbox.core.C8573e;
import com.dropbox.core.C8577h;
import com.dropbox.core.C8600i;
import com.dropbox.core.DbxException;
import com.dropbox.core.http.AbstractC8582a;
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
/* renamed from: com.dropbox.core.oauth.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/oauth/a.class */
public final class C8624a {

    /* renamed from: d */
    public static final JsonReader<C8624a> f30622d = new JsonReader<C8624a>() { // from class: com.dropbox.core.oauth.DbxCredential$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final C8624a read(JsonParser jsonParser) throws IOException, JsonReadException {
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
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str != null) {
                return new C8624a(str, l, str2, str3, str4);
            }
            throw new JsonReadException("missing field \"access_token\"", expectObjectStart);
        }
    };

    /* renamed from: e */
    public static final JsonWriter<C8624a> f30623e = new JsonWriter<C8624a>() { // from class: com.dropbox.core.oauth.DbxCredential$3
        public final void write(C8624a c8624a, JsonGenerator jsonGenerator) throws IOException {
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
            str = c8624a.f30624a;
            jsonGenerator.writeStringField(AccessToken.ACCESS_TOKEN_KEY, str);
            l = c8624a.f30625b;
            if (l != null) {
                l2 = c8624a.f30625b;
                jsonGenerator.writeNumberField("expires_at", l2.longValue());
            }
            str2 = c8624a.f30626c;
            if (str2 != null) {
                str7 = c8624a.f30626c;
                jsonGenerator.writeStringField("refresh_token", str7);
            }
            str3 = c8624a.f30627f;
            if (str3 != null) {
                str6 = c8624a.f30627f;
                jsonGenerator.writeStringField("app_key", str6);
            }
            str4 = c8624a.f30628g;
            if (str4 != null) {
                str5 = c8624a.f30628g;
                jsonGenerator.writeStringField("app_secret", str5);
            }
            jsonGenerator.writeEndObject();
        }
    };

    /* renamed from: a */
    public String f30624a;

    /* renamed from: b */
    public Long f30625b;

    /* renamed from: c */
    public final String f30626c;

    /* renamed from: f */
    private final String f30627f;

    /* renamed from: g */
    private final String f30628g;

    public C8624a(String str) {
        this(str, null, null, null, null);
    }

    public C8624a(String str, Long l, String str2, String str3) {
        this(str, l, str2, str3, null);
    }

    public C8624a(String str, Long l, String str2, String str3, String str4) {
        if (str != null) {
            if (str2 != null && str3 == null) {
                throw new IllegalArgumentException("Can't refresh without app Key.");
            }
            if (str2 != null && l == null) {
                throw new IllegalArgumentException("Missing expireAt.");
            }
            this.f30624a = str;
            this.f30625b = l;
            this.f30626c = str2;
            this.f30627f = str3;
            this.f30628g = str4;
            return;
        }
        throw new IllegalArgumentException("Missing access token.");
    }

    /* renamed from: a */
    public final C8627c m25253a(C8577h c8577h, C8573e c8573e) throws DbxException {
        if (this.f30626c != null) {
            if (this.f30627f == null) {
                throw new IllegalStateException("DbxCredential's constructor should always guarantee appKey is not null if refreshToken is not null.");
            }
            HashMap hashMap = new HashMap();
            hashMap.put("grant_type", "refresh_token");
            hashMap.put("refresh_token", this.f30626c);
            hashMap.put("locale", c8577h.f30545b);
            ArrayList arrayList = new ArrayList();
            String str = this.f30628g;
            if (str == null) {
                hashMap.put("client_id", this.f30627f);
            } else {
                C8600i.m25265a(arrayList, this.f30627f, str);
            }
            C8627c c8627c = (C8627c) C8600i.m25280a(c8577h, "OfficialDropboxJavaSDKv2", c8573e.f30533b, "oauth2/token", C8600i.m25264a(hashMap), arrayList, new C8600i.AbstractC8603b<C8627c>() { // from class: com.dropbox.core.oauth.a.1
                @Override // com.dropbox.core.C8600i.AbstractC8603b
                /* renamed from: a */
                public final /* synthetic */ C8627c mo25211a(AbstractC8582a.C8584b c8584b) throws DbxException {
                    if (c8584b.f30566a == 200) {
                        return (C8627c) C8600i.m25276a(C8627c.f30634d, c8584b);
                    }
                    throw new DbxOAuthException(C8600i.m25260c(c8584b), (C8626b) C8600i.m25276a(C8626b.f30631d, c8584b));
                }
            });
            synchronized (this) {
                this.f30624a = c8627c.f30635a;
                this.f30625b = Long.valueOf(c8627c.f30637c + (c8627c.f30636b * 1000));
            }
            return c8627c;
        }
        throw new DbxOAuthException(null, new C8626b("invalid_request", "Cannot refresh becasue there is no refresh token"));
    }

    public final String toString() {
        return f30623e.writeToString(this);
    }
}
