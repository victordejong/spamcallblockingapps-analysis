package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonWriter;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.mopub.common.Constants;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.e */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/e.class */
public final class C8573e {

    /* renamed from: a */
    public static final C8573e f30530a = new C8573e("api.dropboxapi.com", "content.dropboxapi.com", "www.dropbox.com", "notify.dropboxapi.com");

    /* renamed from: f */
    public static final JsonReader<C8573e> f30531f = new JsonReader<C8573e>() { // from class: com.dropbox.core.DbxHost$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final C8573e read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_STRING) {
                String text = jsonParser.getText();
                JsonReader.nextToken(jsonParser);
                return C8573e.m25318a(text);
            } else if (currentToken != JsonToken.START_OBJECT) {
                throw new JsonReadException("expecting a string or an object", jsonParser.getTokenLocation());
            } else {
                JsonLocation tokenLocation = jsonParser.getTokenLocation();
                nextToken(jsonParser);
                String str = null;
                String str2 = null;
                String str3 = null;
                String str4 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    try {
                        if (currentName.equals("api")) {
                            str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                        } else if (currentName.equals(Constants.VAST_TRACKER_CONTENT)) {
                            str2 = JsonReader.StringReader.readField(jsonParser, currentName, str2);
                        } else if (currentName.equals("web")) {
                            str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
                        } else if (!currentName.equals("notify")) {
                            throw new JsonReadException("unknown field", jsonParser.getCurrentLocation());
                        } else {
                            str4 = JsonReader.StringReader.readField(jsonParser, currentName, str4);
                        }
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                }
                JsonReader.expectObjectEnd(jsonParser);
                if (str == null) {
                    throw new JsonReadException("missing field \"api\"", tokenLocation);
                }
                if (str2 == null) {
                    throw new JsonReadException("missing field \"content\"", tokenLocation);
                }
                if (str3 == null) {
                    throw new JsonReadException("missing field \"web\"", tokenLocation);
                }
                if (str4 == null) {
                    throw new JsonReadException("missing field \"notify\"", tokenLocation);
                }
                return new C8573e(str, str2, str3, str4);
            }
        }
    };

    /* renamed from: g */
    public static final JsonWriter<C8573e> f30532g = new JsonWriter<C8573e>() { // from class: com.dropbox.core.DbxHost$2
        public final void write(C8573e c8573e, JsonGenerator jsonGenerator) throws IOException {
            String str;
            String str2;
            String str3;
            String str4;
            String m25319a = C8573e.m25319a(c8573e);
            if (m25319a != null) {
                jsonGenerator.writeString(m25319a);
                return;
            }
            jsonGenerator.writeStartObject();
            str = c8573e.f30533b;
            jsonGenerator.writeStringField("api", str);
            str2 = c8573e.f30534c;
            jsonGenerator.writeStringField(Constants.VAST_TRACKER_CONTENT, str2);
            str3 = c8573e.f30535d;
            jsonGenerator.writeStringField("web", str3);
            str4 = c8573e.f30536e;
            jsonGenerator.writeStringField("notify", str4);
            jsonGenerator.writeEndObject();
        }
    };

    /* renamed from: b */
    public final String f30533b;

    /* renamed from: c */
    public final String f30534c;

    /* renamed from: d */
    public final String f30535d;

    /* renamed from: e */
    public final String f30536e;

    public C8573e(String str, String str2, String str3, String str4) {
        this.f30533b = str;
        this.f30534c = str2;
        this.f30535d = str3;
        this.f30536e = str4;
    }

    /* renamed from: a */
    public static /* synthetic */ C8573e m25318a(String str) {
        return new C8573e("api-".concat(String.valueOf(str)), "api-content-".concat(String.valueOf(str)), "meta-".concat(String.valueOf(str)), "api-notify-".concat(String.valueOf(str)));
    }

    /* renamed from: a */
    public static /* synthetic */ String m25319a(C8573e c8573e) {
        if (!c8573e.f30535d.startsWith("meta-") || !c8573e.f30533b.startsWith("api-") || !c8573e.f30534c.startsWith("api-content-") || !c8573e.f30536e.startsWith("api-notify-")) {
            return null;
        }
        String substring = c8573e.f30535d.substring(5);
        String substring2 = c8573e.f30533b.substring(4);
        String substring3 = c8573e.f30534c.substring(12);
        String substring4 = c8573e.f30536e.substring(11);
        if (substring.equals(substring2) && substring.equals(substring3) && substring.equals(substring4)) {
            return substring;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8573e)) {
            return false;
        }
        C8573e c8573e = (C8573e) obj;
        return c8573e.f30533b.equals(this.f30533b) && c8573e.f30534c.equals(this.f30534c) && c8573e.f30535d.equals(this.f30535d) && c8573e.f30536e.equals(this.f30536e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new String[]{this.f30533b, this.f30534c, this.f30535d, this.f30536e});
    }
}
