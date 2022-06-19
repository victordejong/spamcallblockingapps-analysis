package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.fileproperties.C8765j;
import com.dropbox.core.p265v2.files.C8965u;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.files.t */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/t.class */
public final class C8963t extends C8829al {

    /* renamed from: a */
    protected final String f31314a;

    /* renamed from: b */
    protected final String f31315b;

    /* renamed from: c */
    protected final C8965u f31316c;

    /* renamed from: d */
    protected final List<C8765j> f31317d;

    /* renamed from: com.dropbox.core.v2.files.t$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/t$a.class */
    public static final class C8964a extends AbstractC8558e<C8963t> {

        /* renamed from: a */
        public static final C8964a f31318a = new C8964a();

        C8964a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
            if ("folder".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.p265v2.files.C8963t m24937a(com.fasterxml.jackson.core.JsonParser r11, boolean r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 412
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.files.C8963t.C8964a.m24937a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.t");
        }

        /* renamed from: a */
        public final void serialize(C8963t c8963t, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("folder", jsonGenerator);
            jsonGenerator.writeFieldName("name");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8963t.f31066o, jsonGenerator);
            jsonGenerator.writeFieldName("id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8963t.f31314a, jsonGenerator);
            if (c8963t.f31067p != null) {
                jsonGenerator.writeFieldName("path_lower");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8963t.f31067p, jsonGenerator);
            }
            if (c8963t.f31068q != null) {
                jsonGenerator.writeFieldName("path_display");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8963t.f31068q, jsonGenerator);
            }
            if (c8963t.f31069r != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8963t.f31069r, jsonGenerator);
            }
            if (c8963t.f31315b != null) {
                jsonGenerator.writeFieldName("shared_folder_id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8963t.f31315b, jsonGenerator);
            }
            if (c8963t.f31316c != null) {
                jsonGenerator.writeFieldName("sharing_info");
                C8548d.m25353a((AbstractC8558e) C8965u.C8966a.f31323a).serialize((AbstractC8558e) c8963t.f31316c, jsonGenerator);
            }
            if (c8963t.f31317d != null) {
                jsonGenerator.writeFieldName("property_groups");
                C8548d.m25354a(C8548d.m25352b(C8765j.C8766a.f30926a)).serialize((AbstractC8547c) c8963t.f31317d, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8963t deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24937a(jsonParser, z);
        }
    }

    public C8963t(String str, String str2) {
        this(str, str2, null, null, null, null, null, null);
    }

    public C8963t(String str, String str2, String str3, String str4, String str5, String str6, C8965u c8965u, List<C8765j> list) {
        super(str, str3, str4, str5);
        if (str2 != null) {
            if (str2.length() <= 0) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            this.f31314a = str2;
            if (str6 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str6)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.f31315b = str6;
            this.f31316c = c8965u;
            if (list != null) {
                for (C8765j c8765j : list) {
                    if (c8765j == null) {
                        throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                    }
                }
            }
            this.f31317d = list;
            return;
        }
        throw new IllegalArgumentException("Required value for 'id' is null");
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
        return C8964a.f31318a.serialize((C8964a) this, true);
    }

    @Override // com.dropbox.core.p265v2.files.C8829al
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8963t c8963t = (C8963t) obj;
        if (this.f31066o != c8963t.f31066o && !this.f31066o.equals(c8963t.f31066o)) {
            return false;
        }
        String str = this.f31314a;
        String str2 = c8963t.f31314a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        if (this.f31067p != c8963t.f31067p && (this.f31067p == null || !this.f31067p.equals(c8963t.f31067p))) {
            return false;
        }
        if (this.f31068q != c8963t.f31068q && (this.f31068q == null || !this.f31068q.equals(c8963t.f31068q))) {
            return false;
        }
        if (this.f31069r != c8963t.f31069r && (this.f31069r == null || !this.f31069r.equals(c8963t.f31069r))) {
            return false;
        }
        String str3 = this.f31315b;
        String str4 = c8963t.f31315b;
        if (str3 != str4 && (str3 == null || !str3.equals(str4))) {
            return false;
        }
        C8965u c8965u = this.f31316c;
        C8965u c8965u2 = c8963t.f31316c;
        if (c8965u != c8965u2 && (c8965u == null || !c8965u.equals(c8965u2))) {
            return false;
        }
        List<C8765j> list = this.f31317d;
        List<C8765j> list2 = c8963t.f31317d;
        if (list == list2) {
            return true;
        }
        return list != null && list.equals(list2);
    }

    @Override // com.dropbox.core.p265v2.files.C8829al
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31314a, this.f31315b, this.f31316c, this.f31317d});
    }

    @Override // com.dropbox.core.p265v2.files.C8829al
    public final String toString() {
        return C8964a.f31318a.serialize((C8964a) this, false);
    }
}
