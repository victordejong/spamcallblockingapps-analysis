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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final JsonReader<d> f17748a = new JsonReader<d>() { // from class: com.dropbox.core.DbxAuthInfo$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final d read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            String str2 = null;
            Long l = null;
            e eVar = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("host")) {
                        eVar = e.f.readField(jsonParser, currentName, eVar);
                    } else if (currentName.equals("expires_at")) {
                        l = Int64Reader.readField(jsonParser, currentName, l);
                    } else if (currentName.equals("refresh_token")) {
                        str2 = StringReader.readField(jsonParser, currentName, str2);
                    } else if (currentName.equals(AccessToken.ACCESS_TOKEN_KEY)) {
                        str = StringReader.readField(jsonParser, currentName, str);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str != null) {
                e eVar2 = eVar;
                if (eVar == null) {
                    eVar2 = e.f17752a;
                }
                return new d(str, l, str2, eVar2);
            }
            throw new JsonReadException("missing field \"access_token\"", expectObjectStart);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public static final JsonWriter<d> f17749b = new JsonWriter<d>() { // from class: com.dropbox.core.DbxAuthInfo$2
        public final void write(d dVar, JsonGenerator jsonGenerator) throws IOException {
            String str;
            Long l;
            String str2;
            e eVar;
            e eVar2;
            String str3;
            Long l2;
            jsonGenerator.writeStartObject();
            str = dVar.f17750c;
            jsonGenerator.writeStringField(AccessToken.ACCESS_TOKEN_KEY, str);
            l = dVar.f17751d;
            if (l != null) {
                l2 = dVar.f17751d;
                jsonGenerator.writeNumberField("expires_at", l2.longValue());
            }
            str2 = dVar.e;
            if (str2 != null) {
                str3 = dVar.e;
                jsonGenerator.writeStringField("refresh_token", str3);
            }
            eVar = dVar.f;
            if (!eVar.equals(e.f17752a)) {
                jsonGenerator.writeFieldName("host");
                JsonWriter<e> jsonWriter = e.g;
                eVar2 = dVar.f;
                jsonWriter.write(eVar2, jsonGenerator);
            }
            jsonGenerator.writeEndObject();
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final String f17750c;

    /* renamed from: d  reason: collision with root package name */
    private final Long f17751d;
    private final String e;
    private final e f;

    public d(String str, e eVar) {
        this(str, null, null, eVar);
    }

    public d(String str, Long l, String str2, e eVar) {
        if (str == null) {
            throw new IllegalArgumentException("'accessToken' can't be null");
        } else if (eVar != null) {
            this.f17750c = str;
            this.f17751d = l;
            this.e = str2;
            this.f = eVar;
        } else {
            throw new IllegalArgumentException("'host' can't be null");
        }
    }
}
