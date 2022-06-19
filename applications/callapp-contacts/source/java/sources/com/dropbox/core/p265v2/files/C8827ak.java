package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.files.C8834an;
import com.dropbox.core.p265v2.files.C8905bj;
import com.dropbox.core.p265v2.files.C8933i;
import com.dropbox.core.p265v2.files.C8980z;
import com.dropbox.core.util.C8636d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
/* renamed from: com.dropbox.core.v2.files.ak */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ak.class */
public class C8827ak {

    /* renamed from: a */
    protected final C8933i f31062a;

    /* renamed from: b */
    protected final C8980z f31063b;

    /* renamed from: c */
    protected final Date f31064c;

    /* renamed from: com.dropbox.core.v2.files.ak$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ak$a.class */
    public static final class C8828a extends AbstractC8558e<C8827ak> {

        /* renamed from: a */
        public static final C8828a f31065a = new C8828a();

        C8828a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static com.dropbox.core.p265v2.files.C8827ak m25062a(com.fasterxml.jackson.core.JsonParser r6, boolean r7) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 292
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.files.C8827ak.C8828a.m25062a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.ak");
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8827ak deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m25062a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8827ak c8827ak, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8827ak c8827ak2 = c8827ak;
            if (c8827ak2 instanceof C8834an) {
                C8834an.C8835a.f31073a.serialize((C8834an) c8827ak2, jsonGenerator, z);
            } else if (c8827ak2 instanceof C8905bj) {
                C8905bj.C8906a.f31218a.serialize((C8905bj) c8827ak2, jsonGenerator, z);
            } else {
                if (!z) {
                    jsonGenerator.writeStartObject();
                }
                if (c8827ak2.f31062a != null) {
                    jsonGenerator.writeFieldName("dimensions");
                    C8548d.m25353a((AbstractC8558e) C8933i.C8934a.f31259a).serialize((AbstractC8558e) c8827ak2.f31062a, jsonGenerator);
                }
                if (c8827ak2.f31063b != null) {
                    jsonGenerator.writeFieldName("location");
                    C8548d.m25353a((AbstractC8558e) C8980z.C8981a.f31342a).serialize((AbstractC8558e) c8827ak2.f31063b, jsonGenerator);
                }
                if (c8827ak2.f31064c != null) {
                    jsonGenerator.writeFieldName("time_taken");
                    C8548d.m25354a(C8548d.C8550b.f30453a).serialize((AbstractC8547c) c8827ak2.f31064c, jsonGenerator);
                }
                if (z) {
                    return;
                }
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8827ak() {
        this(null, null, null);
    }

    public C8827ak(C8933i c8933i, C8980z c8980z, Date date) {
        this.f31062a = c8933i;
        this.f31063b = c8980z;
        this.f31064c = C8636d.m25221a(date);
    }

    /* renamed from: a */
    public String mo24985a() {
        return C8828a.f31065a.serialize((C8828a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8827ak c8827ak = (C8827ak) obj;
        C8933i c8933i = this.f31062a;
        C8933i c8933i2 = c8827ak.f31062a;
        if (c8933i != c8933i2 && (c8933i == null || !c8933i.equals(c8933i2))) {
            return false;
        }
        C8980z c8980z = this.f31063b;
        C8980z c8980z2 = c8827ak.f31063b;
        if (c8980z != c8980z2 && (c8980z == null || !c8980z.equals(c8980z2))) {
            return false;
        }
        Date date = this.f31064c;
        Date date2 = c8827ak.f31064c;
        if (date == date2) {
            return true;
        }
        return date != null && date.equals(date2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31062a, this.f31063b, this.f31064c});
    }

    public String toString() {
        return C8828a.f31065a.serialize((C8828a) this, false);
    }
}
