package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.aa;
import com.dropbox.core.v2.sharing.b;
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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bb.class */
public class bb {

    /* renamed from: c  reason: collision with root package name */
    protected final b f18566c;

    /* renamed from: d  reason: collision with root package name */
    protected final List<z> f18567d;
    protected final i e;
    protected final z f;
    protected final Date g;
    protected final List<aa> h;
    protected final boolean i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bb$a.class */
    public static final class a extends e<bb> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18568a = new a();

        private a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ bb deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                b bVar = null;
                i iVar = null;
                Date date = null;
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
                    } else if ("access_level".equals(currentName)) {
                        bVar = (b) d.a(b.a.f18562a).deserialize(jsonParser);
                    } else if ("audience_restricting_shared_folder".equals(currentName)) {
                        iVar = (i) d.a((e) i.a.f18669a).deserialize(jsonParser);
                    } else if ("expiry".equals(currentName)) {
                        date = (Date) d.a(d.b.f17711a).deserialize(jsonParser);
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
                } else if (bool != null) {
                    bb bbVar = new bb(list, zVar, list2, bool.booleanValue(), bVar, iVar, date);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    bbVar.a();
                    com.dropbox.core.a.b.a(bbVar);
                    return bbVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"password_protected\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(bb bbVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            bb bbVar2 = bbVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("audience_options");
            d.b(z.a.f18728a).serialize((c) bbVar2.f18567d, jsonGenerator);
            jsonGenerator.writeFieldName("current_audience");
            z.a aVar = z.a.f18728a;
            z.a.a(bbVar2.f, jsonGenerator);
            jsonGenerator.writeFieldName("link_permissions");
            d.b(aa.a.f18444a).serialize((c) bbVar2.h, jsonGenerator);
            jsonGenerator.writeFieldName("password_protected");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(bbVar2.i), jsonGenerator);
            if (bbVar2.f18566c != null) {
                jsonGenerator.writeFieldName("access_level");
                d.a(b.a.f18562a).serialize((c) bbVar2.f18566c, jsonGenerator);
            }
            if (bbVar2.e != null) {
                jsonGenerator.writeFieldName("audience_restricting_shared_folder");
                d.a((e) i.a.f18669a).serialize((e) bbVar2.e, jsonGenerator);
            }
            if (bbVar2.g != null) {
                jsonGenerator.writeFieldName("expiry");
                d.a(d.b.f17711a).serialize((c) bbVar2.g, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public bb(List<z> list, z zVar, List<aa> list2, boolean z) {
        this(list, zVar, list2, z, null, null, null);
    }

    public bb(List<z> list, z zVar, List<aa> list2, boolean z, b bVar, i iVar, Date date) {
        this.f18566c = bVar;
        if (list != null) {
            for (z zVar2 : list) {
                if (zVar2 == null) {
                    throw new IllegalArgumentException("An item in list 'audienceOptions' is null");
                }
            }
            this.f18567d = list;
            this.e = iVar;
            if (zVar != null) {
                this.f = zVar;
                this.g = com.dropbox.core.util.d.a(date);
                if (list2 != null) {
                    for (aa aaVar : list2) {
                        if (aaVar == null) {
                            throw new IllegalArgumentException("An item in list 'linkPermissions' is null");
                        }
                    }
                    this.h = list2;
                    this.i = z;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
            }
            throw new IllegalArgumentException("Required value for 'currentAudience' is null");
        }
        throw new IllegalArgumentException("Required value for 'audienceOptions' is null");
    }

    public String a() {
        return a.f18568a.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        bb bbVar = (bb) obj;
        List<z> list = this.f18567d;
        List<z> list2 = bbVar.f18567d;
        if (list != list2 && !list.equals(list2)) {
            return false;
        }
        z zVar = this.f;
        z zVar2 = bbVar.f;
        if (zVar != zVar2 && !zVar.equals(zVar2)) {
            return false;
        }
        List<aa> list3 = this.h;
        List<aa> list4 = bbVar.h;
        if ((list3 != list4 && !list3.equals(list4)) || this.i != bbVar.i) {
            return false;
        }
        b bVar = this.f18566c;
        b bVar2 = bbVar.f18566c;
        if (bVar != bVar2 && (bVar == null || !bVar.equals(bVar2))) {
            return false;
        }
        i iVar = this.e;
        i iVar2 = bbVar.e;
        if (iVar != iVar2 && (iVar == null || !iVar.equals(iVar2))) {
            return false;
        }
        Date date = this.g;
        Date date2 = bbVar.g;
        if (date != date2) {
            return date != null && date.equals(date2);
        }
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18566c, this.f18567d, this.e, this.f, this.g, this.h, Boolean.valueOf(this.i)});
    }

    public String toString() {
        return a.f18568a.serialize((a) this, false);
    }
}
