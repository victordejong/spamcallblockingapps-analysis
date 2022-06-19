package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9001aa;
import com.dropbox.core.p265v2.sharing.C9171h;
import com.dropbox.core.p265v2.sharing.C9173i;
import com.dropbox.core.p265v2.sharing.EnumC9085b;
import com.dropbox.core.p265v2.sharing.EnumC9218z;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
/* renamed from: com.dropbox.core.v2.sharing.ba */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ba.class */
public final class C9088ba extends C9090bb {

    /* renamed from: a */
    protected final C9171h f31570a;

    /* renamed from: b */
    protected final String f31571b;

    /* renamed from: com.dropbox.core.v2.sharing.ba$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ba$a.class */
    public static final class C9089a extends AbstractC8558e<C9088ba> {

        /* renamed from: a */
        public static final C9089a f31572a = new C9089a();

        C9089a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9088ba deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            List list = null;
            EnumC9218z enumC9218z = null;
            List list2 = null;
            String str2 = null;
            EnumC9085b enumC9085b = null;
            C9173i c9173i = null;
            Date date = null;
            C9171h c9171h = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("audience_options".equals(currentName)) {
                    list = (List) C8548d.m25352b(EnumC9218z.C9220a.f31798a).deserialize(jsonParser);
                } else if ("current_audience".equals(currentName)) {
                    EnumC9218z.C9220a c9220a = EnumC9218z.C9220a.f31798a;
                    enumC9218z = EnumC9218z.C9220a.m24750a(jsonParser);
                } else if ("link_permissions".equals(currentName)) {
                    list2 = (List) C8548d.m25352b(C9001aa.C9002a.f31401a).deserialize(jsonParser);
                } else if ("password_protected".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("url".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("access_level".equals(currentName)) {
                    enumC9085b = (EnumC9085b) C8548d.m25354a(EnumC9085b.C9087a.f31569a).deserialize(jsonParser);
                } else if ("audience_restricting_shared_folder".equals(currentName)) {
                    c9173i = (C9173i) C8548d.m25353a((AbstractC8558e) C9173i.C9174a.f31734a).deserialize(jsonParser);
                } else if ("expiry".equals(currentName)) {
                    date = (Date) C8548d.m25354a(C8548d.C8550b.f30453a).deserialize(jsonParser);
                } else if ("audience_exceptions".equals(currentName)) {
                    c9171h = (C9171h) C8548d.m25353a((AbstractC8558e) C9171h.C9172a.f31730a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"audience_options\" missing.");
            }
            if (enumC9218z == null) {
                throw new JsonParseException(jsonParser, "Required field \"current_audience\" missing.");
            }
            if (list2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"link_permissions\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"password_protected\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"url\" missing.");
            }
            C9088ba c9088ba = new C9088ba(list, enumC9218z, list2, bool.booleanValue(), str2, enumC9085b, c9173i, date, c9171h);
            if (!z) {
                expectEndObject(jsonParser);
            }
            c9088ba.mo24858a();
            C8546b.m25355a(c9088ba);
            return c9088ba;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9088ba c9088ba, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9088ba c9088ba2 = c9088ba;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("audience_options");
            C8548d.m25352b(EnumC9218z.C9220a.f31798a).serialize((AbstractC8547c) c9088ba2.f31574d, jsonGenerator);
            jsonGenerator.writeFieldName("current_audience");
            EnumC9218z.C9220a c9220a = EnumC9218z.C9220a.f31798a;
            EnumC9218z.C9220a.m24751a(c9088ba2.f31576f, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            C8548d.m25352b(C9001aa.C9002a.f31401a).serialize((AbstractC8547c) c9088ba2.f31578h, jsonGenerator);
            jsonGenerator.writeFieldName("password_protected");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c9088ba2.f31579i), jsonGenerator);
            jsonGenerator.writeFieldName("url");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9088ba2.f31571b, jsonGenerator);
            if (c9088ba2.f31573c != null) {
                jsonGenerator.writeFieldName("access_level");
                C8548d.m25354a(EnumC9085b.C9087a.f31569a).serialize((AbstractC8547c) c9088ba2.f31573c, jsonGenerator);
            }
            if (c9088ba2.f31575e != null) {
                jsonGenerator.writeFieldName("audience_restricting_shared_folder");
                C8548d.m25353a((AbstractC8558e) C9173i.C9174a.f31734a).serialize((AbstractC8558e) c9088ba2.f31575e, jsonGenerator);
            }
            if (c9088ba2.f31577g != null) {
                jsonGenerator.writeFieldName("expiry");
                C8548d.m25354a(C8548d.C8550b.f30453a).serialize((AbstractC8547c) c9088ba2.f31577g, jsonGenerator);
            }
            if (c9088ba2.f31570a != null) {
                jsonGenerator.writeFieldName("audience_exceptions");
                C8548d.m25353a((AbstractC8558e) C9171h.C9172a.f31730a).serialize((AbstractC8558e) c9088ba2.f31570a, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9088ba(List<EnumC9218z> list, EnumC9218z enumC9218z, List<C9001aa> list2, boolean z, String str) {
        this(list, enumC9218z, list2, z, str, null, null, null, null);
    }

    public C9088ba(List<EnumC9218z> list, EnumC9218z enumC9218z, List<C9001aa> list2, boolean z, String str, EnumC9085b enumC9085b, C9173i c9173i, Date date, C9171h c9171h) {
        super(list, enumC9218z, list2, z, enumC9085b, c9173i, date);
        this.f31570a = c9171h;
        if (str != null) {
            this.f31571b = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'url' is null");
    }

    @Override // com.dropbox.core.p265v2.sharing.C9090bb
    /* renamed from: a */
    public final String mo24858a() {
        return C9089a.f31572a.serialize((C9089a) this, true);
    }

    @Override // com.dropbox.core.p265v2.sharing.C9090bb
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9088ba c9088ba = (C9088ba) obj;
        if (this.f31574d != c9088ba.f31574d && !this.f31574d.equals(c9088ba.f31574d)) {
            return false;
        }
        if (this.f31576f != c9088ba.f31576f && !this.f31576f.equals(c9088ba.f31576f)) {
            return false;
        }
        if ((this.f31578h != c9088ba.f31578h && !this.f31578h.equals(c9088ba.f31578h)) || this.f31579i != c9088ba.f31579i) {
            return false;
        }
        String str = this.f31571b;
        String str2 = c9088ba.f31571b;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        if (this.f31573c != c9088ba.f31573c && (this.f31573c == null || !this.f31573c.equals(c9088ba.f31573c))) {
            return false;
        }
        if (this.f31575e != c9088ba.f31575e && (this.f31575e == null || !this.f31575e.equals(c9088ba.f31575e))) {
            return false;
        }
        if (this.f31577g != c9088ba.f31577g && (this.f31577g == null || !this.f31577g.equals(c9088ba.f31577g))) {
            return false;
        }
        C9171h c9171h = this.f31570a;
        C9171h c9171h2 = c9088ba.f31570a;
        if (c9171h == c9171h2) {
            return true;
        }
        return c9171h != null && c9171h.equals(c9171h2);
    }

    @Override // com.dropbox.core.p265v2.sharing.C9090bb
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31570a, this.f31571b});
    }

    @Override // com.dropbox.core.p265v2.sharing.C9090bb
    public final String toString() {
        return C9089a.f31572a.serialize((C9089a) this, false);
    }
}
