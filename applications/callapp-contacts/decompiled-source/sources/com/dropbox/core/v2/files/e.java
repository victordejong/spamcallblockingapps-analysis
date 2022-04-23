package com.dropbox.core.v2.files;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18302a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18303b;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/e$a.class */
    static final class a extends com.dropbox.core.a.e<e> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18304a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ e deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                String str3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("path".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("parent_rev".equals(currentName)) {
                        str3 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (str2 != null) {
                    e eVar = new e(str2, str3);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18304a.serialize((a) eVar, true);
                    b.a(eVar);
                    return eVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(e eVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            e eVar2 = eVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            d.h.f17717a.serialize((d.h) eVar2.f18302a, jsonGenerator);
            if (eVar2.f18303b != null) {
                jsonGenerator.writeFieldName("parent_rev");
                d.a(d.h.f17717a).serialize((c) eVar2.f18303b, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public e(String str) {
        this(str, null);
    }

    public e(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        } else if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
            this.f18302a = str;
            if (str2 != null) {
                if (str2.length() < 9) {
                    throw new IllegalArgumentException("String 'parentRev' is shorter than 9");
                } else if (!Pattern.matches("[0-9a-f]+", str2)) {
                    throw new IllegalArgumentException("String 'parentRev' does not match pattern");
                }
            }
            this.f18303b = str2;
        } else {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        e eVar = (e) obj;
        String str = this.f18302a;
        String str2 = eVar.f18302a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f18303b;
        String str4 = eVar.f18303b;
        if (str3 != str4) {
            return str3 != null && str3.equals(str4);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18302a, this.f18303b});
    }

    public final String toString() {
        return a.f18304a.serialize((a) this, false);
    }
}
