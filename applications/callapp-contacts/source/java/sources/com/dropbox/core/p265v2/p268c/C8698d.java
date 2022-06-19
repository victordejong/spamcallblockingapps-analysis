package com.dropbox.core.p265v2.p268c;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.c.d */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/d.class */
public final class C8698d extends C8696c {

    /* renamed from: c */
    protected final String f30817c;

    /* renamed from: com.dropbox.core.v2.c.d$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/d$a.class */
    public static final class C8699a extends AbstractC8558e<C8698d> {

        /* renamed from: a */
        public static final C8699a f30818a = new C8699a();

        C8699a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("team".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.p265v2.p268c.C8698d m25156a(com.fasterxml.jackson.core.JsonParser r6, boolean r7) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 259
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.p268c.C8698d.C8699a.m25156a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.c.d");
        }

        /* renamed from: a */
        public final void serialize(C8698d c8698d, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("team", jsonGenerator);
            jsonGenerator.writeFieldName("root_namespace_id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8698d.f30814a, jsonGenerator);
            jsonGenerator.writeFieldName("home_namespace_id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8698d.f30815b, jsonGenerator);
            jsonGenerator.writeFieldName("home_path");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8698d.f30817c, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8698d deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m25156a(jsonParser, z);
        }
    }

    public C8698d(String str, String str2, String str3) {
        super(str, str2);
        if (str3 != null) {
            this.f30817c = str3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'homePath' is null");
    }

    @Override // com.dropbox.core.p265v2.p268c.C8696c
    /* renamed from: a */
    public final String mo25155a() {
        return C8699a.f30818a.serialize((C8699a) this, true);
    }

    @Override // com.dropbox.core.p265v2.p268c.C8696c
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8698d c8698d = (C8698d) obj;
        if (this.f30814a != c8698d.f30814a && !this.f30814a.equals(c8698d.f30814a)) {
            return false;
        }
        if (this.f30815b != c8698d.f30815b && !this.f30815b.equals(c8698d.f30815b)) {
            return false;
        }
        String str = this.f30817c;
        String str2 = c8698d.f30817c;
        return str == str2 || str.equals(str2);
    }

    @Override // com.dropbox.core.p265v2.p268c.C8696c
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f30817c});
    }

    @Override // com.dropbox.core.p265v2.p268c.C8696c
    public final String toString() {
        return C8699a.f30818a.serialize((C8699a) this, false);
    }
}
