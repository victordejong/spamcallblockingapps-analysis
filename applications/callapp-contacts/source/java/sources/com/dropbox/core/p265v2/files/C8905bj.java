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
import com.mopub.mobileads.VastIconXmlManager;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
/* renamed from: com.dropbox.core.v2.files.bj */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bj.class */
public final class C8905bj extends C8827ak {

    /* renamed from: d */
    protected final Long f31217d;

    /* renamed from: com.dropbox.core.v2.files.bj$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bj$a.class */
    public static final class C8906a extends AbstractC8558e<C8905bj> {

        /* renamed from: a */
        public static final C8906a f31218a = new C8906a();

        C8906a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("video".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.p265v2.files.C8905bj m24983a(com.fasterxml.jackson.core.JsonParser r7, boolean r8) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 257
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.files.C8905bj.C8906a.m24983a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.bj");
        }

        /* renamed from: a */
        public final void serialize(C8905bj c8905bj, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("video", jsonGenerator);
            if (c8905bj.f31062a != null) {
                jsonGenerator.writeFieldName("dimensions");
                C8548d.m25353a((AbstractC8558e) C8933i.C8934a.f31259a).serialize((AbstractC8558e) c8905bj.f31062a, jsonGenerator);
            }
            if (c8905bj.f31063b != null) {
                jsonGenerator.writeFieldName("location");
                C8548d.m25353a((AbstractC8558e) C8980z.C8981a.f31342a).serialize((AbstractC8558e) c8905bj.f31063b, jsonGenerator);
            }
            if (c8905bj.f31064c != null) {
                jsonGenerator.writeFieldName("time_taken");
                C8548d.m25354a(C8548d.C8550b.f30453a).serialize((AbstractC8547c) c8905bj.f31064c, jsonGenerator);
            }
            if (c8905bj.f31217d != null) {
                jsonGenerator.writeFieldName(VastIconXmlManager.DURATION);
                C8548d.m25354a(C8548d.C8553e.f30456a).serialize((AbstractC8547c) c8905bj.f31217d, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8905bj deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24983a(jsonParser, z);
        }
    }

    public C8905bj() {
        this(null, null, null, null);
    }

    public C8905bj(C8933i c8933i, C8980z c8980z, Date date, Long l) {
        super(c8933i, c8980z, date);
        this.f31217d = l;
    }

    @Override // com.dropbox.core.p265v2.files.C8827ak
    /* renamed from: a */
    public final String mo24985a() {
        return C8906a.f31218a.serialize((C8906a) this, true);
    }

    @Override // com.dropbox.core.p265v2.files.C8827ak
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8905bj c8905bj = (C8905bj) obj;
        if (this.f31062a != c8905bj.f31062a && (this.f31062a == null || !this.f31062a.equals(c8905bj.f31062a))) {
            return false;
        }
        if (this.f31063b != c8905bj.f31063b && (this.f31063b == null || !this.f31063b.equals(c8905bj.f31063b))) {
            return false;
        }
        if (this.f31064c != c8905bj.f31064c && (this.f31064c == null || !this.f31064c.equals(c8905bj.f31064c))) {
            return false;
        }
        Long l = this.f31217d;
        Long l2 = c8905bj.f31217d;
        if (l == l2) {
            return true;
        }
        return l != null && l.equals(l2);
    }

    @Override // com.dropbox.core.p265v2.files.C8827ak
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31217d});
    }

    @Override // com.dropbox.core.p265v2.files.C8827ak
    public final String toString() {
        return C8906a.f31218a.serialize((C8906a) this, false);
    }
}
