package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/v.class */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18716a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18717b;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/v$a.class */
    static final class a extends e<v> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18718a = new a();

        a() {
        }

        public static v a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    if ("message".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("upsell_url".equals(currentName)) {
                        str3 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (str2 != null) {
                    v vVar = new v(str2, str3);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18718a.serialize((a) vVar, true);
                    b.a(vVar);
                    return vVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"message\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        public static void a(v vVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("message");
            d.h.f17717a.serialize((d.h) vVar.f18716a, jsonGenerator);
            if (vVar.f18717b != null) {
                jsonGenerator.writeFieldName("upsell_url");
                d.a(d.h.f17717a).serialize((c) vVar.f18717b, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ v deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(v vVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            a(vVar, jsonGenerator, z);
        }
    }

    public v(String str) {
        this(str, null);
    }

    public v(String str, String str2) {
        if (str != null) {
            this.f18716a = str;
            this.f18717b = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'message' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        v vVar = (v) obj;
        String str = this.f18716a;
        String str2 = vVar.f18716a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f18717b;
        String str4 = vVar.f18717b;
        if (str3 != str4) {
            return str3 != null && str3.equals(str4);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18716a, this.f18717b});
    }

    public final String toString() {
        return a.f18718a.serialize((a) this, false);
    }
}
