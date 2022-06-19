package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9088ba;
import com.dropbox.core.p265v2.sharing.C9195q;
import com.dropbox.core.p265v2.sharing.C9197r;
import com.dropbox.core.p265v2.sharing.EnumC8998a;
import com.dropbox.core.p265v2.sharing.EnumC9085b;
import com.dropbox.core.p265v2.users.C9329d;
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
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.sharing.be */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/be.class */
public final class C9099be extends C9101bf {

    /* renamed from: a */
    protected final C9088ba f31590a;

    /* renamed from: b */
    protected final String f31591b;

    /* renamed from: c */
    protected final List<C9195q> f31592c;

    /* renamed from: d */
    protected final C9197r f31593d;

    /* renamed from: e */
    protected final String f31594e;

    /* renamed from: f */
    protected final String f31595f;

    /* renamed from: g */
    protected final Date f31596g;

    /* renamed from: h */
    protected final EnumC8998a f31597h;

    /* renamed from: com.dropbox.core.v2.sharing.be$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/be$a.class */
    public static final class C9100a extends AbstractC8558e<C9099be> {

        /* renamed from: a */
        public static final C9100a f31598a = new C9100a();

        C9100a() {
        }

        /* renamed from: a */
        public static C9099be m24849a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            EnumC8998a enumC8998a = EnumC8998a.INHERIT;
            EnumC9085b enumC9085b = null;
            String str2 = null;
            C9197r c9197r = null;
            String str3 = null;
            String str4 = null;
            Date date = null;
            List list = null;
            C9329d c9329d = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            C9088ba c9088ba = null;
            List list2 = null;
            Boolean bool2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_type".equals(currentName)) {
                    EnumC9085b.C9087a c9087a = EnumC9085b.C9087a.f31569a;
                    enumC9085b = EnumC9085b.C9087a.m24859a(jsonParser);
                } else if ("is_inside_team_folder".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("is_team_folder".equals(currentName)) {
                    bool2 = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("policy".equals(currentName)) {
                    c9197r = C9197r.C9198a.f31774a.deserialize(jsonParser);
                } else if ("preview_url".equals(currentName)) {
                    str3 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("shared_folder_id".equals(currentName)) {
                    str4 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("time_invited".equals(currentName)) {
                    date = C8548d.C8550b.f30453a.deserialize(jsonParser);
                } else if ("owner_display_names".equals(currentName)) {
                    list = (List) C8548d.m25354a(C8548d.m25352b(C8548d.C8556h.f30459a)).deserialize(jsonParser);
                } else if ("owner_team".equals(currentName)) {
                    c9329d = (C9329d) C8548d.m25353a((AbstractC8558e) C9329d.C9330a.f31962a).deserialize(jsonParser);
                } else if ("parent_shared_folder_id".equals(currentName)) {
                    str5 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else if ("path_lower".equals(currentName)) {
                    str6 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else if ("parent_folder_name".equals(currentName)) {
                    str7 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else if ("link_metadata".equals(currentName)) {
                    c9088ba = (C9088ba) C8548d.m25353a((AbstractC8558e) C9088ba.C9089a.f31572a).deserialize(jsonParser);
                } else if ("permissions".equals(currentName)) {
                    list2 = (List) C8548d.m25354a(C8548d.m25352b(C9195q.C9196a.f31768a)).deserialize(jsonParser);
                } else if ("access_inheritance".equals(currentName)) {
                    EnumC8998a.C9000a c9000a = EnumC8998a.C9000a.f31397a;
                    enumC8998a = EnumC8998a.C9000a.m24922a(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (enumC9085b == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_inside_team_folder\" missing.");
            }
            if (bool2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_team_folder\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (c9197r == null) {
                throw new JsonParseException(jsonParser, "Required field \"policy\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"preview_url\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"time_invited\" missing.");
            }
            C9099be c9099be = new C9099be(enumC9085b, bool.booleanValue(), bool2.booleanValue(), str2, c9197r, str3, str4, date, list, c9329d, str5, str6, str7, c9088ba, list2, enumC8998a);
            if (!z) {
                expectEndObject(jsonParser);
            }
            c9099be.mo24848a();
            C8546b.m25355a(c9099be);
            return c9099be;
        }

        /* renamed from: a */
        public static void m24850a(C9099be c9099be, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_type");
            EnumC9085b.C9087a c9087a = EnumC9085b.C9087a.f31569a;
            EnumC9085b.C9087a.m24860a(c9099be.f31599i, jsonGenerator);
            jsonGenerator.writeFieldName("is_inside_team_folder");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c9099be.f31600j), jsonGenerator);
            jsonGenerator.writeFieldName("is_team_folder");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c9099be.f31601k), jsonGenerator);
            jsonGenerator.writeFieldName("name");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9099be.f31591b, jsonGenerator);
            jsonGenerator.writeFieldName("policy");
            C9197r.C9198a.f31774a.serialize((C9197r.C9198a) c9099be.f31593d, jsonGenerator);
            jsonGenerator.writeFieldName("preview_url");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9099be.f31594e, jsonGenerator);
            jsonGenerator.writeFieldName("shared_folder_id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9099be.f31595f, jsonGenerator);
            jsonGenerator.writeFieldName("time_invited");
            C8548d.C8550b.f30453a.serialize((C8548d.C8550b) c9099be.f31596g, jsonGenerator);
            if (c9099be.f31602l != null) {
                jsonGenerator.writeFieldName("owner_display_names");
                C8548d.m25354a(C8548d.m25352b(C8548d.C8556h.f30459a)).serialize((AbstractC8547c) c9099be.f31602l, jsonGenerator);
            }
            if (c9099be.f31603m != null) {
                jsonGenerator.writeFieldName("owner_team");
                C8548d.m25353a((AbstractC8558e) C9329d.C9330a.f31962a).serialize((AbstractC8558e) c9099be.f31603m, jsonGenerator);
            }
            if (c9099be.f31604n != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9099be.f31604n, jsonGenerator);
            }
            if (c9099be.f31605o != null) {
                jsonGenerator.writeFieldName("path_lower");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9099be.f31605o, jsonGenerator);
            }
            if (c9099be.f31606p != null) {
                jsonGenerator.writeFieldName("parent_folder_name");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9099be.f31606p, jsonGenerator);
            }
            if (c9099be.f31590a != null) {
                jsonGenerator.writeFieldName("link_metadata");
                C8548d.m25353a((AbstractC8558e) C9088ba.C9089a.f31572a).serialize((AbstractC8558e) c9099be.f31590a, jsonGenerator);
            }
            if (c9099be.f31592c != null) {
                jsonGenerator.writeFieldName("permissions");
                C8548d.m25354a(C8548d.m25352b(C9195q.C9196a.f31768a)).serialize((AbstractC8547c) c9099be.f31592c, jsonGenerator);
            }
            jsonGenerator.writeFieldName("access_inheritance");
            EnumC8998a.C9000a c9000a = EnumC8998a.C9000a.f31397a;
            EnumC8998a.C9000a.m24923a(c9099be.f31597h, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9099be deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m24849a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9099be c9099be, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            m24850a(c9099be, jsonGenerator, z);
        }
    }

    public C9099be(EnumC9085b enumC9085b, boolean z, boolean z2, String str, C9197r c9197r, String str2, String str3, Date date) {
        this(enumC9085b, z, z2, str, c9197r, str2, str3, date, null, null, null, null, null, null, null, EnumC8998a.INHERIT);
    }

    public C9099be(EnumC9085b enumC9085b, boolean z, boolean z2, String str, C9197r c9197r, String str2, String str3, Date date, List<String> list, C9329d c9329d, String str4, String str5, String str6, C9088ba c9088ba, List<C9195q> list2, EnumC8998a enumC8998a) {
        super(enumC9085b, z, z2, list, c9329d, str4, str5, str6);
        this.f31590a = c9088ba;
        if (str != null) {
            this.f31591b = str;
            if (list2 != null) {
                for (C9195q c9195q : list2) {
                    if (c9195q == null) {
                        throw new IllegalArgumentException("An item in list 'permissions' is null");
                    }
                }
            }
            this.f31592c = list2;
            if (c9197r == null) {
                throw new IllegalArgumentException("Required value for 'policy' is null");
            }
            this.f31593d = c9197r;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'previewUrl' is null");
            }
            this.f31594e = str2;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str3)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.f31595f = str3;
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'timeInvited' is null");
            }
            this.f31596g = C8636d.m25221a(date);
            if (enumC8998a == null) {
                throw new IllegalArgumentException("Required value for 'accessInheritance' is null");
            }
            this.f31597h = enumC8998a;
            return;
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    @Override // com.dropbox.core.p265v2.sharing.C9101bf
    /* renamed from: a */
    public final String mo24848a() {
        return C9100a.f31598a.serialize((C9100a) this, true);
    }

    @Override // com.dropbox.core.p265v2.sharing.C9101bf
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9099be c9099be = (C9099be) obj;
        if ((this.f31599i != c9099be.f31599i && !this.f31599i.equals(c9099be.f31599i)) || this.f31600j != c9099be.f31600j || this.f31601k != c9099be.f31601k) {
            return false;
        }
        String str = this.f31591b;
        String str2 = c9099be.f31591b;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        C9197r c9197r = this.f31593d;
        C9197r c9197r2 = c9099be.f31593d;
        if (c9197r != c9197r2 && !c9197r.equals(c9197r2)) {
            return false;
        }
        String str3 = this.f31594e;
        String str4 = c9099be.f31594e;
        if (str3 != str4 && !str3.equals(str4)) {
            return false;
        }
        String str5 = this.f31595f;
        String str6 = c9099be.f31595f;
        if (str5 != str6 && !str5.equals(str6)) {
            return false;
        }
        Date date = this.f31596g;
        Date date2 = c9099be.f31596g;
        if (date != date2 && !date.equals(date2)) {
            return false;
        }
        if (this.f31602l != c9099be.f31602l && (this.f31602l == null || !this.f31602l.equals(c9099be.f31602l))) {
            return false;
        }
        if (this.f31603m != c9099be.f31603m && (this.f31603m == null || !this.f31603m.equals(c9099be.f31603m))) {
            return false;
        }
        if (this.f31604n != c9099be.f31604n && (this.f31604n == null || !this.f31604n.equals(c9099be.f31604n))) {
            return false;
        }
        if (this.f31605o != c9099be.f31605o && (this.f31605o == null || !this.f31605o.equals(c9099be.f31605o))) {
            return false;
        }
        if (this.f31606p != c9099be.f31606p && (this.f31606p == null || !this.f31606p.equals(c9099be.f31606p))) {
            return false;
        }
        C9088ba c9088ba = this.f31590a;
        C9088ba c9088ba2 = c9099be.f31590a;
        if (c9088ba != c9088ba2 && (c9088ba == null || !c9088ba.equals(c9088ba2))) {
            return false;
        }
        List<C9195q> list = this.f31592c;
        List<C9195q> list2 = c9099be.f31592c;
        if (list != list2 && (list == null || !list.equals(list2))) {
            return false;
        }
        EnumC8998a enumC8998a = this.f31597h;
        EnumC8998a enumC8998a2 = c9099be.f31597h;
        return enumC8998a == enumC8998a2 || enumC8998a.equals(enumC8998a2);
    }

    @Override // com.dropbox.core.p265v2.sharing.C9101bf
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31590a, this.f31591b, this.f31592c, this.f31593d, this.f31594e, this.f31595f, this.f31596g, this.f31597h});
    }

    @Override // com.dropbox.core.p265v2.sharing.C9101bf
    public final String toString() {
        return C9100a.f31598a.serialize((C9100a) this, false);
    }
}
