package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.files.C8933i;
import com.dropbox.core.p265v2.files.C8980z;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Date;
/* renamed from: com.dropbox.core.v2.files.an */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/an.class */
public final class C8834an extends C8827ak {

    /* renamed from: com.dropbox.core.v2.files.an$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/an$a.class */
    public static final class C8835a extends AbstractC8558e<C8834an> {

        /* renamed from: a */
        public static final C8835a f31073a = new C8835a();

        C8835a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("photo".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.p265v2.files.C8834an m25057a(com.fasterxml.jackson.core.JsonParser r6, boolean r7) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 222
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.files.C8834an.C8835a.m25057a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.an");
        }

        /* renamed from: a */
        public final void serialize(C8834an c8834an, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("photo", jsonGenerator);
            if (c8834an.f31062a != null) {
                jsonGenerator.writeFieldName("dimensions");
                C8548d.m25353a((AbstractC8558e) C8933i.C8934a.f31259a).serialize((AbstractC8558e) c8834an.f31062a, jsonGenerator);
            }
            if (c8834an.f31063b != null) {
                jsonGenerator.writeFieldName("location");
                C8548d.m25353a((AbstractC8558e) C8980z.C8981a.f31342a).serialize((AbstractC8558e) c8834an.f31063b, jsonGenerator);
            }
            if (c8834an.f31064c != null) {
                jsonGenerator.writeFieldName("time_taken");
                C8548d.m25354a(C8548d.C8550b.f30453a).serialize((AbstractC8547c) c8834an.f31064c, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8834an deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m25057a(jsonParser, z);
        }
    }

    public C8834an() {
        this(null, null, null);
    }

    public C8834an(C8933i c8933i, C8980z c8980z, Date date) {
        super(c8933i, c8980z, date);
    }

    @Override // com.dropbox.core.p265v2.files.C8827ak
    /* renamed from: a */
    public final String mo24985a() {
        return C8835a.f31073a.serialize((C8835a) this, true);
    }

    @Override // com.dropbox.core.p265v2.files.C8827ak
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8834an c8834an = (C8834an) obj;
        if (this.f31062a != c8834an.f31062a && (this.f31062a == null || !this.f31062a.equals(c8834an.f31062a))) {
            return false;
        }
        if (this.f31063b != c8834an.f31063b && (this.f31063b == null || !this.f31063b.equals(c8834an.f31063b))) {
            return false;
        }
        if (this.f31064c == c8834an.f31064c) {
            return true;
        }
        return this.f31064c != null && this.f31064c.equals(c8834an.f31064c);
    }

    @Override // com.dropbox.core.p265v2.files.C8827ak
    public final int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p265v2.files.C8827ak
    public final String toString() {
        return C8835a.f31073a.serialize((C8835a) this, false);
    }
}
