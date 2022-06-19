package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9003ab;
import com.dropbox.core.p265v2.sharing.C9125bo;
import com.dropbox.core.p265v2.sharing.C9184m;
import com.dropbox.core.p265v2.sharing.C9193p;
import com.dropbox.core.p265v2.users.C9329d;
import com.dropbox.core.util.C8636d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
/* renamed from: com.dropbox.core.v2.sharing.bj */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bj.class */
public class C9111bj {

    /* renamed from: e */
    protected final String f31615e;

    /* renamed from: f */
    protected final String f31616f;

    /* renamed from: g */
    protected final String f31617g;

    /* renamed from: h */
    protected final Date f31618h;

    /* renamed from: i */
    protected final String f31619i;

    /* renamed from: j */
    protected final C9003ab f31620j;

    /* renamed from: k */
    protected final C9125bo f31621k;

    /* renamed from: l */
    protected final C9329d f31622l;

    /* renamed from: com.dropbox.core.v2.sharing.bj$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bj$a.class */
    public static final class C9112a extends AbstractC8558e<C9111bj> {

        /* renamed from: a */
        public static final C9112a f31623a = new C9112a();

        C9112a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
            if ("".equals(r0) != false) goto L6;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static com.dropbox.core.p265v2.sharing.C9111bj m24845a(com.fasterxml.jackson.core.JsonParser r11, boolean r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 483
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p265v2.sharing.C9111bj.C9112a.m24845a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.sharing.bj");
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9111bj deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24845a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9111bj c9111bj, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9111bj c9111bj2 = c9111bj;
            if (c9111bj2 instanceof C9184m) {
                C9184m.C9185a.f31753a.serialize((C9184m) c9111bj2, jsonGenerator, z);
            } else if (c9111bj2 instanceof C9193p) {
                C9193p.C9194a.f31764a.serialize((C9193p) c9111bj2, jsonGenerator, z);
            } else {
                if (!z) {
                    jsonGenerator.writeStartObject();
                }
                jsonGenerator.writeFieldName("url");
                C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9111bj2.f31615e, jsonGenerator);
                jsonGenerator.writeFieldName("name");
                C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9111bj2.f31617g, jsonGenerator);
                jsonGenerator.writeFieldName("link_permissions");
                C9003ab.C9004a.f31408a.serialize((C9003ab.C9004a) c9111bj2.f31620j, jsonGenerator);
                if (c9111bj2.f31616f != null) {
                    jsonGenerator.writeFieldName("id");
                    C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9111bj2.f31616f, jsonGenerator);
                }
                if (c9111bj2.f31618h != null) {
                    jsonGenerator.writeFieldName("expires");
                    C8548d.m25354a(C8548d.C8550b.f30453a).serialize((AbstractC8547c) c9111bj2.f31618h, jsonGenerator);
                }
                if (c9111bj2.f31619i != null) {
                    jsonGenerator.writeFieldName("path_lower");
                    C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9111bj2.f31619i, jsonGenerator);
                }
                if (c9111bj2.f31621k != null) {
                    jsonGenerator.writeFieldName("team_member_info");
                    C8548d.m25353a((AbstractC8558e) C9125bo.C9126a.f31635a).serialize((AbstractC8558e) c9111bj2.f31621k, jsonGenerator);
                }
                if (c9111bj2.f31622l != null) {
                    jsonGenerator.writeFieldName("content_owner_team_info");
                    C8548d.m25353a((AbstractC8558e) C9329d.C9330a.f31962a).serialize((AbstractC8558e) c9111bj2.f31622l, jsonGenerator);
                }
                if (z) {
                    return;
                }
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9111bj(String str, String str2, C9003ab c9003ab) {
        this(str, str2, c9003ab, null, null, null, null, null);
    }

    public C9111bj(String str, String str2, C9003ab c9003ab, String str3, Date date, String str4, C9125bo c9125bo, C9329d c9329d) {
        if (str != null) {
            this.f31615e = str;
            if (str3 != null && str3.length() <= 0) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            this.f31616f = str3;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.f31617g = str2;
            this.f31618h = C8636d.m25221a(date);
            this.f31619i = str4;
            if (c9003ab == null) {
                throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
            }
            this.f31620j = c9003ab;
            this.f31621k = c9125bo;
            this.f31622l = c9329d;
            return;
        }
        throw new IllegalArgumentException("Required value for 'url' is null");
    }

    /* renamed from: a */
    public String mo24767a() {
        return C9112a.f31623a.serialize((C9112a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9111bj c9111bj = (C9111bj) obj;
        String str = this.f31615e;
        String str2 = c9111bj.f31615e;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f31617g;
        String str4 = c9111bj.f31617g;
        if (str3 != str4 && !str3.equals(str4)) {
            return false;
        }
        C9003ab c9003ab = this.f31620j;
        C9003ab c9003ab2 = c9111bj.f31620j;
        if (c9003ab != c9003ab2 && !c9003ab.equals(c9003ab2)) {
            return false;
        }
        String str5 = this.f31616f;
        String str6 = c9111bj.f31616f;
        if (str5 != str6 && (str5 == null || !str5.equals(str6))) {
            return false;
        }
        Date date = this.f31618h;
        Date date2 = c9111bj.f31618h;
        if (date != date2 && (date == null || !date.equals(date2))) {
            return false;
        }
        String str7 = this.f31619i;
        String str8 = c9111bj.f31619i;
        if (str7 != str8 && (str7 == null || !str7.equals(str8))) {
            return false;
        }
        C9125bo c9125bo = this.f31621k;
        C9125bo c9125bo2 = c9111bj.f31621k;
        if (c9125bo != c9125bo2 && (c9125bo == null || !c9125bo.equals(c9125bo2))) {
            return false;
        }
        C9329d c9329d = this.f31622l;
        C9329d c9329d2 = c9111bj.f31622l;
        if (c9329d == c9329d2) {
            return true;
        }
        return c9329d != null && c9329d.equals(c9329d2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31615e, this.f31616f, this.f31617g, this.f31618h, this.f31619i, this.f31620j, this.f31621k, this.f31622l});
    }

    public String toString() {
        return C9112a.f31623a.serialize((C9112a) this, false);
    }
}
