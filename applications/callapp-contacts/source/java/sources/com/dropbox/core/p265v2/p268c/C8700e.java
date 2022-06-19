package com.dropbox.core.p265v2.p268c;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.c.e */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/e.class */
public final class C8700e extends C8696c {

    /* renamed from: com.dropbox.core.v2.c.e$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/e$a.class */
    public static final class C8701a extends AbstractC8558e<C8700e> {

        /* renamed from: a */
        public static final C8701a f30819a = new C8701a();

        C8701a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("user".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.p265v2.p268c.C8700e m25153a(com.fasterxml.jackson.core.JsonParser r5, boolean r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 214
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.p268c.C8700e.C8701a.m25153a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.c.e");
        }

        /* renamed from: a */
        public final void serialize(C8700e c8700e, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("user", jsonGenerator);
            jsonGenerator.writeFieldName("root_namespace_id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8700e.f30814a, jsonGenerator);
            jsonGenerator.writeFieldName("home_namespace_id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8700e.f30815b, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8700e deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m25153a(jsonParser, z);
        }
    }

    public C8700e(String str, String str2) {
        super(str, str2);
    }

    @Override // com.dropbox.core.p265v2.p268c.C8696c
    /* renamed from: a */
    public final String mo25155a() {
        return C8701a.f30819a.serialize((C8701a) this, true);
    }

    @Override // com.dropbox.core.p265v2.p268c.C8696c
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8700e c8700e = (C8700e) obj;
        if (this.f30814a != c8700e.f30814a && !this.f30814a.equals(c8700e.f30814a)) {
            return false;
        }
        return this.f30815b == c8700e.f30815b || this.f30815b.equals(c8700e.f30815b);
    }

    @Override // com.dropbox.core.p265v2.p268c.C8696c
    public final int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p265v2.p268c.C8696c
    public final String toString() {
        return C8701a.f30819a.serialize((C8701a) this, false);
    }
}
