package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9003ab;
import com.dropbox.core.p265v2.sharing.C9125bo;
import com.dropbox.core.p265v2.users.C9329d;
import com.dropbox.core.util.C8636d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.sharing.m */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/m.class */
public final class C9184m extends C9111bj {

    /* renamed from: a */
    protected final Date f31749a;

    /* renamed from: b */
    protected final Date f31750b;

    /* renamed from: c */
    protected final String f31751c;

    /* renamed from: d */
    protected final long f31752d;

    /* renamed from: com.dropbox.core.v2.sharing.m$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/m$a.class */
    public static final class C9185a extends AbstractC8558e<C9184m> {

        /* renamed from: a */
        public static final C9185a f31753a = new C9185a();

        C9185a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("file".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.p265v2.sharing.C9184m m24775a(com.fasterxml.jackson.core.JsonParser r16, boolean r17) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 620
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.sharing.C9184m.C9185a.m24775a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.sharing.m");
        }

        /* renamed from: a */
        public final void serialize(C9184m c9184m, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("file", jsonGenerator);
            jsonGenerator.writeFieldName("url");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9184m.f31615e, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9184m.f31617g, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            C9003ab.C9004a.f31408a.serialize((C9003ab.C9004a) c9184m.f31620j, jsonGenerator);
            jsonGenerator.writeFieldName("client_modified");
            C8548d.C8550b.f30453a.serialize((C8548d.C8550b) c9184m.f31749a, jsonGenerator);
            jsonGenerator.writeFieldName("server_modified");
            C8548d.C8550b.f30453a.serialize((C8548d.C8550b) c9184m.f31750b, jsonGenerator);
            jsonGenerator.writeFieldName("rev");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9184m.f31751c, jsonGenerator);
            jsonGenerator.writeFieldName("size");
            C8548d.C8553e.f30456a.serialize((C8548d.C8553e) Long.valueOf(c9184m.f31752d), jsonGenerator);
            if (c9184m.f31616f != null) {
                jsonGenerator.writeFieldName("id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9184m.f31616f, jsonGenerator);
            }
            if (c9184m.f31618h != null) {
                jsonGenerator.writeFieldName("expires");
                C8548d.m25354a(C8548d.C8550b.f30453a).serialize((AbstractC8547c) c9184m.f31618h, jsonGenerator);
            }
            if (c9184m.f31619i != null) {
                jsonGenerator.writeFieldName("path_lower");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9184m.f31619i, jsonGenerator);
            }
            if (c9184m.f31621k != null) {
                jsonGenerator.writeFieldName("team_member_info");
                C8548d.m25353a((AbstractC8558e) C9125bo.C9126a.f31635a).serialize((AbstractC8558e) c9184m.f31621k, jsonGenerator);
            }
            if (c9184m.f31622l != null) {
                jsonGenerator.writeFieldName("content_owner_team_info");
                C8548d.m25353a((AbstractC8558e) C9329d.C9330a.f31962a).serialize((AbstractC8558e) c9184m.f31622l, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9184m deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24775a(jsonParser, z);
        }
    }

    public C9184m(String str, String str2, C9003ab c9003ab, Date date, Date date2, String str3, long j) {
        this(str, str2, c9003ab, date, date2, str3, j, null, null, null, null, null);
    }

    public C9184m(String str, String str2, C9003ab c9003ab, Date date, Date date2, String str3, long j, String str4, Date date3, String str5, C9125bo c9125bo, C9329d c9329d) {
        super(str, str2, c9003ab, str4, date3, str5, c9125bo, c9329d);
        if (date != null) {
            this.f31749a = C8636d.m25221a(date);
            if (date2 == null) {
                throw new IllegalArgumentException("Required value for 'serverModified' is null");
            }
            this.f31750b = C8636d.m25221a(date2);
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'rev' is null");
            }
            if (str3.length() < 9) {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", str3)) {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
            this.f31751c = str3;
            this.f31752d = j;
            return;
        }
        throw new IllegalArgumentException("Required value for 'clientModified' is null");
    }

    @Override // com.dropbox.core.p265v2.sharing.C9111bj
    /* renamed from: a */
    public final String mo24767a() {
        return C9185a.f31753a.serialize((C9185a) this, true);
    }

    @Override // com.dropbox.core.p265v2.sharing.C9111bj
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9184m c9184m = (C9184m) obj;
        if (this.f31615e != c9184m.f31615e && !this.f31615e.equals(c9184m.f31615e)) {
            return false;
        }
        if (this.f31617g != c9184m.f31617g && !this.f31617g.equals(c9184m.f31617g)) {
            return false;
        }
        if (this.f31620j != c9184m.f31620j && !this.f31620j.equals(c9184m.f31620j)) {
            return false;
        }
        Date date = this.f31749a;
        Date date2 = c9184m.f31749a;
        if (date != date2 && !date.equals(date2)) {
            return false;
        }
        Date date3 = this.f31750b;
        Date date4 = c9184m.f31750b;
        if (date3 != date4 && !date3.equals(date4)) {
            return false;
        }
        String str = this.f31751c;
        String str2 = c9184m.f31751c;
        if ((str != str2 && !str.equals(str2)) || this.f31752d != c9184m.f31752d) {
            return false;
        }
        if (this.f31616f != c9184m.f31616f && (this.f31616f == null || !this.f31616f.equals(c9184m.f31616f))) {
            return false;
        }
        if (this.f31618h != c9184m.f31618h && (this.f31618h == null || !this.f31618h.equals(c9184m.f31618h))) {
            return false;
        }
        if (this.f31619i != c9184m.f31619i && (this.f31619i == null || !this.f31619i.equals(c9184m.f31619i))) {
            return false;
        }
        if (this.f31621k != c9184m.f31621k && (this.f31621k == null || !this.f31621k.equals(c9184m.f31621k))) {
            return false;
        }
        if (this.f31622l == c9184m.f31622l) {
            return true;
        }
        return this.f31622l != null && this.f31622l.equals(c9184m.f31622l);
    }

    @Override // com.dropbox.core.p265v2.sharing.C9111bj
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31749a, this.f31750b, this.f31751c, Long.valueOf(this.f31752d)});
    }

    @Override // com.dropbox.core.p265v2.sharing.C9111bj
    public final String toString() {
        return C9185a.f31753a.serialize((C9185a) this, false);
    }
}
