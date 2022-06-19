package com.dropbox.core.p265v2.clouddocs;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.clouddocs.C8718h;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.clouddocs.f */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/f.class */
public final class C8713f {

    /* renamed from: a */
    protected final C8718h f30835a;

    /* renamed from: com.dropbox.core.v2.clouddocs.f$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/clouddocs/f$a.class */
    static final class C8714a extends AbstractC8558e<C8713f> {

        /* renamed from: a */
        public static final C8714a f30836a = new C8714a();

        C8714a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8713f deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            C8718h c8718h = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("locking_error_tag".equals(currentName)) {
                    c8718h = (C8718h) C8548d.m25354a(C8718h.C8720a.f30844a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            C8713f c8713f = new C8713f(c8718h);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f30836a.serialize((C8714a) c8713f, true);
            C8546b.m25355a(c8713f);
            return c8713f;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8713f c8713f, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8713f c8713f2 = c8713f;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (c8713f2.f30835a != null) {
                jsonGenerator.writeFieldName("locking_error_tag");
                C8548d.m25354a(C8718h.C8720a.f30844a).serialize((AbstractC8547c) c8713f2.f30835a, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8713f() {
        this(null);
    }

    public C8713f(C8718h c8718h) {
        this.f30835a = c8718h;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8718h c8718h = this.f30835a;
        C8718h c8718h2 = ((C8713f) obj).f30835a;
        if (c8718h == c8718h2) {
            return true;
        }
        return c8718h != null && c8718h.equals(c8718h2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30835a});
    }

    public final String toString() {
        return C8714a.f30836a.serialize((C8714a) this, false);
    }
}
