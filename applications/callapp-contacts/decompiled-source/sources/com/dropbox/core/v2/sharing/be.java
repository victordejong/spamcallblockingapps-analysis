package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.a;
import com.dropbox.core.v2.sharing.b;
import com.dropbox.core.v2.sharing.ba;
import com.dropbox.core.v2.sharing.q;
import com.dropbox.core.v2.sharing.r;
import com.dropbox.core.v2.users.d;
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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/be.class */
public final class be extends bf {

    /* renamed from: a  reason: collision with root package name */
    protected final ba f18577a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18578b;

    /* renamed from: c  reason: collision with root package name */
    protected final List<q> f18579c;

    /* renamed from: d  reason: collision with root package name */
    protected final r f18580d;
    protected final String e;
    protected final String f;
    protected final Date g;
    protected final com.dropbox.core.v2.sharing.a h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/be$a.class */
    public static final class a extends e<be> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18581a = new a();

        a() {
        }

        public static be a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                com.dropbox.core.v2.sharing.a aVar = com.dropbox.core.v2.sharing.a.INHERIT;
                b bVar = null;
                String str2 = null;
                r rVar = null;
                String str3 = null;
                String str4 = null;
                Date date = null;
                List list = null;
                d dVar = null;
                String str5 = null;
                String str6 = null;
                String str7 = null;
                ba baVar = null;
                List list2 = null;
                Boolean bool2 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("access_type".equals(currentName)) {
                        b.a aVar2 = b.a.f18562a;
                        bVar = b.a.a(jsonParser);
                    } else if ("is_inside_team_folder".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else if ("is_team_folder".equals(currentName)) {
                        bool2 = d.a.f17710a.deserialize(jsonParser);
                    } else if ("name".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("policy".equals(currentName)) {
                        rVar = r.a.f18704a.deserialize(jsonParser);
                    } else if ("preview_url".equals(currentName)) {
                        str3 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("shared_folder_id".equals(currentName)) {
                        str4 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("time_invited".equals(currentName)) {
                        date = d.b.f17711a.deserialize(jsonParser);
                    } else if ("owner_display_names".equals(currentName)) {
                        list = (List) com.dropbox.core.a.d.a(com.dropbox.core.a.d.b(d.h.f17717a)).deserialize(jsonParser);
                    } else if ("owner_team".equals(currentName)) {
                        dVar = (com.dropbox.core.v2.users.d) com.dropbox.core.a.d.a((e) d.a.f18869a).deserialize(jsonParser);
                    } else if ("parent_shared_folder_id".equals(currentName)) {
                        str5 = (String) com.dropbox.core.a.d.a(d.h.f17717a).deserialize(jsonParser);
                    } else if ("path_lower".equals(currentName)) {
                        str6 = (String) com.dropbox.core.a.d.a(d.h.f17717a).deserialize(jsonParser);
                    } else if ("parent_folder_name".equals(currentName)) {
                        str7 = (String) com.dropbox.core.a.d.a(d.h.f17717a).deserialize(jsonParser);
                    } else if ("link_metadata".equals(currentName)) {
                        baVar = (ba) com.dropbox.core.a.d.a((e) ba.a.f18565a).deserialize(jsonParser);
                    } else if ("permissions".equals(currentName)) {
                        list2 = (List) com.dropbox.core.a.d.a(com.dropbox.core.a.d.b(q.a.f18699a)).deserialize(jsonParser);
                    } else if ("access_inheritance".equals(currentName)) {
                        a.C0369a aVar3 = a.C0369a.f18440a;
                        aVar = a.C0369a.a(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (bVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
                } else if (bool == null) {
                    throw new JsonParseException(jsonParser, "Required field \"is_inside_team_folder\" missing.");
                } else if (bool2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"is_team_folder\" missing.");
                } else if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
                } else if (rVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"policy\" missing.");
                } else if (str3 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"preview_url\" missing.");
                } else if (str4 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
                } else if (date != null) {
                    be beVar = new be(bVar, bool.booleanValue(), bool2.booleanValue(), str2, rVar, str3, str4, date, list, dVar, str5, str6, str7, baVar, list2, aVar);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    beVar.a();
                    com.dropbox.core.a.b.a(beVar);
                    return beVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"time_invited\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        public static void a(be beVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_type");
            b.a aVar = b.a.f18562a;
            b.a.a(beVar.i, jsonGenerator);
            jsonGenerator.writeFieldName("is_inside_team_folder");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(beVar.j), jsonGenerator);
            jsonGenerator.writeFieldName("is_team_folder");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(beVar.k), jsonGenerator);
            jsonGenerator.writeFieldName("name");
            d.h.f17717a.serialize((d.h) beVar.f18578b, jsonGenerator);
            jsonGenerator.writeFieldName("policy");
            r.a.f18704a.serialize((r.a) beVar.f18580d, jsonGenerator);
            jsonGenerator.writeFieldName("preview_url");
            d.h.f17717a.serialize((d.h) beVar.e, jsonGenerator);
            jsonGenerator.writeFieldName("shared_folder_id");
            d.h.f17717a.serialize((d.h) beVar.f, jsonGenerator);
            jsonGenerator.writeFieldName("time_invited");
            d.b.f17711a.serialize((d.b) beVar.g, jsonGenerator);
            if (beVar.l != null) {
                jsonGenerator.writeFieldName("owner_display_names");
                com.dropbox.core.a.d.a(com.dropbox.core.a.d.b(d.h.f17717a)).serialize((c) beVar.l, jsonGenerator);
            }
            if (beVar.m != null) {
                jsonGenerator.writeFieldName("owner_team");
                com.dropbox.core.a.d.a((e) d.a.f18869a).serialize((e) beVar.m, jsonGenerator);
            }
            if (beVar.n != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                com.dropbox.core.a.d.a(d.h.f17717a).serialize((c) beVar.n, jsonGenerator);
            }
            if (beVar.o != null) {
                jsonGenerator.writeFieldName("path_lower");
                com.dropbox.core.a.d.a(d.h.f17717a).serialize((c) beVar.o, jsonGenerator);
            }
            if (beVar.p != null) {
                jsonGenerator.writeFieldName("parent_folder_name");
                com.dropbox.core.a.d.a(d.h.f17717a).serialize((c) beVar.p, jsonGenerator);
            }
            if (beVar.f18577a != null) {
                jsonGenerator.writeFieldName("link_metadata");
                com.dropbox.core.a.d.a((e) ba.a.f18565a).serialize((e) beVar.f18577a, jsonGenerator);
            }
            if (beVar.f18579c != null) {
                jsonGenerator.writeFieldName("permissions");
                com.dropbox.core.a.d.a(com.dropbox.core.a.d.b(q.a.f18699a)).serialize((c) beVar.f18579c, jsonGenerator);
            }
            jsonGenerator.writeFieldName("access_inheritance");
            a.C0369a aVar2 = a.C0369a.f18440a;
            a.C0369a.a(beVar.h, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ be deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(be beVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            a(beVar, jsonGenerator, z);
        }
    }

    public be(b bVar, boolean z, boolean z2, String str, r rVar, String str2, String str3, Date date) {
        this(bVar, z, z2, str, rVar, str2, str3, date, null, null, null, null, null, null, null, com.dropbox.core.v2.sharing.a.INHERIT);
    }

    public be(b bVar, boolean z, boolean z2, String str, r rVar, String str2, String str3, Date date, List<String> list, com.dropbox.core.v2.users.d dVar, String str4, String str5, String str6, ba baVar, List<q> list2, com.dropbox.core.v2.sharing.a aVar) {
        super(bVar, z, z2, list, dVar, str4, str5, str6);
        this.f18577a = baVar;
        if (str != null) {
            this.f18578b = str;
            if (list2 != null) {
                for (q qVar : list2) {
                    if (qVar == null) {
                        throw new IllegalArgumentException("An item in list 'permissions' is null");
                    }
                }
            }
            this.f18579c = list2;
            if (rVar != null) {
                this.f18580d = rVar;
                if (str2 != null) {
                    this.e = str2;
                    if (str3 == null) {
                        throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
                    } else if (Pattern.matches("[-_0-9a-zA-Z:]+", str3)) {
                        this.f = str3;
                        if (date != null) {
                            this.g = com.dropbox.core.util.d.a(date);
                            if (aVar != null) {
                                this.h = aVar;
                                return;
                            }
                            throw new IllegalArgumentException("Required value for 'accessInheritance' is null");
                        }
                        throw new IllegalArgumentException("Required value for 'timeInvited' is null");
                    } else {
                        throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
                    }
                } else {
                    throw new IllegalArgumentException("Required value for 'previewUrl' is null");
                }
            } else {
                throw new IllegalArgumentException("Required value for 'policy' is null");
            }
        } else {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
    }

    @Override // com.dropbox.core.v2.sharing.bf
    public final String a() {
        return a.f18581a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.sharing.bf
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        be beVar = (be) obj;
        if ((this.i != beVar.i && !this.i.equals(beVar.i)) || this.j != beVar.j || this.k != beVar.k) {
            return false;
        }
        String str = this.f18578b;
        String str2 = beVar.f18578b;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        r rVar = this.f18580d;
        r rVar2 = beVar.f18580d;
        if (rVar != rVar2 && !rVar.equals(rVar2)) {
            return false;
        }
        String str3 = this.e;
        String str4 = beVar.e;
        if (str3 != str4 && !str3.equals(str4)) {
            return false;
        }
        String str5 = this.f;
        String str6 = beVar.f;
        if (str5 != str6 && !str5.equals(str6)) {
            return false;
        }
        Date date = this.g;
        Date date2 = beVar.g;
        if (date != date2 && !date.equals(date2)) {
            return false;
        }
        if (this.l != beVar.l && (this.l == null || !this.l.equals(beVar.l))) {
            return false;
        }
        if (this.m != beVar.m && (this.m == null || !this.m.equals(beVar.m))) {
            return false;
        }
        if (this.n != beVar.n && (this.n == null || !this.n.equals(beVar.n))) {
            return false;
        }
        if (this.o != beVar.o && (this.o == null || !this.o.equals(beVar.o))) {
            return false;
        }
        if (this.p != beVar.p && (this.p == null || !this.p.equals(beVar.p))) {
            return false;
        }
        ba baVar = this.f18577a;
        ba baVar2 = beVar.f18577a;
        if (baVar != baVar2 && (baVar == null || !baVar.equals(baVar2))) {
            return false;
        }
        List<q> list = this.f18579c;
        List<q> list2 = beVar.f18579c;
        if (list != list2 && (list == null || !list.equals(list2))) {
            return false;
        }
        com.dropbox.core.v2.sharing.a aVar = this.h;
        com.dropbox.core.v2.sharing.a aVar2 = beVar.h;
        return aVar == aVar2 || aVar.equals(aVar2);
    }

    @Override // com.dropbox.core.v2.sharing.bf
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18577a, this.f18578b, this.f18579c, this.f18580d, this.e, this.f, this.g, this.h});
    }

    @Override // com.dropbox.core.v2.sharing.bf
    public final String toString() {
        return a.f18581a.serialize((a) this, false);
    }
}
