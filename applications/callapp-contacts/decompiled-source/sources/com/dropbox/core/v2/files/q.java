package com.dropbox.core.v2.files;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.fileproperties.j;
import com.dropbox.core.v2.files.aj;
import com.dropbox.core.v2.files.ax;
import com.dropbox.core.v2.files.m;
import com.dropbox.core.v2.files.p;
import com.dropbox.core.v2.files.s;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/q.class */
public final class q extends al {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18350a;

    /* renamed from: b  reason: collision with root package name */
    protected final Date f18351b;

    /* renamed from: c  reason: collision with root package name */
    protected final Date f18352c;

    /* renamed from: d  reason: collision with root package name */
    protected final String f18353d;
    protected final long e;
    protected final aj f;
    protected final ax g;
    protected final s h;
    protected final boolean i;
    protected final m j;
    protected final List<j> k;
    protected final Boolean l;
    protected final String m;
    protected final p n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/q$a.class */
    public static final class a extends e<q> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18354a = new a();

        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("file".equals(r0) != false) goto L_0x001b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.v2.files.q a(com.fasterxml.jackson.core.JsonParser r22, boolean r23) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 815
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.files.q.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.q");
        }

        /* renamed from: a */
        public final void serialize(q qVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("file", jsonGenerator);
            jsonGenerator.writeFieldName("name");
            d.h.f17717a.serialize((d.h) qVar.o, jsonGenerator);
            jsonGenerator.writeFieldName("id");
            d.h.f17717a.serialize((d.h) qVar.f18350a, jsonGenerator);
            jsonGenerator.writeFieldName("client_modified");
            d.b.f17711a.serialize((d.b) qVar.f18351b, jsonGenerator);
            jsonGenerator.writeFieldName("server_modified");
            d.b.f17711a.serialize((d.b) qVar.f18352c, jsonGenerator);
            jsonGenerator.writeFieldName("rev");
            d.h.f17717a.serialize((d.h) qVar.f18353d, jsonGenerator);
            jsonGenerator.writeFieldName("size");
            d.e.f17714a.serialize((d.e) Long.valueOf(qVar.e), jsonGenerator);
            if (qVar.p != null) {
                jsonGenerator.writeFieldName("path_lower");
                d.a(d.h.f17717a).serialize((c) qVar.p, jsonGenerator);
            }
            if (qVar.q != null) {
                jsonGenerator.writeFieldName("path_display");
                d.a(d.h.f17717a).serialize((c) qVar.q, jsonGenerator);
            }
            if (qVar.r != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                d.a(d.h.f17717a).serialize((c) qVar.r, jsonGenerator);
            }
            if (qVar.f != null) {
                jsonGenerator.writeFieldName("media_info");
                d.a(aj.a.f18168a).serialize((c) qVar.f, jsonGenerator);
            }
            if (qVar.g != null) {
                jsonGenerator.writeFieldName("symlink_info");
                d.a((e) ax.a.f18222a).serialize((e) qVar.g, jsonGenerator);
            }
            if (qVar.h != null) {
                jsonGenerator.writeFieldName("sharing_info");
                d.a((e) s.a.f18358a).serialize((e) qVar.h, jsonGenerator);
            }
            jsonGenerator.writeFieldName("is_downloadable");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(qVar.i), jsonGenerator);
            if (qVar.j != null) {
                jsonGenerator.writeFieldName("export_info");
                d.a((e) m.a.f18336a).serialize((e) qVar.j, jsonGenerator);
            }
            if (qVar.k != null) {
                jsonGenerator.writeFieldName("property_groups");
                d.a(d.b(j.a.f18059a)).serialize((c) qVar.k, jsonGenerator);
            }
            if (qVar.l != null) {
                jsonGenerator.writeFieldName("has_explicit_shared_members");
                d.a(d.a.f17710a).serialize((c) qVar.l, jsonGenerator);
            }
            if (qVar.m != null) {
                jsonGenerator.writeFieldName("content_hash");
                d.a(d.h.f17717a).serialize((c) qVar.m, jsonGenerator);
            }
            if (qVar.n != null) {
                jsonGenerator.writeFieldName("file_lock_info");
                d.a((e) p.a.f18349a).serialize((e) qVar.n, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ q deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }
    }

    public q(String str, String str2, Date date, Date date2, String str3, long j) {
        this(str, str2, date, date2, str3, j, null, null, null, null, null, null, true, null, null, null, null, null);
    }

    public q(String str, String str2, Date date, Date date2, String str3, long j, String str4, String str5, String str6, aj ajVar, ax axVar, s sVar, boolean z, m mVar, List<j> list, Boolean bool, String str7, p pVar) {
        super(str, str4, str5, str6);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        } else if (str2.length() > 0) {
            this.f18350a = str2;
            if (date != null) {
                this.f18351b = com.dropbox.core.util.d.a(date);
                if (date2 != null) {
                    this.f18352c = com.dropbox.core.util.d.a(date2);
                    if (str3 == null) {
                        throw new IllegalArgumentException("Required value for 'rev' is null");
                    } else if (str3.length() < 9) {
                        throw new IllegalArgumentException("String 'rev' is shorter than 9");
                    } else if (Pattern.matches("[0-9a-f]+", str3)) {
                        this.f18353d = str3;
                        this.e = j;
                        this.f = ajVar;
                        this.g = axVar;
                        this.h = sVar;
                        this.i = z;
                        this.j = mVar;
                        if (list != null) {
                            for (j jVar : list) {
                                if (jVar == null) {
                                    throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                                }
                            }
                        }
                        this.k = list;
                        this.l = bool;
                        if (str7 != null) {
                            if (str7.length() < 64) {
                                throw new IllegalArgumentException("String 'contentHash' is shorter than 64");
                            } else if (str7.length() > 64) {
                                throw new IllegalArgumentException("String 'contentHash' is longer than 64");
                            }
                        }
                        this.m = str7;
                        this.n = pVar;
                    } else {
                        throw new IllegalArgumentException("String 'rev' does not match pattern");
                    }
                } else {
                    throw new IllegalArgumentException("Required value for 'serverModified' is null");
                }
            } else {
                throw new IllegalArgumentException("Required value for 'clientModified' is null");
            }
        } else {
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
    }

    @Override // com.dropbox.core.v2.files.al
    public final String a() {
        return this.o;
    }

    @Override // com.dropbox.core.v2.files.al
    public final String b() {
        return this.q;
    }

    @Override // com.dropbox.core.v2.files.al
    public final String c() {
        return a.f18354a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.files.al
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        q qVar = (q) obj;
        if (this.o != qVar.o && !this.o.equals(qVar.o)) {
            return false;
        }
        String str = this.f18350a;
        String str2 = qVar.f18350a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        Date date = this.f18351b;
        Date date2 = qVar.f18351b;
        if (date != date2 && !date.equals(date2)) {
            return false;
        }
        Date date3 = this.f18352c;
        Date date4 = qVar.f18352c;
        if (date3 != date4 && !date3.equals(date4)) {
            return false;
        }
        String str3 = this.f18353d;
        String str4 = qVar.f18353d;
        if ((str3 != str4 && !str3.equals(str4)) || this.e != qVar.e) {
            return false;
        }
        if (this.p != qVar.p && (this.p == null || !this.p.equals(qVar.p))) {
            return false;
        }
        if (this.q != qVar.q && (this.q == null || !this.q.equals(qVar.q))) {
            return false;
        }
        if (this.r != qVar.r && (this.r == null || !this.r.equals(qVar.r))) {
            return false;
        }
        aj ajVar = this.f;
        aj ajVar2 = qVar.f;
        if (ajVar != ajVar2 && (ajVar == null || !ajVar.equals(ajVar2))) {
            return false;
        }
        ax axVar = this.g;
        ax axVar2 = qVar.g;
        if (axVar != axVar2 && (axVar == null || !axVar.equals(axVar2))) {
            return false;
        }
        s sVar = this.h;
        s sVar2 = qVar.h;
        if ((sVar != sVar2 && (sVar == null || !sVar.equals(sVar2))) || this.i != qVar.i) {
            return false;
        }
        m mVar = this.j;
        m mVar2 = qVar.j;
        if (mVar != mVar2 && (mVar == null || !mVar.equals(mVar2))) {
            return false;
        }
        List<j> list = this.k;
        List<j> list2 = qVar.k;
        if (list != list2 && (list == null || !list.equals(list2))) {
            return false;
        }
        Boolean bool = this.l;
        Boolean bool2 = qVar.l;
        if (bool != bool2 && (bool == null || !bool.equals(bool2))) {
            return false;
        }
        String str5 = this.m;
        String str6 = qVar.m;
        if (str5 != str6 && (str5 == null || !str5.equals(str6))) {
            return false;
        }
        p pVar = this.n;
        p pVar2 = qVar.n;
        if (pVar != pVar2) {
            return pVar != null && pVar.equals(pVar2);
        }
        return true;
    }

    @Override // com.dropbox.core.v2.files.al
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18350a, this.f18351b, this.f18352c, this.f18353d, Long.valueOf(this.e), this.f, this.g, this.h, Boolean.valueOf(this.i), this.j, this.k, this.l, this.m, this.n});
    }

    @Override // com.dropbox.core.v2.files.al
    public final String toString() {
        return a.f18354a.serialize((a) this, false);
    }
}
