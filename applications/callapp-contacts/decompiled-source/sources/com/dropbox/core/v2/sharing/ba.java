package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.aa;
import com.dropbox.core.v2.sharing.b;
import com.dropbox.core.v2.sharing.h;
import com.dropbox.core.v2.sharing.i;
import com.dropbox.core.v2.sharing.z;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ba.class */
public final class ba extends bb {

    /* renamed from: a  reason: collision with root package name */
    protected final h f18563a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18564b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ba$a.class */
    public static final class a extends e<ba> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18565a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ ba deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                z zVar = null;
                List list2 = null;
                String str2 = null;
                b bVar = null;
                i iVar = null;
                Date date = null;
                h hVar = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("audience_options".equals(currentName)) {
                        list = (List) d.b(z.a.f18728a).deserialize(jsonParser);
                    } else if ("current_audience".equals(currentName)) {
                        z.a aVar = z.a.f18728a;
                        zVar = z.a.a(jsonParser);
                    } else if ("link_permissions".equals(currentName)) {
                        list2 = (List) d.b(aa.a.f18444a).deserialize(jsonParser);
                    } else if ("password_protected".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else if ("url".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("access_level".equals(currentName)) {
                        bVar = (b) d.a(b.a.f18562a).deserialize(jsonParser);
                    } else if ("audience_restricting_shared_folder".equals(currentName)) {
                        iVar = (i) d.a((e) i.a.f18669a).deserialize(jsonParser);
                    } else if ("expiry".equals(currentName)) {
                        date = (Date) d.a(d.b.f17711a).deserialize(jsonParser);
                    } else if ("audience_exceptions".equals(currentName)) {
                        hVar = (h) d.a((e) h.a.f18665a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (list == null) {
                    throw new JsonParseException(jsonParser, "Required field \"audience_options\" missing.");
                } else if (zVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"current_audience\" missing.");
                } else if (list2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"link_permissions\" missing.");
                } else if (bool == null) {
                    throw new JsonParseException(jsonParser, "Required field \"password_protected\" missing.");
                } else if (str2 != null) {
                    ba baVar = new ba(list, zVar, list2, bool.booleanValue(), str2, bVar, iVar, date, hVar);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    baVar.a();
                    com.dropbox.core.a.b.a(baVar);
                    return baVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"url\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(ba baVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            ba baVar2 = baVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("audience_options");
            d.b(z.a.f18728a).serialize((c) baVar2.f18567d, jsonGenerator);
            jsonGenerator.writeFieldName("current_audience");
            z.a aVar = z.a.f18728a;
            z.a.a(baVar2.f, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            d.b(aa.a.f18444a).serialize((c) baVar2.h, jsonGenerator);
            jsonGenerator.writeFieldName("password_protected");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(baVar2.i), jsonGenerator);
            jsonGenerator.writeFieldName("url");
            d.h.f17717a.serialize((d.h) baVar2.f18564b, jsonGenerator);
            if (baVar2.f18566c != null) {
                jsonGenerator.writeFieldName("access_level");
                d.a(b.a.f18562a).serialize((c) baVar2.f18566c, jsonGenerator);
            }
            if (baVar2.e != null) {
                jsonGenerator.writeFieldName("audience_restricting_shared_folder");
                d.a((e) i.a.f18669a).serialize((e) baVar2.e, jsonGenerator);
            }
            if (baVar2.g != null) {
                jsonGenerator.writeFieldName("expiry");
                d.a(d.b.f17711a).serialize((c) baVar2.g, jsonGenerator);
            }
            if (baVar2.f18563a != null) {
                jsonGenerator.writeFieldName("audience_exceptions");
                d.a((e) h.a.f18665a).serialize((e) baVar2.f18563a, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public ba(List<z> list, z zVar, List<aa> list2, boolean z, String str) {
        this(list, zVar, list2, z, str, null, null, null, null);
    }

    public ba(List<z> list, z zVar, List<aa> list2, boolean z, String str, b bVar, i iVar, Date date, h hVar) {
        super(list, zVar, list2, z, bVar, iVar, date);
        this.f18563a = hVar;
        if (str != null) {
            this.f18564b = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'url' is null");
    }

    @Override // com.dropbox.core.v2.sharing.bb
    public final String a() {
        return a.f18565a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.sharing.bb
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ba baVar = (ba) obj;
        if (this.f18567d != baVar.f18567d && !this.f18567d.equals(baVar.f18567d)) {
            return false;
        }
        if (this.f != baVar.f && !this.f.equals(baVar.f)) {
            return false;
        }
        if ((this.h != baVar.h && !this.h.equals(baVar.h)) || this.i != baVar.i) {
            return false;
        }
        String str = this.f18564b;
        String str2 = baVar.f18564b;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        if (this.f18566c != baVar.f18566c && (this.f18566c == null || !this.f18566c.equals(baVar.f18566c))) {
            return false;
        }
        if (this.e != baVar.e && (this.e == null || !this.e.equals(baVar.e))) {
            return false;
        }
        if (this.g != baVar.g && (this.g == null || !this.g.equals(baVar.g))) {
            return false;
        }
        h hVar = this.f18563a;
        h hVar2 = baVar.f18563a;
        if (hVar != hVar2) {
            return hVar != null && hVar.equals(hVar2);
        }
        return true;
    }

    @Override // com.dropbox.core.v2.sharing.bb
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18563a, this.f18564b});
    }

    @Override // com.dropbox.core.v2.sharing.bb
    public final String toString() {
        return a.f18565a.serialize((a) this, false);
    }
}
