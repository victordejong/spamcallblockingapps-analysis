package com.dropbox.core.v2.files;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.fileproperties.j;
import com.dropbox.core.v2.files.bm;
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
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18235a;

    /* renamed from: b  reason: collision with root package name */
    protected final bm f18236b;

    /* renamed from: c  reason: collision with root package name */
    protected final boolean f18237c;

    /* renamed from: d  reason: collision with root package name */
    protected final Date f18238d;
    protected final boolean e;
    protected final List<j> f;
    protected final boolean g;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        protected final String f18239a;

        /* renamed from: b  reason: collision with root package name */
        protected bm f18240b;

        /* renamed from: c  reason: collision with root package name */
        protected boolean f18241c;

        /* renamed from: d  reason: collision with root package name */
        protected Date f18242d;
        protected boolean e;
        protected List<j> f;
        protected boolean g;

        protected a(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            } else if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
                this.f18239a = str;
                this.f18240b = bm.f18291a;
                this.f18241c = false;
                this.f18242d = null;
                this.e = false;
                this.f = null;
                this.g = false;
            } else {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
        }

        public final a a(bm bmVar) {
            if (bmVar != null) {
                this.f18240b = bmVar;
            } else {
                this.f18240b = bm.f18291a;
            }
            return this;
        }

        public final b a() {
            return new b(this.f18239a, this.f18240b, this.f18241c, this.f18242d, this.e, this.f, this.g);
        }
    }

    /* renamed from: com.dropbox.core.v2.files.b$b  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/b$b.class */
    static final class C0368b extends e<b> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0368b f18243a = new C0368b();

        C0368b() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ b deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                bm bmVar = bm.f18291a;
                Boolean bool = Boolean.FALSE;
                Boolean bool2 = Boolean.FALSE;
                Boolean bool3 = Boolean.FALSE;
                String str2 = null;
                Date date = null;
                List list = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("path".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("mode".equals(currentName)) {
                        bm.a aVar = bm.a.f18296a;
                        bmVar = bm.a.a(jsonParser);
                    } else if ("autorename".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else if ("client_modified".equals(currentName)) {
                        date = (Date) d.a(d.b.f17711a).deserialize(jsonParser);
                    } else if (EventConstants.MUTE.equals(currentName)) {
                        bool2 = d.a.f17710a.deserialize(jsonParser);
                    } else if ("property_groups".equals(currentName)) {
                        list = (List) d.a(d.b(j.a.f18059a)).deserialize(jsonParser);
                    } else if ("strict_conflict".equals(currentName)) {
                        bool3 = d.a.f17710a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (str2 != null) {
                    b bVar = new b(str2, bmVar, bool.booleanValue(), date, bool2.booleanValue(), list, bool3.booleanValue());
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18243a.serialize((C0368b) bVar, true);
                    com.dropbox.core.a.b.a(bVar);
                    return bVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(b bVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            b bVar2 = bVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            d.h.f17717a.serialize((d.h) bVar2.f18235a, jsonGenerator);
            jsonGenerator.writeFieldName("mode");
            bm.a.f18296a.serialize(bVar2.f18236b, jsonGenerator);
            jsonGenerator.writeFieldName("autorename");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(bVar2.f18237c), jsonGenerator);
            if (bVar2.f18238d != null) {
                jsonGenerator.writeFieldName("client_modified");
                d.a(d.b.f17711a).serialize((c) bVar2.f18238d, jsonGenerator);
            }
            jsonGenerator.writeFieldName(EventConstants.MUTE);
            d.a.f17710a.serialize((d.a) Boolean.valueOf(bVar2.e), jsonGenerator);
            if (bVar2.f != null) {
                jsonGenerator.writeFieldName("property_groups");
                d.a(d.b(j.a.f18059a)).serialize((c) bVar2.f, jsonGenerator);
            }
            jsonGenerator.writeFieldName("strict_conflict");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(bVar2.g), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public b(String str) {
        this(str, bm.f18291a, false, null, false, null, false);
    }

    public b(String str, bm bmVar, boolean z, Date date, boolean z2, List<j> list, boolean z3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        } else if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
            this.f18235a = str;
            if (bmVar != null) {
                this.f18236b = bmVar;
                this.f18237c = z;
                this.f18238d = com.dropbox.core.util.d.a(date);
                this.e = z2;
                if (list != null) {
                    for (j jVar : list) {
                        if (jVar == null) {
                            throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                        }
                    }
                }
                this.f = list;
                this.g = z3;
                return;
            }
            throw new IllegalArgumentException("Required value for 'mode' is null");
        } else {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
    }

    public static a a(String str) {
        return new a(str);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        b bVar = (b) obj;
        String str = this.f18235a;
        String str2 = bVar.f18235a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        bm bmVar = this.f18236b;
        bm bmVar2 = bVar.f18236b;
        if ((bmVar != bmVar2 && !bmVar.equals(bmVar2)) || this.f18237c != bVar.f18237c) {
            return false;
        }
        Date date = this.f18238d;
        Date date2 = bVar.f18238d;
        if ((date != date2 && (date == null || !date.equals(date2))) || this.e != bVar.e) {
            return false;
        }
        List<j> list = this.f;
        List<j> list2 = bVar.f;
        return (list == list2 || (list != null && list.equals(list2))) && this.g == bVar.g;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18235a, this.f18236b, Boolean.valueOf(this.f18237c), this.f18238d, Boolean.valueOf(this.e), this.f, Boolean.valueOf(this.g)});
    }

    public final String toString() {
        return C0368b.f18243a.serialize((C0368b) this, false);
    }
}
