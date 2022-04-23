package com.dropbox.core.v2.files;

import com.dropbox.core.a.b;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bg.class */
public final class bg {

    /* renamed from: a  reason: collision with root package name */
    protected final long f18276a;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bg$a.class */
    static final class a extends e<bg> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18277a = new a();

        a() {
        }

        public static bg a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("correct_offset".equals(currentName)) {
                        l = d.e.f17714a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (l != null) {
                    bg bgVar = new bg(l.longValue());
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18277a.serialize((a) bgVar, true);
                    b.a(bgVar);
                    return bgVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"correct_offset\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        public static void a(bg bgVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("correct_offset");
            d.e.f17714a.serialize((d.e) Long.valueOf(bgVar.f18276a), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ bg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(bg bgVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            a(bgVar, jsonGenerator, z);
        }
    }

    public bg(long j) {
        this.f18276a = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.f18276a == ((bg) obj).f18276a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f18276a)});
    }

    public final String toString() {
        return a.f18277a.serialize((a) this, false);
    }
}
