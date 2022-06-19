package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonWriter;
import com.facebook.AccessToken;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.d */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/d.class */
public final class C8572d {

    /* renamed from: a */
    public static final JsonReader<C8572d> f30524a = new JsonReader<C8572d>() { // from class: com.dropbox.core.DbxAuthInfo$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final C8572d read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            Long l = null;
            C8573e c8573e = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("host")) {
                        c8573e = C8573e.f30531f.readField(jsonParser, currentName, c8573e);
                    } else if (currentName.equals("expires_at")) {
                        l = Int64Reader.readField(jsonParser, currentName, l);
                    } else if (currentName.equals("refresh_token")) {
                        str = StringReader.readField(jsonParser, currentName, str);
                    } else if (currentName.equals(AccessToken.ACCESS_TOKEN_KEY)) {
                        str2 = StringReader.readField(jsonParser, currentName, str2);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str2 != null) {
                C8573e c8573e2 = c8573e;
                if (c8573e == null) {
                    c8573e2 = C8573e.f30530a;
                }
                return new C8572d(str2, l, str, c8573e2);
            }
            throw new JsonReadException("missing field \"access_token\"", expectObjectStart);
        }
    };

    /* renamed from: b */
    public static final JsonWriter<C8572d> f30525b = new JsonWriter<C8572d>() { // from class: com.dropbox.core.DbxAuthInfo$2
        public final void write(C8572d c8572d, JsonGenerator jsonGenerator) throws IOException {
            String str;
            Long l;
            String str2;
            C8573e c8573e;
            C8573e c8573e2;
            String str3;
            Long l2;
            jsonGenerator.writeStartObject();
            str = c8572d.f30526c;
            jsonGenerator.writeStringField(AccessToken.ACCESS_TOKEN_KEY, str);
            l = c8572d.f30527d;
            if (l != null) {
                l2 = c8572d.f30527d;
                jsonGenerator.writeNumberField("expires_at", l2.longValue());
            }
            str2 = c8572d.f30528e;
            if (str2 != null) {
                str3 = c8572d.f30528e;
                jsonGenerator.writeStringField("refresh_token", str3);
            }
            c8573e = c8572d.f30529f;
            if (!c8573e.equals(C8573e.f30530a)) {
                jsonGenerator.writeFieldName("host");
                JsonWriter<C8573e> jsonWriter = C8573e.f30532g;
                c8573e2 = c8572d.f30529f;
                jsonWriter.write(c8573e2, jsonGenerator);
            }
            jsonGenerator.writeEndObject();
        }
    };

    /* renamed from: c */
    private final String f30526c;

    /* renamed from: d */
    private final Long f30527d;

    /* renamed from: e */
    private final String f30528e;

    /* renamed from: f */
    private final C8573e f30529f;

    public C8572d(String str, C8573e c8573e) {
        this(str, null, null, c8573e);
    }

    public C8572d(String str, Long l, String str2, C8573e c8573e) {
        if (str != null) {
            if (c8573e == null) {
                throw new IllegalArgumentException("'host' can't be null");
            }
            this.f30526c = str;
            this.f30527d = l;
            this.f30528e = str2;
            this.f30529f = c8573e;
            return;
        }
        throw new IllegalArgumentException("'accessToken' can't be null");
    }
}
