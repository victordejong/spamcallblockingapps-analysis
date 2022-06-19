package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.files.h */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/h.class */
public final class C8931h extends C8829al {

    /* renamed from: com.dropbox.core.v2.files.h$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/h$a.class */
    public static final class C8932a extends AbstractC8558e<C8931h> {

        /* renamed from: a */
        public static final C8932a f31256a = new C8932a();

        C8932a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("deleted".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.p265v2.files.C8931h m24959a(com.fasterxml.jackson.core.JsonParser r7, boolean r8) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 269
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.files.C8931h.C8932a.m24959a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.h");
        }

        /* renamed from: a */
        public final void serialize(C8931h c8931h, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("deleted", jsonGenerator);
            jsonGenerator.writeFieldName("name");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8931h.f31066o, jsonGenerator);
            if (c8931h.f31067p != null) {
                jsonGenerator.writeFieldName("path_lower");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8931h.f31067p, jsonGenerator);
            }
            if (c8931h.f31068q != null) {
                jsonGenerator.writeFieldName("path_display");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8931h.f31068q, jsonGenerator);
            }
            if (c8931h.f31069r != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8931h.f31069r, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8931h deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24959a(jsonParser, z);
        }
    }

    public C8931h(String str) {
        this(str, null, null, null);
    }

    public C8931h(String str, String str2, String str3, String str4) {
        super(str, str2, str3, str4);
    }

    @Override // com.dropbox.core.p265v2.files.C8829al
    /* renamed from: a */
    public final String mo24941a() {
        return this.f31066o;
    }

    @Override // com.dropbox.core.p265v2.files.C8829al
    /* renamed from: b */
    public final String mo24940b() {
        return this.f31068q;
    }

    @Override // com.dropbox.core.p265v2.files.C8829al
    /* renamed from: c */
    public final String mo24939c() {
        return C8932a.f31256a.serialize((C8932a) this, true);
    }

    @Override // com.dropbox.core.p265v2.files.C8829al
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8931h c8931h = (C8931h) obj;
        if (this.f31066o != c8931h.f31066o && !this.f31066o.equals(c8931h.f31066o)) {
            return false;
        }
        if (this.f31067p != c8931h.f31067p && (this.f31067p == null || !this.f31067p.equals(c8931h.f31067p))) {
            return false;
        }
        if (this.f31068q != c8931h.f31068q && (this.f31068q == null || !this.f31068q.equals(c8931h.f31068q))) {
            return false;
        }
        if (this.f31069r == c8931h.f31069r) {
            return true;
        }
        return this.f31069r != null && this.f31069r.equals(c8931h.f31069r);
    }

    @Override // com.dropbox.core.p265v2.files.C8829al
    public final int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p265v2.files.C8829al
    public final String toString() {
        return C8932a.f31256a.serialize((C8932a) this, false);
    }
}
