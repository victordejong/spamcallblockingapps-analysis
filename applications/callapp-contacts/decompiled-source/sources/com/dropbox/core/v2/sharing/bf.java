package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.b;
import com.dropbox.core.v2.users.d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bf.class */
public class bf {
    protected final b i;
    protected final boolean j;
    protected final boolean k;
    protected final List<String> l;
    protected final d m;
    protected final String n;
    protected final String o;
    protected final String p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bf$a.class */
    public static final class a extends e<bf> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18582a = new a();

        private a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ bf deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                List list = null;
                d dVar = null;
                String str2 = null;
                String str3 = null;
                String str4 = null;
                b bVar = null;
                Boolean bool2 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("access_type".equals(currentName)) {
                        b.a aVar = b.a.f18562a;
                        bVar = b.a.a(jsonParser);
                    } else if ("is_inside_team_folder".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else if ("is_team_folder".equals(currentName)) {
                        bool2 = d.a.f17710a.deserialize(jsonParser);
                    } else if ("owner_display_names".equals(currentName)) {
                        list = (List) com.dropbox.core.a.d.a(com.dropbox.core.a.d.b(d.h.f17717a)).deserialize(jsonParser);
                    } else if ("owner_team".equals(currentName)) {
                        dVar = (com.dropbox.core.v2.users.d) com.dropbox.core.a.d.a((e) d.a.f18869a).deserialize(jsonParser);
                    } else if ("parent_shared_folder_id".equals(currentName)) {
                        str2 = (String) com.dropbox.core.a.d.a(d.h.f17717a).deserialize(jsonParser);
                    } else if ("path_lower".equals(currentName)) {
                        str3 = (String) com.dropbox.core.a.d.a(d.h.f17717a).deserialize(jsonParser);
                    } else if ("parent_folder_name".equals(currentName)) {
                        str4 = (String) com.dropbox.core.a.d.a(d.h.f17717a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (bVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
                } else if (bool == null) {
                    throw new JsonParseException(jsonParser, "Required field \"is_inside_team_folder\" missing.");
                } else if (bool2 != null) {
                    bf bfVar = new bf(bVar, bool.booleanValue(), bool2.booleanValue(), list, dVar, str2, str3, str4);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    bfVar.a();
                    com.dropbox.core.a.b.a(bfVar);
                    return bfVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"is_team_folder\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(bf bfVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            bf bfVar2 = bfVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_type");
            b.a aVar = b.a.f18562a;
            b.a.a(bfVar2.i, jsonGenerator);
            jsonGenerator.writeFieldName("is_inside_team_folder");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(bfVar2.j), jsonGenerator);
            jsonGenerator.writeFieldName("is_team_folder");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(bfVar2.k), jsonGenerator);
            if (bfVar2.l != null) {
                jsonGenerator.writeFieldName("owner_display_names");
                com.dropbox.core.a.d.a(com.dropbox.core.a.d.b(d.h.f17717a)).serialize((c) bfVar2.l, jsonGenerator);
            }
            if (bfVar2.m != null) {
                jsonGenerator.writeFieldName("owner_team");
                com.dropbox.core.a.d.a((e) d.a.f18869a).serialize((e) bfVar2.m, jsonGenerator);
            }
            if (bfVar2.n != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                com.dropbox.core.a.d.a(d.h.f17717a).serialize((c) bfVar2.n, jsonGenerator);
            }
            if (bfVar2.o != null) {
                jsonGenerator.writeFieldName("path_lower");
                com.dropbox.core.a.d.a(d.h.f17717a).serialize((c) bfVar2.o, jsonGenerator);
            }
            if (bfVar2.p != null) {
                jsonGenerator.writeFieldName("parent_folder_name");
                com.dropbox.core.a.d.a(d.h.f17717a).serialize((c) bfVar2.p, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public bf(b bVar, boolean z, boolean z2) {
        this(bVar, z, z2, null, null, null, null, null);
    }

    public bf(b bVar, boolean z, boolean z2, List<String> list, com.dropbox.core.v2.users.d dVar, String str, String str2, String str3) {
        if (bVar != null) {
            this.i = bVar;
            this.j = z;
            this.k = z2;
            if (list != null) {
                for (String str4 : list) {
                    if (str4 == null) {
                        throw new IllegalArgumentException("An item in list 'ownerDisplayNames' is null");
                    }
                }
            }
            this.l = list;
            this.m = dVar;
            if (str == null || Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                this.n = str;
                this.o = str2;
                this.p = str3;
                return;
            }
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'accessType' is null");
    }

    public String a() {
        return a.f18582a.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        bf bfVar = (bf) obj;
        b bVar = this.i;
        b bVar2 = bfVar.i;
        if ((bVar != bVar2 && !bVar.equals(bVar2)) || this.j != bfVar.j || this.k != bfVar.k) {
            return false;
        }
        List<String> list = this.l;
        List<String> list2 = bfVar.l;
        if (list != list2 && (list == null || !list.equals(list2))) {
            return false;
        }
        com.dropbox.core.v2.users.d dVar = this.m;
        com.dropbox.core.v2.users.d dVar2 = bfVar.m;
        if (dVar != dVar2 && (dVar == null || !dVar.equals(dVar2))) {
            return false;
        }
        String str = this.n;
        String str2 = bfVar.n;
        if (str != str2 && (str == null || !str.equals(str2))) {
            return false;
        }
        String str3 = this.o;
        String str4 = bfVar.o;
        if (str3 != str4 && (str3 == null || !str3.equals(str4))) {
            return false;
        }
        String str5 = this.p;
        String str6 = bfVar.p;
        if (str5 != str6) {
            return str5 != null && str5.equals(str6);
        }
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.i, Boolean.valueOf(this.j), Boolean.valueOf(this.k), this.l, this.m, this.n, this.o, this.p});
    }

    public String toString() {
        return a.f18582a.serialize((a) this, false);
    }
}
