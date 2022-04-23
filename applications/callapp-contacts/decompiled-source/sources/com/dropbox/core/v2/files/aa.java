package com.dropbox.core.v2.files;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.fileproperties.m;
import com.dropbox.core.v2.files.au;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aa.class */
public final class aa {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18124a;

    /* renamed from: b  reason: collision with root package name */
    protected final boolean f18125b;

    /* renamed from: c  reason: collision with root package name */
    protected final boolean f18126c;

    /* renamed from: d  reason: collision with root package name */
    protected final boolean f18127d;
    protected final boolean e;
    protected final boolean f;
    protected final Long g;
    protected final au h;
    protected final m i;
    protected final boolean j;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aa$a.class */
    static final class a extends e<aa> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18128a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ aa deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                Boolean bool = Boolean.FALSE;
                Boolean bool2 = Boolean.FALSE;
                Boolean bool3 = Boolean.FALSE;
                Boolean bool4 = Boolean.FALSE;
                Boolean bool5 = Boolean.TRUE;
                Boolean bool6 = Boolean.TRUE;
                String str2 = null;
                Long l = null;
                au auVar = null;
                m mVar = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("path".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("recursive".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else if ("include_media_info".equals(currentName)) {
                        bool2 = d.a.f17710a.deserialize(jsonParser);
                    } else if ("include_deleted".equals(currentName)) {
                        bool3 = d.a.f17710a.deserialize(jsonParser);
                    } else if ("include_has_explicit_shared_members".equals(currentName)) {
                        bool4 = d.a.f17710a.deserialize(jsonParser);
                    } else if ("include_mounted_folders".equals(currentName)) {
                        bool5 = d.a.f17710a.deserialize(jsonParser);
                    } else if ("limit".equals(currentName)) {
                        l = (Long) d.a(d.e.f17714a).deserialize(jsonParser);
                    } else if ("shared_link".equals(currentName)) {
                        auVar = (au) d.a((e) au.a.f18215a).deserialize(jsonParser);
                    } else if ("include_property_groups".equals(currentName)) {
                        mVar = (m) d.a(m.a.f18076a).deserialize(jsonParser);
                    } else if ("include_non_downloadable_files".equals(currentName)) {
                        bool6 = d.a.f17710a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (str2 != null) {
                    aa aaVar = new aa(str2, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue(), bool4.booleanValue(), bool5.booleanValue(), l, auVar, mVar, bool6.booleanValue());
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18128a.serialize((a) aaVar, true);
                    b.a(aaVar);
                    return aaVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(aa aaVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            aa aaVar2 = aaVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            d.h.f17717a.serialize((d.h) aaVar2.f18124a, jsonGenerator);
            jsonGenerator.writeFieldName("recursive");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(aaVar2.f18125b), jsonGenerator);
            jsonGenerator.writeFieldName("include_media_info");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(aaVar2.f18126c), jsonGenerator);
            jsonGenerator.writeFieldName("include_deleted");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(aaVar2.f18127d), jsonGenerator);
            jsonGenerator.writeFieldName("include_has_explicit_shared_members");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(aaVar2.e), jsonGenerator);
            jsonGenerator.writeFieldName("include_mounted_folders");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(aaVar2.f), jsonGenerator);
            if (aaVar2.g != null) {
                jsonGenerator.writeFieldName("limit");
                d.a(d.e.f17714a).serialize((c) aaVar2.g, jsonGenerator);
            }
            if (aaVar2.h != null) {
                jsonGenerator.writeFieldName("shared_link");
                d.a((e) au.a.f18215a).serialize((e) aaVar2.h, jsonGenerator);
            }
            if (aaVar2.i != null) {
                jsonGenerator.writeFieldName("include_property_groups");
                d.a(m.a.f18076a).serialize((c) aaVar2.i, jsonGenerator);
            }
            jsonGenerator.writeFieldName("include_non_downloadable_files");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(aaVar2.j), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public aa(String str) {
        this(str, false, false, false, false, true, null, null, null, true);
    }

    public aa(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Long l, au auVar, m mVar, boolean z6) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        } else if (Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", str)) {
            this.f18124a = str;
            this.f18125b = z;
            this.f18126c = z2;
            this.f18127d = z3;
            this.e = z4;
            this.f = z5;
            if (l != null) {
                if (l.longValue() < 1) {
                    throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
                } else if (l.longValue() > 2000) {
                    throw new IllegalArgumentException("Number 'limit' is larger than 2000L");
                }
            }
            this.g = l;
            this.h = auVar;
            this.i = mVar;
            this.j = z6;
        } else {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        aa aaVar = (aa) obj;
        String str = this.f18124a;
        String str2 = aaVar.f18124a;
        if ((str != str2 && !str.equals(str2)) || this.f18125b != aaVar.f18125b || this.f18126c != aaVar.f18126c || this.f18127d != aaVar.f18127d || this.e != aaVar.e || this.f != aaVar.f) {
            return false;
        }
        Long l = this.g;
        Long l2 = aaVar.g;
        if (l != l2 && (l == null || !l.equals(l2))) {
            return false;
        }
        au auVar = this.h;
        au auVar2 = aaVar.h;
        if (auVar != auVar2 && (auVar == null || !auVar.equals(auVar2))) {
            return false;
        }
        m mVar = this.i;
        m mVar2 = aaVar.i;
        return (mVar == mVar2 || (mVar != null && mVar.equals(mVar2))) && this.j == aaVar.j;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18124a, Boolean.valueOf(this.f18125b), Boolean.valueOf(this.f18126c), Boolean.valueOf(this.f18127d), Boolean.valueOf(this.e), Boolean.valueOf(this.f), this.g, this.h, this.i, Boolean.valueOf(this.j)});
    }

    public final String toString() {
        return a.f18128a.serialize((a) this, false);
    }
}
