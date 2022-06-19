package com.dropbox.core.p265v2.sharing;

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
/* renamed from: com.dropbox.core.v2.sharing.w */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/w.class */
public final class C9210w {

    /* renamed from: a */
    protected final long f31789a;

    /* renamed from: b */
    protected final long f31790b;

    /* renamed from: c */
    protected final long f31791c;

    /* renamed from: com.dropbox.core.v2.sharing.w$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/w$a.class */
    static final class C9211a extends AbstractC8558e<C9210w> {

        /* renamed from: a */
        public static final C9211a f31792a = new C9211a();

        C9211a() {
        }

        /* renamed from: a */
        public static C9210w m24754a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("space_needed".equals(currentName)) {
                    l = C8548d.C8553e.f30456a.deserialize(jsonParser);
                } else if ("space_shortage".equals(currentName)) {
                    l2 = C8548d.C8553e.f30456a.deserialize(jsonParser);
                } else if ("space_left".equals(currentName)) {
                    l3 = C8548d.C8553e.f30456a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"space_needed\" missing.");
            }
            if (l2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"space_shortage\" missing.");
            }
            if (l3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"space_left\" missing.");
            }
            C9210w c9210w = new C9210w(l.longValue(), l2.longValue(), l3.longValue());
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31792a.serialize((C9211a) c9210w, true);
            C8546b.m25355a(c9210w);
            return c9210w;
        }

        /* renamed from: a */
        public static void m24755a(C9210w c9210w, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("space_needed");
            C8548d.C8553e.f30456a.serialize((C8548d.C8553e) Long.valueOf(c9210w.f31789a), jsonGenerator);
            jsonGenerator.writeFieldName("space_shortage");
            C8548d.C8553e.f30456a.serialize((C8548d.C8553e) Long.valueOf(c9210w.f31790b), jsonGenerator);
            jsonGenerator.writeFieldName("space_left");
            C8548d.C8553e.f30456a.serialize((C8548d.C8553e) Long.valueOf(c9210w.f31791c), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9210w deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24754a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9210w c9210w, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            m24755a(c9210w, jsonGenerator, z);
        }
    }

    public C9210w(long j, long j2, long j3) {
        this.f31789a = j;
        this.f31790b = j2;
        this.f31791c = j3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9210w c9210w = (C9210w) obj;
        return this.f31789a == c9210w.f31789a && this.f31790b == c9210w.f31790b && this.f31791c == c9210w.f31791c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f31789a), Long.valueOf(this.f31790b), Long.valueOf(this.f31791c)});
    }

    public final String toString() {
        return C9211a.f31792a.serialize((C9211a) this, false);
    }
}
