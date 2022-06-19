package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.files.C8931h;
import com.dropbox.core.p265v2.files.C8957q;
import com.dropbox.core.p265v2.files.C8963t;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.files.al */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/al.class */
public class C8829al {

    /* renamed from: o */
    protected final String f31066o;

    /* renamed from: p */
    protected final String f31067p;

    /* renamed from: q */
    protected final String f31068q;

    /* renamed from: r */
    protected final String f31069r;

    /* renamed from: com.dropbox.core.v2.files.al$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/al$a.class */
    public static final class C8830a extends AbstractC8558e<C8829al> {

        /* renamed from: a */
        public static final C8830a f31070a = new C8830a();

        C8830a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static com.dropbox.core.p265v2.files.C8829al m25061a(com.fasterxml.jackson.core.JsonParser r7, boolean r8) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 364
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.files.C8829al.C8830a.m25061a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.al");
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8829al deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m25061a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8829al c8829al, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8829al c8829al2 = c8829al;
            if (c8829al2 instanceof C8957q) {
                C8957q.C8958a.f31309a.serialize((C8957q) c8829al2, jsonGenerator, z);
            } else if (c8829al2 instanceof C8963t) {
                C8963t.C8964a.f31318a.serialize((C8963t) c8829al2, jsonGenerator, z);
            } else if (c8829al2 instanceof C8931h) {
                C8931h.C8932a.f31256a.serialize((C8931h) c8829al2, jsonGenerator, z);
            } else {
                if (!z) {
                    jsonGenerator.writeStartObject();
                }
                jsonGenerator.writeFieldName("name");
                C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8829al2.f31066o, jsonGenerator);
                if (c8829al2.f31067p != null) {
                    jsonGenerator.writeFieldName("path_lower");
                    C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8829al2.f31067p, jsonGenerator);
                }
                if (c8829al2.f31068q != null) {
                    jsonGenerator.writeFieldName("path_display");
                    C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8829al2.f31068q, jsonGenerator);
                }
                if (c8829al2.f31069r != null) {
                    jsonGenerator.writeFieldName("parent_shared_folder_id");
                    C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8829al2.f31069r, jsonGenerator);
                }
                if (z) {
                    return;
                }
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8829al(String str) {
        this(str, null, null, null);
    }

    public C8829al(String str, String str2, String str3, String str4) {
        if (str != null) {
            this.f31066o = str;
            this.f31067p = str2;
            this.f31068q = str3;
            if (str4 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str4)) {
                throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            this.f31069r = str4;
            return;
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    /* renamed from: a */
    public String mo24941a() {
        return this.f31066o;
    }

    /* renamed from: b */
    public String mo24940b() {
        return this.f31068q;
    }

    /* renamed from: c */
    public String mo24939c() {
        return C8830a.f31070a.serialize((C8830a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8829al c8829al = (C8829al) obj;
        String str = this.f31066o;
        String str2 = c8829al.f31066o;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f31067p;
        String str4 = c8829al.f31067p;
        if (str3 != str4 && (str3 == null || !str3.equals(str4))) {
            return false;
        }
        String str5 = this.f31068q;
        String str6 = c8829al.f31068q;
        if (str5 != str6 && (str5 == null || !str5.equals(str6))) {
            return false;
        }
        String str7 = this.f31069r;
        String str8 = c8829al.f31069r;
        if (str7 == str8) {
            return true;
        }
        return str7 != null && str7.equals(str8);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31066o, this.f31067p, this.f31068q, this.f31069r});
    }

    public String toString() {
        return C8830a.f31070a.serialize((C8830a) this, false);
    }
}
