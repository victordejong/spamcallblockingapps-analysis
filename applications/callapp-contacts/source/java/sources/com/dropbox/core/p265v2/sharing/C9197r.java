package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.EnumC9033al;
import com.dropbox.core.p265v2.sharing.EnumC9113bk;
import com.dropbox.core.p265v2.sharing.EnumC9151bv;
import com.dropbox.core.p265v2.sharing.EnumC9154c;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.r */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/r.class */
public final class C9197r {

    /* renamed from: a */
    protected final EnumC9033al f31769a;

    /* renamed from: b */
    protected final EnumC9033al f31770b;

    /* renamed from: c */
    protected final EnumC9154c f31771c;

    /* renamed from: d */
    protected final EnumC9113bk f31772d;

    /* renamed from: e */
    protected final EnumC9151bv f31773e;

    /* renamed from: com.dropbox.core.v2.sharing.r$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/r$a.class */
    public static final class C9198a extends AbstractC8558e<C9197r> {

        /* renamed from: a */
        public static final C9198a f31774a = new C9198a();

        C9198a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9197r deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            EnumC9154c enumC9154c = null;
            EnumC9113bk enumC9113bk = null;
            EnumC9033al enumC9033al = null;
            EnumC9033al enumC9033al2 = null;
            EnumC9151bv enumC9151bv = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("acl_update_policy".equals(currentName)) {
                    EnumC9154c.C9156a c9156a = EnumC9154c.C9156a.f31690a;
                    enumC9154c = EnumC9154c.C9156a.m24812a(jsonParser);
                } else if ("shared_link_policy".equals(currentName)) {
                    EnumC9113bk.C9115a c9115a = EnumC9113bk.C9115a.f31625a;
                    enumC9113bk = EnumC9113bk.C9115a.m24843a(jsonParser);
                } else if ("member_policy".equals(currentName)) {
                    enumC9033al = (EnumC9033al) C8548d.m25354a(EnumC9033al.C9035a.f31451a).deserialize(jsonParser);
                } else if ("resolved_member_policy".equals(currentName)) {
                    enumC9033al2 = (EnumC9033al) C8548d.m25354a(EnumC9033al.C9035a.f31451a).deserialize(jsonParser);
                } else if ("viewer_info_policy".equals(currentName)) {
                    enumC9151bv = (EnumC9151bv) C8548d.m25354a(EnumC9151bv.C9153a.f31688a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (enumC9154c == null) {
                throw new JsonParseException(jsonParser, "Required field \"acl_update_policy\" missing.");
            }
            if (enumC9113bk == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_link_policy\" missing.");
            }
            C9197r c9197r = new C9197r(enumC9154c, enumC9113bk, enumC9033al, enumC9033al2, enumC9151bv);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31774a.serialize((C9198a) c9197r, true);
            C8546b.m25355a(c9197r);
            return c9197r;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9197r c9197r, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9197r c9197r2 = c9197r;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("acl_update_policy");
            EnumC9154c.C9156a c9156a = EnumC9154c.C9156a.f31690a;
            EnumC9154c.C9156a.m24813a(c9197r2.f31771c, jsonGenerator);
            jsonGenerator.writeFieldName("shared_link_policy");
            EnumC9113bk.C9115a c9115a = EnumC9113bk.C9115a.f31625a;
            EnumC9113bk.C9115a.m24844a(c9197r2.f31772d, jsonGenerator);
            if (c9197r2.f31769a != null) {
                jsonGenerator.writeFieldName("member_policy");
                C8548d.m25354a(EnumC9033al.C9035a.f31451a).serialize((AbstractC8547c) c9197r2.f31769a, jsonGenerator);
            }
            if (c9197r2.f31770b != null) {
                jsonGenerator.writeFieldName("resolved_member_policy");
                C8548d.m25354a(EnumC9033al.C9035a.f31451a).serialize((AbstractC8547c) c9197r2.f31770b, jsonGenerator);
            }
            if (c9197r2.f31773e != null) {
                jsonGenerator.writeFieldName("viewer_info_policy");
                C8548d.m25354a(EnumC9151bv.C9153a.f31688a).serialize((AbstractC8547c) c9197r2.f31773e, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9197r(EnumC9154c enumC9154c, EnumC9113bk enumC9113bk) {
        this(enumC9154c, enumC9113bk, null, null, null);
    }

    public C9197r(EnumC9154c enumC9154c, EnumC9113bk enumC9113bk, EnumC9033al enumC9033al, EnumC9033al enumC9033al2, EnumC9151bv enumC9151bv) {
        this.f31769a = enumC9033al;
        this.f31770b = enumC9033al2;
        if (enumC9154c != null) {
            this.f31771c = enumC9154c;
            if (enumC9113bk == null) {
                throw new IllegalArgumentException("Required value for 'sharedLinkPolicy' is null");
            }
            this.f31772d = enumC9113bk;
            this.f31773e = enumC9151bv;
            return;
        }
        throw new IllegalArgumentException("Required value for 'aclUpdatePolicy' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9197r c9197r = (C9197r) obj;
        EnumC9154c enumC9154c = this.f31771c;
        EnumC9154c enumC9154c2 = c9197r.f31771c;
        if (enumC9154c != enumC9154c2 && !enumC9154c.equals(enumC9154c2)) {
            return false;
        }
        EnumC9113bk enumC9113bk = this.f31772d;
        EnumC9113bk enumC9113bk2 = c9197r.f31772d;
        if (enumC9113bk != enumC9113bk2 && !enumC9113bk.equals(enumC9113bk2)) {
            return false;
        }
        EnumC9033al enumC9033al = this.f31769a;
        EnumC9033al enumC9033al2 = c9197r.f31769a;
        if (enumC9033al != enumC9033al2 && (enumC9033al == null || !enumC9033al.equals(enumC9033al2))) {
            return false;
        }
        EnumC9033al enumC9033al3 = this.f31770b;
        EnumC9033al enumC9033al4 = c9197r.f31770b;
        if (enumC9033al3 != enumC9033al4 && (enumC9033al3 == null || !enumC9033al3.equals(enumC9033al4))) {
            return false;
        }
        EnumC9151bv enumC9151bv = this.f31773e;
        EnumC9151bv enumC9151bv2 = c9197r.f31773e;
        if (enumC9151bv == enumC9151bv2) {
            return true;
        }
        return enumC9151bv != null && enumC9151bv.equals(enumC9151bv2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31769a, this.f31770b, this.f31771c, this.f31772d, this.f31773e});
    }

    public final String toString() {
        return C9198a.f31774a.serialize((C9198a) this, false);
    }
}
