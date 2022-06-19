package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.fileproperties.C8765j;
import com.dropbox.core.p265v2.files.C8823aj;
import com.dropbox.core.p265v2.files.C8866ax;
import com.dropbox.core.p265v2.files.C8947m;
import com.dropbox.core.p265v2.files.C8955p;
import com.dropbox.core.p265v2.files.C8961s;
import com.dropbox.core.util.C8636d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.files.q */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/q.class */
public final class C8957q extends C8829al {

    /* renamed from: a */
    protected final String f31295a;

    /* renamed from: b */
    protected final Date f31296b;

    /* renamed from: c */
    protected final Date f31297c;

    /* renamed from: d */
    protected final String f31298d;

    /* renamed from: e */
    protected final long f31299e;

    /* renamed from: f */
    protected final C8823aj f31300f;

    /* renamed from: g */
    protected final C8866ax f31301g;

    /* renamed from: h */
    protected final C8961s f31302h;

    /* renamed from: i */
    protected final boolean f31303i;

    /* renamed from: j */
    protected final C8947m f31304j;

    /* renamed from: k */
    protected final List<C8765j> f31305k;

    /* renamed from: l */
    protected final Boolean f31306l;

    /* renamed from: m */
    protected final String f31307m;

    /* renamed from: n */
    protected final C8955p f31308n;

    /* renamed from: com.dropbox.core.v2.files.q$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/q$a.class */
    public static final class C8958a extends AbstractC8558e<C8957q> {

        /* renamed from: a */
        public static final C8958a f31309a = new C8958a();

        C8958a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("file".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.p265v2.files.C8957q m24943a(com.fasterxml.jackson.core.JsonParser r22, boolean r23) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 815
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.files.C8957q.C8958a.m24943a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.q");
        }

        /* renamed from: a */
        public final void serialize(C8957q c8957q, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("file", jsonGenerator);
            jsonGenerator.writeFieldName("name");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8957q.f31066o, jsonGenerator);
            jsonGenerator.writeFieldName("id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8957q.f31295a, jsonGenerator);
            jsonGenerator.writeFieldName("client_modified");
            C8548d.C8550b.f30453a.serialize((C8548d.C8550b) c8957q.f31296b, jsonGenerator);
            jsonGenerator.writeFieldName("server_modified");
            C8548d.C8550b.f30453a.serialize((C8548d.C8550b) c8957q.f31297c, jsonGenerator);
            jsonGenerator.writeFieldName("rev");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8957q.f31298d, jsonGenerator);
            jsonGenerator.writeFieldName("size");
            C8548d.C8553e.f30456a.serialize((C8548d.C8553e) Long.valueOf(c8957q.f31299e), jsonGenerator);
            if (c8957q.f31067p != null) {
                jsonGenerator.writeFieldName("path_lower");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8957q.f31067p, jsonGenerator);
            }
            if (c8957q.f31068q != null) {
                jsonGenerator.writeFieldName("path_display");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8957q.f31068q, jsonGenerator);
            }
            if (c8957q.f31069r != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8957q.f31069r, jsonGenerator);
            }
            if (c8957q.f31300f != null) {
                jsonGenerator.writeFieldName("media_info");
                C8548d.m25354a(C8823aj.C8825a.f31061a).serialize((AbstractC8547c) c8957q.f31300f, jsonGenerator);
            }
            if (c8957q.f31301g != null) {
                jsonGenerator.writeFieldName("symlink_info");
                C8548d.m25353a((AbstractC8558e) C8866ax.C8867a.f31140a).serialize((AbstractC8558e) c8957q.f31301g, jsonGenerator);
            }
            if (c8957q.f31302h != null) {
                jsonGenerator.writeFieldName("sharing_info");
                C8548d.m25353a((AbstractC8558e) C8961s.C8962a.f31313a).serialize((AbstractC8558e) c8957q.f31302h, jsonGenerator);
            }
            jsonGenerator.writeFieldName("is_downloadable");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8957q.f31303i), jsonGenerator);
            if (c8957q.f31304j != null) {
                jsonGenerator.writeFieldName("export_info");
                C8548d.m25353a((AbstractC8558e) C8947m.C8948a.f31281a).serialize((AbstractC8558e) c8957q.f31304j, jsonGenerator);
            }
            if (c8957q.f31305k != null) {
                jsonGenerator.writeFieldName("property_groups");
                C8548d.m25354a(C8548d.m25352b(C8765j.C8766a.f30926a)).serialize((AbstractC8547c) c8957q.f31305k, jsonGenerator);
            }
            if (c8957q.f31306l != null) {
                jsonGenerator.writeFieldName("has_explicit_shared_members");
                C8548d.m25354a(C8548d.C8549a.f30452a).serialize((AbstractC8547c) c8957q.f31306l, jsonGenerator);
            }
            if (c8957q.f31307m != null) {
                jsonGenerator.writeFieldName("content_hash");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8957q.f31307m, jsonGenerator);
            }
            if (c8957q.f31308n != null) {
                jsonGenerator.writeFieldName("file_lock_info");
                C8548d.m25353a((AbstractC8558e) C8955p.C8956a.f31294a).serialize((AbstractC8558e) c8957q.f31308n, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8957q deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24943a(jsonParser, z);
        }
    }

    public C8957q(String str, String str2, Date date, Date date2, String str3, long j) {
        this(str, str2, date, date2, str3, j, null, null, null, null, null, null, true, null, null, null, null, null);
    }

    public C8957q(String str, String str2, Date date, Date date2, String str3, long j, String str4, String str5, String str6, C8823aj c8823aj, C8866ax c8866ax, C8961s c8961s, boolean z, C8947m c8947m, List<C8765j> list, Boolean bool, String str7, C8955p c8955p) {
        super(str, str4, str5, str6);
        if (str2 != null) {
            if (str2.length() <= 0) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            this.f31295a = str2;
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'clientModified' is null");
            }
            this.f31296b = C8636d.m25221a(date);
            if (date2 == null) {
                throw new IllegalArgumentException("Required value for 'serverModified' is null");
            }
            this.f31297c = C8636d.m25221a(date2);
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'rev' is null");
            }
            if (str3.length() < 9) {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", str3)) {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
            this.f31298d = str3;
            this.f31299e = j;
            this.f31300f = c8823aj;
            this.f31301g = c8866ax;
            this.f31302h = c8961s;
            this.f31303i = z;
            this.f31304j = c8947m;
            if (list != null) {
                for (C8765j c8765j : list) {
                    if (c8765j == null) {
                        throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                    }
                }
            }
            this.f31305k = list;
            this.f31306l = bool;
            if (str7 != null) {
                if (str7.length() < 64) {
                    throw new IllegalArgumentException("String 'contentHash' is shorter than 64");
                }
                if (str7.length() > 64) {
                    throw new IllegalArgumentException("String 'contentHash' is longer than 64");
                }
            }
            this.f31307m = str7;
            this.f31308n = c8955p;
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
        return C8958a.f31309a.serialize((C8958a) this, true);
    }

    @Override // com.dropbox.core.p265v2.files.C8829al
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8957q c8957q = (C8957q) obj;
        if (this.f31066o != c8957q.f31066o && !this.f31066o.equals(c8957q.f31066o)) {
            return false;
        }
        String str = this.f31295a;
        String str2 = c8957q.f31295a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        Date date = this.f31296b;
        Date date2 = c8957q.f31296b;
        if (date != date2 && !date.equals(date2)) {
            return false;
        }
        Date date3 = this.f31297c;
        Date date4 = c8957q.f31297c;
        if (date3 != date4 && !date3.equals(date4)) {
            return false;
        }
        String str3 = this.f31298d;
        String str4 = c8957q.f31298d;
        if ((str3 != str4 && !str3.equals(str4)) || this.f31299e != c8957q.f31299e) {
            return false;
        }
        if (this.f31067p != c8957q.f31067p && (this.f31067p == null || !this.f31067p.equals(c8957q.f31067p))) {
            return false;
        }
        if (this.f31068q != c8957q.f31068q && (this.f31068q == null || !this.f31068q.equals(c8957q.f31068q))) {
            return false;
        }
        if (this.f31069r != c8957q.f31069r && (this.f31069r == null || !this.f31069r.equals(c8957q.f31069r))) {
            return false;
        }
        C8823aj c8823aj = this.f31300f;
        C8823aj c8823aj2 = c8957q.f31300f;
        if (c8823aj != c8823aj2 && (c8823aj == null || !c8823aj.equals(c8823aj2))) {
            return false;
        }
        C8866ax c8866ax = this.f31301g;
        C8866ax c8866ax2 = c8957q.f31301g;
        if (c8866ax != c8866ax2 && (c8866ax == null || !c8866ax.equals(c8866ax2))) {
            return false;
        }
        C8961s c8961s = this.f31302h;
        C8961s c8961s2 = c8957q.f31302h;
        if ((c8961s != c8961s2 && (c8961s == null || !c8961s.equals(c8961s2))) || this.f31303i != c8957q.f31303i) {
            return false;
        }
        C8947m c8947m = this.f31304j;
        C8947m c8947m2 = c8957q.f31304j;
        if (c8947m != c8947m2 && (c8947m == null || !c8947m.equals(c8947m2))) {
            return false;
        }
        List<C8765j> list = this.f31305k;
        List<C8765j> list2 = c8957q.f31305k;
        if (list != list2 && (list == null || !list.equals(list2))) {
            return false;
        }
        Boolean bool = this.f31306l;
        Boolean bool2 = c8957q.f31306l;
        if (bool != bool2 && (bool == null || !bool.equals(bool2))) {
            return false;
        }
        String str5 = this.f31307m;
        String str6 = c8957q.f31307m;
        if (str5 != str6 && (str5 == null || !str5.equals(str6))) {
            return false;
        }
        C8955p c8955p = this.f31308n;
        C8955p c8955p2 = c8957q.f31308n;
        if (c8955p == c8955p2) {
            return true;
        }
        return c8955p != null && c8955p.equals(c8955p2);
    }

    @Override // com.dropbox.core.p265v2.files.C8829al
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31295a, this.f31296b, this.f31297c, this.f31298d, Long.valueOf(this.f31299e), this.f31300f, this.f31301g, this.f31302h, Boolean.valueOf(this.f31303i), this.f31304j, this.f31305k, this.f31306l, this.f31307m, this.f31308n});
    }

    @Override // com.dropbox.core.p265v2.files.C8829al
    public final String toString() {
        return C8958a.f31309a.serialize((C8958a) this, false);
    }
}
