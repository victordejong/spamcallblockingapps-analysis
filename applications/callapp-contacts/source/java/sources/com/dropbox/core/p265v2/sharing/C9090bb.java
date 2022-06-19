package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9001aa;
import com.dropbox.core.p265v2.sharing.C9173i;
import com.dropbox.core.p265v2.sharing.EnumC9085b;
import com.dropbox.core.p265v2.sharing.EnumC9218z;
import com.dropbox.core.util.C8636d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
/* renamed from: com.dropbox.core.v2.sharing.bb */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bb.class */
public class C9090bb {

    /* renamed from: c */
    protected final EnumC9085b f31573c;

    /* renamed from: d */
    protected final List<EnumC9218z> f31574d;

    /* renamed from: e */
    protected final C9173i f31575e;

    /* renamed from: f */
    protected final EnumC9218z f31576f;

    /* renamed from: g */
    protected final Date f31577g;

    /* renamed from: h */
    protected final List<C9001aa> f31578h;

    /* renamed from: i */
    protected final boolean f31579i;

    /* renamed from: com.dropbox.core.v2.sharing.bb$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bb$a.class */
    public static final class C9091a extends AbstractC8558e<C9090bb> {

        /* renamed from: a */
        public static final C9091a f31580a = new C9091a();

        private C9091a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9090bb deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            EnumC9085b enumC9085b = null;
            C9173i c9173i = null;
            Date date = null;
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
                } else if ("access_level".equals(currentName)) {
                    enumC9085b = (EnumC9085b) C8548d.m25354a(EnumC9085b.C9087a.f31569a).deserialize(jsonParser);
                } else if ("audience_restricting_shared_folder".equals(currentName)) {
                    c9173i = (C9173i) C8548d.m25353a((AbstractC8558e) C9173i.C9174a.f31734a).deserialize(jsonParser);
                } else if ("expiry".equals(currentName)) {
                    date = (Date) C8548d.m25354a(C8548d.C8550b.f30453a).deserialize(jsonParser);
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
            C9090bb c9090bb = new C9090bb(list, enumC9218z, list2, bool.booleanValue(), enumC9085b, c9173i, date);
            if (!z) {
                expectEndObject(jsonParser);
            }
            c9090bb.mo24858a();
            C8546b.m25355a(c9090bb);
            return c9090bb;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9090bb c9090bb, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9090bb c9090bb2 = c9090bb;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("audience_options");
            C8548d.m25352b(EnumC9218z.C9220a.f31798a).serialize((AbstractC8547c) c9090bb2.f31574d, jsonGenerator);
            jsonGenerator.writeFieldName("current_audience");
            EnumC9218z.C9220a c9220a = EnumC9218z.C9220a.f31798a;
            EnumC9218z.C9220a.m24751a(c9090bb2.f31576f, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            C8548d.m25352b(C9001aa.C9002a.f31401a).serialize((AbstractC8547c) c9090bb2.f31578h, jsonGenerator);
            jsonGenerator.writeFieldName("password_protected");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c9090bb2.f31579i), jsonGenerator);
            if (c9090bb2.f31573c != null) {
                jsonGenerator.writeFieldName("access_level");
                C8548d.m25354a(EnumC9085b.C9087a.f31569a).serialize((AbstractC8547c) c9090bb2.f31573c, jsonGenerator);
            }
            if (c9090bb2.f31575e != null) {
                jsonGenerator.writeFieldName("audience_restricting_shared_folder");
                C8548d.m25353a((AbstractC8558e) C9173i.C9174a.f31734a).serialize((AbstractC8558e) c9090bb2.f31575e, jsonGenerator);
            }
            if (c9090bb2.f31577g != null) {
                jsonGenerator.writeFieldName("expiry");
                C8548d.m25354a(C8548d.C8550b.f30453a).serialize((AbstractC8547c) c9090bb2.f31577g, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9090bb(List<EnumC9218z> list, EnumC9218z enumC9218z, List<C9001aa> list2, boolean z) {
        this(list, enumC9218z, list2, z, null, null, null);
    }

    public C9090bb(List<EnumC9218z> list, EnumC9218z enumC9218z, List<C9001aa> list2, boolean z, EnumC9085b enumC9085b, C9173i c9173i, Date date) {
        this.f31573c = enumC9085b;
        if (list != null) {
            for (EnumC9218z enumC9218z2 : list) {
                if (enumC9218z2 == null) {
                    throw new IllegalArgumentException("An item in list 'audienceOptions' is null");
                }
            }
            this.f31574d = list;
            this.f31575e = c9173i;
            if (enumC9218z == null) {
                throw new IllegalArgumentException("Required value for 'currentAudience' is null");
            }
            this.f31576f = enumC9218z;
            this.f31577g = C8636d.m25221a(date);
            if (list2 == null) {
                throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
            }
            for (C9001aa c9001aa : list2) {
                if (c9001aa == null) {
                    throw new IllegalArgumentException("An item in list 'linkPermissions' is null");
                }
            }
            this.f31578h = list2;
            this.f31579i = z;
            return;
        }
        throw new IllegalArgumentException("Required value for 'audienceOptions' is null");
    }

    /* renamed from: a */
    public String mo24858a() {
        return C9091a.f31580a.serialize((C9091a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9090bb c9090bb = (C9090bb) obj;
        List<EnumC9218z> list = this.f31574d;
        List<EnumC9218z> list2 = c9090bb.f31574d;
        if (list != list2 && !list.equals(list2)) {
            return false;
        }
        EnumC9218z enumC9218z = this.f31576f;
        EnumC9218z enumC9218z2 = c9090bb.f31576f;
        if (enumC9218z != enumC9218z2 && !enumC9218z.equals(enumC9218z2)) {
            return false;
        }
        List<C9001aa> list3 = this.f31578h;
        List<C9001aa> list4 = c9090bb.f31578h;
        if ((list3 != list4 && !list3.equals(list4)) || this.f31579i != c9090bb.f31579i) {
            return false;
        }
        EnumC9085b enumC9085b = this.f31573c;
        EnumC9085b enumC9085b2 = c9090bb.f31573c;
        if (enumC9085b != enumC9085b2 && (enumC9085b == null || !enumC9085b.equals(enumC9085b2))) {
            return false;
        }
        C9173i c9173i = this.f31575e;
        C9173i c9173i2 = c9090bb.f31575e;
        if (c9173i != c9173i2 && (c9173i == null || !c9173i.equals(c9173i2))) {
            return false;
        }
        Date date = this.f31577g;
        Date date2 = c9090bb.f31577g;
        if (date == date2) {
            return true;
        }
        return date != null && date.equals(date2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31573c, this.f31574d, this.f31575e, this.f31576f, this.f31577g, this.f31578h, Boolean.valueOf(this.f31579i)});
    }

    public String toString() {
        return C9091a.f31580a.serialize((C9091a) this, false);
    }
}
