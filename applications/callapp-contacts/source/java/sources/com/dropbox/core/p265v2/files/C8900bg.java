package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.bg */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bg.class */
public final class C8900bg {

    /* renamed from: a */
    protected final long f31212a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.bg$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bg$a.class */
    public static final class C8901a extends AbstractC8558e<C8900bg> {

        /* renamed from: a */
        public static final C8901a f31213a = new C8901a();

        C8901a() {
        }

        /* renamed from: a */
        public static C8900bg m24989a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("correct_offset".equals(currentName)) {
                    l = C8548d.C8553e.f30456a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"correct_offset\" missing.");
            }
            C8900bg c8900bg = new C8900bg(l.longValue());
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31213a.serialize((C8901a) c8900bg, true);
            C8546b.m25355a(c8900bg);
            return c8900bg;
        }

        /* renamed from: a */
        public static void m24990a(C8900bg c8900bg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("correct_offset");
            C8548d.C8553e.f30456a.serialize((C8548d.C8553e) Long.valueOf(c8900bg.f31212a), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8900bg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24989a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8900bg c8900bg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            m24990a(c8900bg, jsonGenerator, z);
        }
    }

    public C8900bg(long j) {
        this.f31212a = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.f31212a == ((C8900bg) obj).f31212a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f31212a)});
    }

    public final String toString() {
        return C8901a.f31213a.serialize((C8901a) this, false);
    }
}
