package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.EnumC9085b;
import com.dropbox.core.p265v2.users.C9329d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.sharing.bf */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bf.class */
public class C9101bf {

    /* renamed from: i */
    protected final EnumC9085b f31599i;

    /* renamed from: j */
    protected final boolean f31600j;

    /* renamed from: k */
    protected final boolean f31601k;

    /* renamed from: l */
    protected final List<String> f31602l;

    /* renamed from: m */
    protected final C9329d f31603m;

    /* renamed from: n */
    protected final String f31604n;

    /* renamed from: o */
    protected final String f31605o;

    /* renamed from: p */
    protected final String f31606p;

    /* renamed from: com.dropbox.core.v2.sharing.bf$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bf$a.class */
    public static final class C9102a extends AbstractC8558e<C9101bf> {

        /* renamed from: a */
        public static final C9102a f31607a = new C9102a();

        private C9102a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9101bf deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list = null;
            C9329d c9329d = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            EnumC9085b enumC9085b = null;
            Boolean bool = null;
            Boolean bool2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_type".equals(currentName)) {
                    EnumC9085b.C9087a c9087a = EnumC9085b.C9087a.f31569a;
                    enumC9085b = EnumC9085b.C9087a.m24859a(jsonParser);
                } else if ("is_inside_team_folder".equals(currentName)) {
                    bool2 = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("is_team_folder".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("owner_display_names".equals(currentName)) {
                    list = (List) C8548d.m25354a(C8548d.m25352b(C8548d.C8556h.f30459a)).deserialize(jsonParser);
                } else if ("owner_team".equals(currentName)) {
                    c9329d = (C9329d) C8548d.m25353a((AbstractC8558e) C9329d.C9330a.f31962a).deserialize(jsonParser);
                } else if ("parent_shared_folder_id".equals(currentName)) {
                    str2 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else if ("path_lower".equals(currentName)) {
                    str3 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else if ("parent_folder_name".equals(currentName)) {
                    str4 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (enumC9085b == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
            }
            if (bool2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_inside_team_folder\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_team_folder\" missing.");
            }
            C9101bf c9101bf = new C9101bf(enumC9085b, bool2.booleanValue(), bool.booleanValue(), list, c9329d, str2, str3, str4);
            if (!z) {
                expectEndObject(jsonParser);
            }
            c9101bf.mo24848a();
            C8546b.m25355a(c9101bf);
            return c9101bf;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9101bf c9101bf, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9101bf c9101bf2 = c9101bf;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_type");
            EnumC9085b.C9087a c9087a = EnumC9085b.C9087a.f31569a;
            EnumC9085b.C9087a.m24860a(c9101bf2.f31599i, jsonGenerator);
            jsonGenerator.writeFieldName("is_inside_team_folder");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c9101bf2.f31600j), jsonGenerator);
            jsonGenerator.writeFieldName("is_team_folder");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c9101bf2.f31601k), jsonGenerator);
            if (c9101bf2.f31602l != null) {
                jsonGenerator.writeFieldName("owner_display_names");
                C8548d.m25354a(C8548d.m25352b(C8548d.C8556h.f30459a)).serialize((AbstractC8547c) c9101bf2.f31602l, jsonGenerator);
            }
            if (c9101bf2.f31603m != null) {
                jsonGenerator.writeFieldName("owner_team");
                C8548d.m25353a((AbstractC8558e) C9329d.C9330a.f31962a).serialize((AbstractC8558e) c9101bf2.f31603m, jsonGenerator);
            }
            if (c9101bf2.f31604n != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9101bf2.f31604n, jsonGenerator);
            }
            if (c9101bf2.f31605o != null) {
                jsonGenerator.writeFieldName("path_lower");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9101bf2.f31605o, jsonGenerator);
            }
            if (c9101bf2.f31606p != null) {
                jsonGenerator.writeFieldName("parent_folder_name");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c9101bf2.f31606p, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9101bf(EnumC9085b enumC9085b, boolean z, boolean z2) {
        this(enumC9085b, z, z2, null, null, null, null, null);
    }

    public C9101bf(EnumC9085b enumC9085b, boolean z, boolean z2, List<String> list, C9329d c9329d, String str, String str2, String str3) {
        if (enumC9085b != null) {
            this.f31599i = enumC9085b;
            this.f31600j = z;
            this.f31601k = z2;
            if (list != null) {
                for (String str4 : list) {
                    if (str4 == null) {
                        throw new IllegalArgumentException("An item in list 'ownerDisplayNames' is null");
                    }
                }
            }
            this.f31602l = list;
            this.f31603m = c9329d;
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            this.f31604n = str;
            this.f31605o = str2;
            this.f31606p = str3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'accessType' is null");
    }

    /* renamed from: a */
    public String mo24848a() {
        return C9102a.f31607a.serialize((C9102a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9101bf c9101bf = (C9101bf) obj;
        EnumC9085b enumC9085b = this.f31599i;
        EnumC9085b enumC9085b2 = c9101bf.f31599i;
        if ((enumC9085b != enumC9085b2 && !enumC9085b.equals(enumC9085b2)) || this.f31600j != c9101bf.f31600j || this.f31601k != c9101bf.f31601k) {
            return false;
        }
        List<String> list = this.f31602l;
        List<String> list2 = c9101bf.f31602l;
        if (list != list2 && (list == null || !list.equals(list2))) {
            return false;
        }
        C9329d c9329d = this.f31603m;
        C9329d c9329d2 = c9101bf.f31603m;
        if (c9329d != c9329d2 && (c9329d == null || !c9329d.equals(c9329d2))) {
            return false;
        }
        String str = this.f31604n;
        String str2 = c9101bf.f31604n;
        if (str != str2 && (str == null || !str.equals(str2))) {
            return false;
        }
        String str3 = this.f31605o;
        String str4 = c9101bf.f31605o;
        if (str3 != str4 && (str3 == null || !str3.equals(str4))) {
            return false;
        }
        String str5 = this.f31606p;
        String str6 = c9101bf.f31606p;
        if (str5 == str6) {
            return true;
        }
        return str5 != null && str5.equals(str6);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31599i, Boolean.valueOf(this.f31600j), Boolean.valueOf(this.f31601k), this.f31602l, this.f31603m, this.f31604n, this.f31605o, this.f31606p});
    }

    public String toString() {
        return C9102a.f31607a.serialize((C9102a) this, false);
    }
}
