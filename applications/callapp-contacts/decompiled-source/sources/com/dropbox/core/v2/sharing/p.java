package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.ab;
import com.dropbox.core.v2.sharing.bo;
import com.dropbox.core.v2.users.d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/p.class */
public final class p extends bj {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/p$a.class */
    public static final class a extends e<p> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18695a = new a();

        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
            if ("folder".equals(r0) != false) goto L_0x0018;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.v2.sharing.p a(com.fasterxml.jackson.core.JsonParser r11, boolean r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 421
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.sharing.p.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.sharing.p");
        }

        /* renamed from: a */
        public final void serialize(p pVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("folder", jsonGenerator);
            jsonGenerator.writeFieldName("url");
            d.h.f17717a.serialize((d.h) pVar.e, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            d.h.f17717a.serialize((d.h) pVar.g, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            ab.a.f18449a.serialize((ab.a) pVar.j, jsonGenerator);
            if (pVar.f != null) {
                jsonGenerator.writeFieldName("id");
                d.a(d.h.f17717a).serialize((c) pVar.f, jsonGenerator);
            }
            if (pVar.h != null) {
                jsonGenerator.writeFieldName("expires");
                d.a(d.b.f17711a).serialize((c) pVar.h, jsonGenerator);
            }
            if (pVar.i != null) {
                jsonGenerator.writeFieldName("path_lower");
                d.a(d.h.f17717a).serialize((c) pVar.i, jsonGenerator);
            }
            if (pVar.k != null) {
                jsonGenerator.writeFieldName("team_member_info");
                d.a((e) bo.a.f18602a).serialize((e) pVar.k, jsonGenerator);
            }
            if (pVar.l != null) {
                jsonGenerator.writeFieldName("content_owner_team_info");
                d.a((e) d.a.f18869a).serialize((e) pVar.l, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ p deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }
    }

    public p(String str, String str2, ab abVar) {
        this(str, str2, abVar, null, null, null, null, null);
    }

    public p(String str, String str2, ab abVar, String str3, Date date, String str4, bo boVar, com.dropbox.core.v2.users.d dVar) {
        super(str, str2, abVar, str3, date, str4, boVar, dVar);
    }

    @Override // com.dropbox.core.v2.sharing.bj
    public final String a() {
        return a.f18695a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.sharing.bj
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        p pVar = (p) obj;
        if (this.e != pVar.e && !this.e.equals(pVar.e)) {
            return false;
        }
        if (this.g != pVar.g && !this.g.equals(pVar.g)) {
            return false;
        }
        if (this.j != pVar.j && !this.j.equals(pVar.j)) {
            return false;
        }
        if (this.f != pVar.f && (this.f == null || !this.f.equals(pVar.f))) {
            return false;
        }
        if (this.h != pVar.h && (this.h == null || !this.h.equals(pVar.h))) {
            return false;
        }
        if (this.i != pVar.i && (this.i == null || !this.i.equals(pVar.i))) {
            return false;
        }
        if (this.k != pVar.k && (this.k == null || !this.k.equals(pVar.k))) {
            return false;
        }
        if (this.l != pVar.l) {
            return this.l != null && this.l.equals(pVar.l);
        }
        return true;
    }

    @Override // com.dropbox.core.v2.sharing.bj
    public final int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.sharing.bj
    public final String toString() {
        return a.f18695a.serialize((a) this, false);
    }
}
