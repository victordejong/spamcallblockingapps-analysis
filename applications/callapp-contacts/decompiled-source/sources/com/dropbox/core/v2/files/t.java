package com.dropbox.core.v2.files;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.fileproperties.j;
import com.dropbox.core.v2.files.u;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/t.class */
public final class t extends al {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18359a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18360b;

    /* renamed from: c  reason: collision with root package name */
    protected final u f18361c;

    /* renamed from: d  reason: collision with root package name */
    protected final List<j> f18362d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/t$a.class */
    public static final class a extends e<t> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18363a = new a();

        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
            if ("folder".equals(r0) != false) goto L_0x0018;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.v2.files.t a(com.fasterxml.jackson.core.JsonParser r11, boolean r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 412
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.files.t.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.t");
        }

        /* renamed from: a */
        public final void serialize(t tVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("folder", jsonGenerator);
            jsonGenerator.writeFieldName("name");
            d.h.f17717a.serialize((d.h) tVar.o, jsonGenerator);
            jsonGenerator.writeFieldName("id");
            d.h.f17717a.serialize((d.h) tVar.f18359a, jsonGenerator);
            if (tVar.p != null) {
                jsonGenerator.writeFieldName("path_lower");
                d.a(d.h.f17717a).serialize((c) tVar.p, jsonGenerator);
            }
            if (tVar.q != null) {
                jsonGenerator.writeFieldName("path_display");
                d.a(d.h.f17717a).serialize((c) tVar.q, jsonGenerator);
            }
            if (tVar.r != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                d.a(d.h.f17717a).serialize((c) tVar.r, jsonGenerator);
            }
            if (tVar.f18360b != null) {
                jsonGenerator.writeFieldName("shared_folder_id");
                d.a(d.h.f17717a).serialize((c) tVar.f18360b, jsonGenerator);
            }
            if (tVar.f18361c != null) {
                jsonGenerator.writeFieldName("sharing_info");
                d.a((e) u.a.f18368a).serialize((e) tVar.f18361c, jsonGenerator);
            }
            if (tVar.f18362d != null) {
                jsonGenerator.writeFieldName("property_groups");
                d.a(d.b(j.a.f18059a)).serialize((c) tVar.f18362d, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ t deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }
    }

    public t(String str, String str2) {
        this(str, str2, null, null, null, null, null, null);
    }

    public t(String str, String str2, String str3, String str4, String str5, String str6, u uVar, List<j> list) {
        super(str, str3, str4, str5);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        } else if (str2.length() > 0) {
            this.f18359a = str2;
            if (str6 == null || Pattern.matches("[-_0-9a-zA-Z:]+", str6)) {
                this.f18360b = str6;
                this.f18361c = uVar;
                if (list != null) {
                    for (j jVar : list) {
                        if (jVar == null) {
                            throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                        }
                    }
                }
                this.f18362d = list;
                return;
            }
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
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
        return a.f18363a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.files.al
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        t tVar = (t) obj;
        if (this.o != tVar.o && !this.o.equals(tVar.o)) {
            return false;
        }
        String str = this.f18359a;
        String str2 = tVar.f18359a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        if (this.p != tVar.p && (this.p == null || !this.p.equals(tVar.p))) {
            return false;
        }
        if (this.q != tVar.q && (this.q == null || !this.q.equals(tVar.q))) {
            return false;
        }
        if (this.r != tVar.r && (this.r == null || !this.r.equals(tVar.r))) {
            return false;
        }
        String str3 = this.f18360b;
        String str4 = tVar.f18360b;
        if (str3 != str4 && (str3 == null || !str3.equals(str4))) {
            return false;
        }
        u uVar = this.f18361c;
        u uVar2 = tVar.f18361c;
        if (uVar != uVar2 && (uVar == null || !uVar.equals(uVar2))) {
            return false;
        }
        List<j> list = this.f18362d;
        List<j> list2 = tVar.f18362d;
        if (list != list2) {
            return list != null && list.equals(list2);
        }
        return true;
    }

    @Override // com.dropbox.core.v2.files.al
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18359a, this.f18360b, this.f18361c, this.f18362d});
    }

    @Override // com.dropbox.core.v2.files.al
    public final String toString() {
        return a.f18363a.serialize((a) this, false);
    }
}
