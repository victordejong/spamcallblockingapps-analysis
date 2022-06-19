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
/* renamed from: com.dropbox.core.v2.files.i */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/i.class */
public final class C8933i {

    /* renamed from: a */
    protected final long f31257a;

    /* renamed from: b */
    protected final long f31258b;

    /* renamed from: com.dropbox.core.v2.files.i$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/i$a.class */
    static final class C8934a extends AbstractC8558e<C8933i> {

        /* renamed from: a */
        public static final C8934a f31259a = new C8934a();

        C8934a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8933i deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("height".equals(currentName)) {
                    l = C8548d.C8553e.f30456a.deserialize(jsonParser);
                } else if ("width".equals(currentName)) {
                    l2 = C8548d.C8553e.f30456a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"height\" missing.");
            }
            if (l2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"width\" missing.");
            }
            C8933i c8933i = new C8933i(l.longValue(), l2.longValue());
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31259a.serialize((C8934a) c8933i, true);
            C8546b.m25355a(c8933i);
            return c8933i;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8933i c8933i, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8933i c8933i2 = c8933i;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("height");
            C8548d.C8553e.f30456a.serialize((C8548d.C8553e) Long.valueOf(c8933i2.f31257a), jsonGenerator);
            jsonGenerator.writeFieldName("width");
            C8548d.C8553e.f30456a.serialize((C8548d.C8553e) Long.valueOf(c8933i2.f31258b), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8933i(long j, long j2) {
        this.f31257a = j;
        this.f31258b = j2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8933i c8933i = (C8933i) obj;
        return this.f31257a == c8933i.f31257a && this.f31258b == c8933i.f31258b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f31257a), Long.valueOf(this.f31258b)});
    }

    public final String toString() {
        return C8934a.f31259a.serialize((C8934a) this, false);
    }
}
