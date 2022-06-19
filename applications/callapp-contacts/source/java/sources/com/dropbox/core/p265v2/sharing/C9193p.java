package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9003ab;
import com.dropbox.core.p265v2.sharing.C9125bo;
import com.dropbox.core.p265v2.users.C9329d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Date;
/* renamed from: com.dropbox.core.v2.sharing.p */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/p.class */
public final class C9193p extends C9111bj {

    /* renamed from: com.dropbox.core.v2.sharing.p$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/p$a.class */
    public static final class C9194a extends AbstractC8558e<C9193p> {

        /* renamed from: a */
        public static final C9194a f31764a = new C9194a();

        C9194a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
            if ("folder".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.p265v2.sharing.C9193p m24765a(com.fasterxml.jackson.core.JsonParser r11, boolean r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 421
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.sharing.C9193p.C9194a.m24765a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.sharing.p");
        }

        /* renamed from: a */
        public final void serialize(C9193p c9193p, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("folder", jsonGenerator);
            jsonGenerator.writeFieldName("url");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9193p.f31615e, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9193p.f31617g, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            C9003ab.C9004a.f31408a.serialize((C9003ab.C9004a) c9193p.f31620j, jsonGenerator);
            if (c9193p.f31616f != null) {
                jsonGenerator.writeFieldName("id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9193p.f31616f, jsonGenerator);
            }
            if (c9193p.f31618h != null) {
                jsonGenerator.writeFieldName("expires");
                C8548d.m25354a(C8548d.C8550b.f30453a).serialize((AbstractC8547c) c9193p.f31618h, jsonGenerator);
            }
            if (c9193p.f31619i != null) {
                jsonGenerator.writeFieldName("path_lower");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9193p.f31619i, jsonGenerator);
            }
            if (c9193p.f31621k != null) {
                jsonGenerator.writeFieldName("team_member_info");
                C8548d.m25353a((AbstractC8558e) C9125bo.C9126a.f31635a).serialize((AbstractC8558e) c9193p.f31621k, jsonGenerator);
            }
            if (c9193p.f31622l != null) {
                jsonGenerator.writeFieldName("content_owner_team_info");
                C8548d.m25353a((AbstractC8558e) C9329d.C9330a.f31962a).serialize((AbstractC8558e) c9193p.f31622l, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9193p deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24765a(jsonParser, z);
        }
    }

    public C9193p(String str, String str2, C9003ab c9003ab) {
        this(str, str2, c9003ab, null, null, null, null, null);
    }

    public C9193p(String str, String str2, C9003ab c9003ab, String str3, Date date, String str4, C9125bo c9125bo, C9329d c9329d) {
        super(str, str2, c9003ab, str3, date, str4, c9125bo, c9329d);
    }

    @Override // com.dropbox.core.p265v2.sharing.C9111bj
    /* renamed from: a */
    public final String mo24767a() {
        return C9194a.f31764a.serialize((C9194a) this, true);
    }

    @Override // com.dropbox.core.p265v2.sharing.C9111bj
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9193p c9193p = (C9193p) obj;
        if (this.f31615e != c9193p.f31615e && !this.f31615e.equals(c9193p.f31615e)) {
            return false;
        }
        if (this.f31617g != c9193p.f31617g && !this.f31617g.equals(c9193p.f31617g)) {
            return false;
        }
        if (this.f31620j != c9193p.f31620j && !this.f31620j.equals(c9193p.f31620j)) {
            return false;
        }
        if (this.f31616f != c9193p.f31616f && (this.f31616f == null || !this.f31616f.equals(c9193p.f31616f))) {
            return false;
        }
        if (this.f31618h != c9193p.f31618h && (this.f31618h == null || !this.f31618h.equals(c9193p.f31618h))) {
            return false;
        }
        if (this.f31619i != c9193p.f31619i && (this.f31619i == null || !this.f31619i.equals(c9193p.f31619i))) {
            return false;
        }
        if (this.f31621k != c9193p.f31621k && (this.f31621k == null || !this.f31621k.equals(c9193p.f31621k))) {
            return false;
        }
        if (this.f31622l == c9193p.f31622l) {
            return true;
        }
        return this.f31622l != null && this.f31622l.equals(c9193p.f31622l);
    }

    @Override // com.dropbox.core.p265v2.sharing.C9111bj
    public final int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p265v2.sharing.C9111bj
    public final String toString() {
        return C9194a.f31764a.serialize((C9194a) this, false);
    }
}
