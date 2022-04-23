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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f17752a = new e("api.dropboxapi.com", "content.dropboxapi.com", "www.dropbox.com", "notify.dropboxapi.com");
    public static final JsonReader<e> f = new JsonReader<e>() { // from class: com.dropbox.core.DbxHost$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final e read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.VALUE_STRING) {
                String text = jsonParser.getText();
                JsonReader.nextToken(jsonParser);
                return e.a(text);
            } else if (currentToken == JsonToken.START_OBJECT) {
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
                        } else if (currentName.equals("notify")) {
                            str4 = JsonReader.StringReader.readField(jsonParser, currentName, str4);
                        } else {
                            throw new JsonReadException("unknown field", jsonParser.getCurrentLocation());
                        }
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                }
                JsonReader.expectObjectEnd(jsonParser);
                if (str == null) {
                    throw new JsonReadException("missing field \"api\"", tokenLocation);
                } else if (str2 == null) {
                    throw new JsonReadException("missing field \"content\"", tokenLocation);
                } else if (str3 == null) {
                    throw new JsonReadException("missing field \"web\"", tokenLocation);
                } else if (str4 != null) {
                    return new e(str, str2, str3, str4);
                } else {
                    throw new JsonReadException("missing field \"notify\"", tokenLocation);
                }
            } else {
                throw new JsonReadException("expecting a string or an object", jsonParser.getTokenLocation());
            }
        }
    };
    public static final JsonWriter<e> g = new JsonWriter<e>() { // from class: com.dropbox.core.DbxHost$2
        public final void write(e eVar, JsonGenerator jsonGenerator) throws IOException {
            String str;
            String str2;
            String str3;
            String str4;
            String a2 = e.a(eVar);
            if (a2 != null) {
                jsonGenerator.writeString(a2);
                return;
            }
            jsonGenerator.writeStartObject();
            str = eVar.f17753b;
            jsonGenerator.writeStringField("api", str);
            str2 = eVar.f17754c;
            jsonGenerator.writeStringField(Constants.VAST_TRACKER_CONTENT, str2);
            str3 = eVar.f17755d;
            jsonGenerator.writeStringField("web", str3);
            str4 = eVar.e;
            jsonGenerator.writeStringField("notify", str4);
            jsonGenerator.writeEndObject();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public final String f17753b;

    /* renamed from: c  reason: collision with root package name */
    public final String f17754c;

    /* renamed from: d  reason: collision with root package name */
    public final String f17755d;
    public final String e;

    public e(String str, String str2, String str3, String str4) {
        this.f17753b = str;
        this.f17754c = str2;
        this.f17755d = str3;
        this.e = str4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ e a(String str) {
        return new e("api-".concat(String.valueOf(str)), "api-content-".concat(String.valueOf(str)), "meta-".concat(String.valueOf(str)), "api-notify-".concat(String.valueOf(str)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String a(e eVar) {
        if (!eVar.f17755d.startsWith("meta-") || !eVar.f17753b.startsWith("api-") || !eVar.f17754c.startsWith("api-content-") || !eVar.e.startsWith("api-notify-")) {
            return null;
        }
        String substring = eVar.f17755d.substring(5);
        String substring2 = eVar.f17753b.substring(4);
        String substring3 = eVar.f17754c.substring(12);
        String substring4 = eVar.e.substring(11);
        if (!substring.equals(substring2) || !substring.equals(substring3) || !substring.equals(substring4)) {
            return null;
        }
        return substring;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return eVar.f17753b.equals(this.f17753b) && eVar.f17754c.equals(this.f17754c) && eVar.f17755d.equals(this.f17755d) && eVar.e.equals(this.e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new String[]{this.f17753b, this.f17754c, this.f17755d, this.e});
    }
}
