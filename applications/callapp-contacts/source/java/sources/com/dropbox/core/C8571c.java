package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.C8638f;
import com.facebook.AccessToken;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.IOException;
/* renamed from: com.dropbox.core.c */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/c.class */
public final class C8571c {

    /* renamed from: j */
    public static final JsonReader<C8571c> f30512j = new JsonReader<C8571c>() { // from class: com.dropbox.core.DbxAuthFinish$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final C8571c read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            String str2 = null;
            Long l = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            String str8 = null;
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
                    } else if (currentName.equals("refresh_token")) {
                        str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
                    } else if (currentName.equals("uid")) {
                        str4 = JsonReader.StringReader.readField(jsonParser, currentName, str4);
                    } else if (currentName.equals("account_id")) {
                        str6 = JsonReader.StringReader.readField(jsonParser, currentName, str6);
                    } else if (currentName.equals("team_id")) {
                        str5 = JsonReader.StringReader.readField(jsonParser, currentName, str5);
                    } else if (currentName.equals(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY)) {
                        str7 = JsonReader.StringReader.readField(jsonParser, currentName, str7);
                    } else if (currentName.equals("scope")) {
                        str8 = JsonReader.StringReader.readField(jsonParser, currentName, str8);
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
                if (str4 == null) {
                    throw new JsonReadException("missing field \"uid\"", expectObjectStart);
                }
                if (str6 == null && str5 == null) {
                    throw new JsonReadException("missing field \"account_id\" and missing field \"team_id\"", expectObjectStart);
                }
                if (str3 != null && l == null) {
                    throw new JsonReadException("missing field \"expires_in\"", expectObjectStart);
                }
                return new C8571c(str2, l, str3, str4, str5, str6, str7, str8);
            }
            throw new JsonReadException("missing field \"token_type\"", expectObjectStart);
        }
    };

    /* renamed from: k */
    public static final JsonReader<String> f30513k = new JsonReader<String>() { // from class: com.dropbox.core.DbxAuthFinish$2
        @Override // com.dropbox.core.json.JsonReader
        public final String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                if (!text.equals("Bearer") && !text.equals(OAuth2Token.TOKEN_TYPE_BEARER)) {
                    throw new JsonReadException("expecting \"Bearer\": got " + C8638f.m25215b(text), jsonParser.getTokenLocation());
                }
                jsonParser.nextToken();
                return text;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    };

    /* renamed from: l */
    public static final JsonReader<String> f30514l = new JsonReader<String>() { // from class: com.dropbox.core.DbxAuthFinish$3
        @Override // com.dropbox.core.json.JsonReader
        public final String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                String m25326b = C8570b.m25326b(text);
                if (m25326b != null) {
                    throw new JsonReadException(m25326b, jsonParser.getTokenLocation());
                }
                jsonParser.nextToken();
                return text;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    };

    /* renamed from: a */
    public final String f30515a;

    /* renamed from: b */
    public final Long f30516b;

    /* renamed from: c */
    public final String f30517c;

    /* renamed from: d */
    public final String f30518d;

    /* renamed from: e */
    final String f30519e;

    /* renamed from: f */
    final String f30520f;

    /* renamed from: g */
    final String f30521g;

    /* renamed from: h */
    public long f30522h;

    /* renamed from: i */
    public final String f30523i;

    public C8571c(String str, Long l, String str2, String str3, String str4, String str5, String str6) {
        this(str, l, str2, str3, str4, str5, str6, null);
    }

    public C8571c(String str, Long l, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f30515a = str;
        this.f30516b = l;
        this.f30517c = str2;
        this.f30518d = str3;
        this.f30519e = str5;
        this.f30520f = str4;
        this.f30521g = str6;
        this.f30522h = System.currentTimeMillis();
        this.f30523i = str7;
    }

    @Deprecated
    public C8571c(String str, String str2, String str3, String str4, String str5) {
        this(str, null, null, str2, str4, str3, str5);
    }
}
