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
import java.util.Arrays;
import java.util.Date;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/m.class */
public final class m extends bj {

    /* renamed from: a  reason: collision with root package name */
    protected final Date f18682a;

    /* renamed from: b  reason: collision with root package name */
    protected final Date f18683b;

    /* renamed from: c  reason: collision with root package name */
    protected final String f18684c;

    /* renamed from: d  reason: collision with root package name */
    protected final long f18685d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/m$a.class */
    public static final class a extends e<m> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18686a = new a();

        a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if ("file".equals(r0) != false) goto L_0x001b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.dropbox.core.v2.sharing.m a(com.fasterxml.jackson.core.JsonParser r16, boolean r17) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                Method dump skipped, instructions count: 620
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.sharing.m.a.a(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.sharing.m");
        }

        /* renamed from: a */
        public final void serialize(m mVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("file", jsonGenerator);
            jsonGenerator.writeFieldName("url");
            d.h.f17717a.serialize((d.h) mVar.e, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            d.h.f17717a.serialize((d.h) mVar.g, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            ab.a.f18449a.serialize((ab.a) mVar.j, jsonGenerator);
            jsonGenerator.writeFieldName("client_modified");
            d.b.f17711a.serialize((d.b) mVar.f18682a, jsonGenerator);
            jsonGenerator.writeFieldName("server_modified");
            d.b.f17711a.serialize((d.b) mVar.f18683b, jsonGenerator);
            jsonGenerator.writeFieldName("rev");
            d.h.f17717a.serialize((d.h) mVar.f18684c, jsonGenerator);
            jsonGenerator.writeFieldName("size");
            d.e.f17714a.serialize((d.e) Long.valueOf(mVar.f18685d), jsonGenerator);
            if (mVar.f != null) {
                jsonGenerator.writeFieldName("id");
                d.a(d.h.f17717a).serialize((c) mVar.f, jsonGenerator);
            }
            if (mVar.h != null) {
                jsonGenerator.writeFieldName("expires");
                d.a(d.b.f17711a).serialize((c) mVar.h, jsonGenerator);
            }
            if (mVar.i != null) {
                jsonGenerator.writeFieldName("path_lower");
                d.a(d.h.f17717a).serialize((c) mVar.i, jsonGenerator);
            }
            if (mVar.k != null) {
                jsonGenerator.writeFieldName("team_member_info");
                d.a((e) bo.a.f18602a).serialize((e) mVar.k, jsonGenerator);
            }
            if (mVar.l != null) {
                jsonGenerator.writeFieldName("content_owner_team_info");
                d.a((e) d.a.f18869a).serialize((e) mVar.l, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ m deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }
    }

    public m(String str, String str2, ab abVar, Date date, Date date2, String str3, long j) {
        this(str, str2, abVar, date, date2, str3, j, null, null, null, null, null);
    }

    public m(String str, String str2, ab abVar, Date date, Date date2, String str3, long j, String str4, Date date3, String str5, bo boVar, com.dropbox.core.v2.users.d dVar) {
        super(str, str2, abVar, str4, date3, str5, boVar, dVar);
        if (date != null) {
            this.f18682a = com.dropbox.core.util.d.a(date);
            if (date2 != null) {
                this.f18683b = com.dropbox.core.util.d.a(date2);
                if (str3 == null) {
                    throw new IllegalArgumentException("Required value for 'rev' is null");
                } else if (str3.length() < 9) {
                    throw new IllegalArgumentException("String 'rev' is shorter than 9");
                } else if (Pattern.matches("[0-9a-f]+", str3)) {
                    this.f18684c = str3;
                    this.f18685d = j;
                } else {
                    throw new IllegalArgumentException("String 'rev' does not match pattern");
                }
            } else {
                throw new IllegalArgumentException("Required value for 'serverModified' is null");
            }
        } else {
            throw new IllegalArgumentException("Required value for 'clientModified' is null");
        }
    }

    @Override // com.dropbox.core.v2.sharing.bj
    public final String a() {
        return a.f18686a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.sharing.bj
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        m mVar = (m) obj;
        if (this.e != mVar.e && !this.e.equals(mVar.e)) {
            return false;
        }
        if (this.g != mVar.g && !this.g.equals(mVar.g)) {
            return false;
        }
        if (this.j != mVar.j && !this.j.equals(mVar.j)) {
            return false;
        }
        Date date = this.f18682a;
        Date date2 = mVar.f18682a;
        if (date != date2 && !date.equals(date2)) {
            return false;
        }
        Date date3 = this.f18683b;
        Date date4 = mVar.f18683b;
        if (date3 != date4 && !date3.equals(date4)) {
            return false;
        }
        String str = this.f18684c;
        String str2 = mVar.f18684c;
        if ((str != str2 && !str.equals(str2)) || this.f18685d != mVar.f18685d) {
            return false;
        }
        if (this.f != mVar.f && (this.f == null || !this.f.equals(mVar.f))) {
            return false;
        }
        if (this.h != mVar.h && (this.h == null || !this.h.equals(mVar.h))) {
            return false;
        }
        if (this.i != mVar.i && (this.i == null || !this.i.equals(mVar.i))) {
            return false;
        }
        if (this.k != mVar.k && (this.k == null || !this.k.equals(mVar.k))) {
            return false;
        }
        if (this.l != mVar.l) {
            return this.l != null && this.l.equals(mVar.l);
        }
        return true;
    }

    @Override // com.dropbox.core.v2.sharing.bj
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18682a, this.f18683b, this.f18684c, Long.valueOf(this.f18685d)});
    }

    @Override // com.dropbox.core.v2.sharing.bj
    public final String toString() {
        return a.f18686a.serialize((a) this, false);
    }
}
