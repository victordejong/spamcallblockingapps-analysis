package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.fileproperties.C8775m;
import com.dropbox.core.p265v2.files.C8860au;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.files.aa */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aa.class */
public final class C8796aa {

    /* renamed from: a */
    protected final String f31000a;

    /* renamed from: b */
    protected final boolean f31001b;

    /* renamed from: c */
    protected final boolean f31002c;

    /* renamed from: d */
    protected final boolean f31003d;

    /* renamed from: e */
    protected final boolean f31004e;

    /* renamed from: f */
    protected final boolean f31005f;

    /* renamed from: g */
    protected final Long f31006g;

    /* renamed from: h */
    protected final C8860au f31007h;

    /* renamed from: i */
    protected final C8775m f31008i;

    /* renamed from: j */
    protected final boolean f31009j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.aa$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/aa$a.class */
    public static final class C8797a extends AbstractC8558e<C8796aa> {

        /* renamed from: a */
        public static final C8797a f31010a = new C8797a();

        C8797a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8796aa deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.FALSE;
            Boolean bool2 = Boolean.FALSE;
            Boolean bool3 = Boolean.FALSE;
            Boolean bool4 = Boolean.FALSE;
            Boolean bool5 = Boolean.TRUE;
            Boolean bool6 = Boolean.TRUE;
            String str2 = null;
            Long l = null;
            C8860au c8860au = null;
            C8775m c8775m = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("recursive".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("include_media_info".equals(currentName)) {
                    bool2 = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("include_deleted".equals(currentName)) {
                    bool3 = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("include_has_explicit_shared_members".equals(currentName)) {
                    bool4 = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("include_mounted_folders".equals(currentName)) {
                    bool5 = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("limit".equals(currentName)) {
                    l = (Long) C8548d.m25354a(C8548d.C8553e.f30456a).deserialize(jsonParser);
                } else if ("shared_link".equals(currentName)) {
                    c8860au = (C8860au) C8548d.m25353a((AbstractC8558e) C8860au.C8861a.f31132a).deserialize(jsonParser);
                } else if ("include_property_groups".equals(currentName)) {
                    c8775m = (C8775m) C8548d.m25354a(C8775m.C8777a.f30946a).deserialize(jsonParser);
                } else if ("include_non_downloadable_files".equals(currentName)) {
                    bool6 = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            C8796aa c8796aa = new C8796aa(str2, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue(), bool4.booleanValue(), bool5.booleanValue(), l, c8860au, c8775m, bool6.booleanValue());
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31010a.serialize((C8797a) c8796aa, true);
            C8546b.m25355a(c8796aa);
            return c8796aa;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8796aa c8796aa, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8796aa c8796aa2 = c8796aa;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8796aa2.f31000a, jsonGenerator);
            jsonGenerator.writeFieldName("recursive");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8796aa2.f31001b), jsonGenerator);
            jsonGenerator.writeFieldName("include_media_info");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8796aa2.f31002c), jsonGenerator);
            jsonGenerator.writeFieldName("include_deleted");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8796aa2.f31003d), jsonGenerator);
            jsonGenerator.writeFieldName("include_has_explicit_shared_members");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8796aa2.f31004e), jsonGenerator);
            jsonGenerator.writeFieldName("include_mounted_folders");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8796aa2.f31005f), jsonGenerator);
            if (c8796aa2.f31006g != null) {
                jsonGenerator.writeFieldName("limit");
                C8548d.m25354a(C8548d.C8553e.f30456a).serialize((AbstractC8547c) c8796aa2.f31006g, jsonGenerator);
            }
            if (c8796aa2.f31007h != null) {
                jsonGenerator.writeFieldName("shared_link");
                C8548d.m25353a((AbstractC8558e) C8860au.C8861a.f31132a).serialize((AbstractC8558e) c8796aa2.f31007h, jsonGenerator);
            }
            if (c8796aa2.f31008i != null) {
                jsonGenerator.writeFieldName("include_property_groups");
                C8548d.m25354a(C8775m.C8777a.f30946a).serialize((AbstractC8547c) c8796aa2.f31008i, jsonGenerator);
            }
            jsonGenerator.writeFieldName("include_non_downloadable_files");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8796aa2.f31009j), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8796aa(String str) {
        this(str, false, false, false, false, true, null, null, null, true);
    }

    public C8796aa(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Long l, C8860au c8860au, C8775m c8775m, boolean z6) {
        if (str != null) {
            if (!Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.f31000a = str;
            this.f31001b = z;
            this.f31002c = z2;
            this.f31003d = z3;
            this.f31004e = z4;
            this.f31005f = z5;
            if (l != null) {
                if (l.longValue() < 1) {
                    throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
                }
                if (l.longValue() > 2000) {
                    throw new IllegalArgumentException("Number 'limit' is larger than 2000L");
                }
            }
            this.f31006g = l;
            this.f31007h = c8860au;
            this.f31008i = c8775m;
            this.f31009j = z6;
            return;
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8796aa c8796aa = (C8796aa) obj;
        String str = this.f31000a;
        String str2 = c8796aa.f31000a;
        if ((str != str2 && !str.equals(str2)) || this.f31001b != c8796aa.f31001b || this.f31002c != c8796aa.f31002c || this.f31003d != c8796aa.f31003d || this.f31004e != c8796aa.f31004e || this.f31005f != c8796aa.f31005f) {
            return false;
        }
        Long l = this.f31006g;
        Long l2 = c8796aa.f31006g;
        if (l != l2 && (l == null || !l.equals(l2))) {
            return false;
        }
        C8860au c8860au = this.f31007h;
        C8860au c8860au2 = c8796aa.f31007h;
        if (c8860au != c8860au2 && (c8860au == null || !c8860au.equals(c8860au2))) {
            return false;
        }
        C8775m c8775m = this.f31008i;
        C8775m c8775m2 = c8796aa.f31008i;
        return (c8775m == c8775m2 || (c8775m != null && c8775m.equals(c8775m2))) && this.f31009j == c8796aa.f31009j;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31000a, Boolean.valueOf(this.f31001b), Boolean.valueOf(this.f31002c), Boolean.valueOf(this.f31003d), Boolean.valueOf(this.f31004e), Boolean.valueOf(this.f31005f), this.f31006g, this.f31007h, this.f31008i, Boolean.valueOf(this.f31009j)});
    }

    public final String toString() {
        return C8797a.f31010a.serialize((C8797a) this, false);
    }
}
