package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.f;
import com.facebook.AccessToken;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/c.class */
public final class c {
    public static final JsonReader<c> j = new JsonReader<c>() { // from class: com.dropbox.core.DbxAuthFinish$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final c read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            String str2 = null;
            Long l2 = null;
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
                        str = c.k.readField(jsonParser, currentName, str);
                    } else if (currentName.equals(AccessToken.ACCESS_TOKEN_KEY)) {
                        str2 = c.l.readField(jsonParser, currentName, str2);
                    } else if (currentName.equals(AccessToken.EXPIRES_IN_KEY)) {
                        l2 = JsonReader.UInt64Reader.readField(jsonParser, currentName, l2);
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
            if (str == null) {
                throw new JsonReadException("missing field \"token_type\"", expectObjectStart);
            } else if (str2 == null) {
                throw new JsonReadException("missing field \"access_token\"", expectObjectStart);
            } else if (str4 == null) {
                throw new JsonReadException("missing field \"uid\"", expectObjectStart);
            } else if (str6 == null && str5 == null) {
                throw new JsonReadException("missing field \"account_id\" and missing field \"team_id\"", expectObjectStart);
            } else if (str3 == null || l2 != null) {
                return new c(str2, l2, str3, str4, str5, str6, str7, str8);
            } else {
                throw new JsonReadException("missing field \"expires_in\"", expectObjectStart);
            }
        }
    };
    public static final JsonReader<String> k = new JsonReader<String>() { // from class: com.dropbox.core.DbxAuthFinish$2
        @Override // com.dropbox.core.json.JsonReader
        public final String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                if (!text.equals("Bearer") && !text.equals(OAuth2Token.TOKEN_TYPE_BEARER)) {
                    throw new JsonReadException("expecting \"Bearer\": got " + f.b(text), jsonParser.getTokenLocation());
                }
                jsonParser.nextToken();
                return text;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    };
    public static final JsonReader<String> l = new JsonReader<String>() { // from class: com.dropbox.core.DbxAuthFinish$3
        @Override // com.dropbox.core.json.JsonReader
        public final String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                String b2 = b.b(text);
                if (b2 == null) {
                    jsonParser.nextToken();
                    return text;
                }
                throw new JsonReadException(b2, jsonParser.getTokenLocation());
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f17744a;

    /* renamed from: b  reason: collision with root package name */
    public final Long f17745b;

    /* renamed from: c  reason: collision with root package name */
    public final String f17746c;

    /* renamed from: d  reason: collision with root package name */
    public final String f17747d;
    final String e;
    final String f;
    final String g;
    public long h;
    public final String i;

    public c(String str, Long l2, String str2, String str3, String str4, String str5, String str6) {
        this(str, l2, str2, str3, str4, str5, str6, null);
    }

    public c(String str, Long l2, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f17744a = str;
        this.f17745b = l2;
        this.f17746c = str2;
        this.f17747d = str3;
        this.e = str5;
        this.f = str4;
        this.g = str6;
        this.h = System.currentTimeMillis();
        this.i = str7;
    }

    @Deprecated
    public c(String str, String str2, String str3, String str4, String str5) {
        this(str, null, null, str2, str4, str3, str5);
    }
}
