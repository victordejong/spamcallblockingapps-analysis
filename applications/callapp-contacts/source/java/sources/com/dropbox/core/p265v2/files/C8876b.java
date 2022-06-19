package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.fileproperties.C8765j;
import com.dropbox.core.p265v2.files.C8914bm;
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
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: com.dropbox.core.v2.files.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/b.class */
public final class C8876b {

    /* renamed from: a */
    protected final String f31155a;

    /* renamed from: b */
    protected final C8914bm f31156b;

    /* renamed from: c */
    protected final boolean f31157c;

    /* renamed from: d */
    protected final Date f31158d;

    /* renamed from: e */
    protected final boolean f31159e;

    /* renamed from: f */
    protected final List<C8765j> f31160f;

    /* renamed from: g */
    protected final boolean f31161g;

    /* renamed from: com.dropbox.core.v2.files.b$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/b$a.class */
    public static final class C8877a {

        /* renamed from: a */
        protected final String f31162a;

        /* renamed from: b */
        protected C8914bm f31163b;

        /* renamed from: c */
        protected boolean f31164c;

        /* renamed from: d */
        protected Date f31165d;

        /* renamed from: e */
        protected boolean f31166e;

        /* renamed from: f */
        protected List<C8765j> f31167f;

        /* renamed from: g */
        protected boolean f31168g;

        protected C8877a(String str) {
            if (str != null) {
                if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
                    throw new IllegalArgumentException("String 'path' does not match pattern");
                }
                this.f31162a = str;
                this.f31163b = C8914bm.f31232a;
                this.f31164c = false;
                this.f31165d = null;
                this.f31166e = false;
                this.f31167f = null;
                this.f31168g = false;
                return;
            }
            throw new IllegalArgumentException("Required value for 'path' is null");
        }

        /* renamed from: a */
        public final C8877a m25015a(C8914bm c8914bm) {
            if (c8914bm != null) {
                this.f31163b = c8914bm;
            } else {
                this.f31163b = C8914bm.f31232a;
            }
            return this;
        }

        /* renamed from: a */
        public final C8876b m25016a() {
            return new C8876b(this.f31162a, this.f31163b, this.f31164c, this.f31165d, this.f31166e, this.f31167f, this.f31168g);
        }
    }

    /* renamed from: com.dropbox.core.v2.files.b$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/b$b.class */
    static final class C8878b extends AbstractC8558e<C8876b> {

        /* renamed from: a */
        public static final C8878b f31169a = new C8878b();

        C8878b() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8876b deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            C8914bm c8914bm = C8914bm.f31232a;
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
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("mode".equals(currentName)) {
                    C8914bm.C8916a c8916a = C8914bm.C8916a.f31237a;
                    c8914bm = C8914bm.C8916a.m24968a(jsonParser);
                } else if ("autorename".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("client_modified".equals(currentName)) {
                    date = (Date) C8548d.m25354a(C8548d.C8550b.f30453a).deserialize(jsonParser);
                } else if (EventConstants.MUTE.equals(currentName)) {
                    bool2 = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("property_groups".equals(currentName)) {
                    list = (List) C8548d.m25354a(C8548d.m25352b(C8765j.C8766a.f30926a)).deserialize(jsonParser);
                } else if ("strict_conflict".equals(currentName)) {
                    bool3 = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            C8876b c8876b = new C8876b(str2, c8914bm, bool.booleanValue(), date, bool2.booleanValue(), list, bool3.booleanValue());
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31169a.serialize((C8878b) c8876b, true);
            C8546b.m25355a(c8876b);
            return c8876b;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8876b c8876b, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8876b c8876b2 = c8876b;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8876b2.f31155a, jsonGenerator);
            jsonGenerator.writeFieldName("mode");
            C8914bm.C8916a.f31237a.serialize(c8876b2.f31156b, jsonGenerator);
            jsonGenerator.writeFieldName("autorename");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8876b2.f31157c), jsonGenerator);
            if (c8876b2.f31158d != null) {
                jsonGenerator.writeFieldName("client_modified");
                C8548d.m25354a(C8548d.C8550b.f30453a).serialize((AbstractC8547c) c8876b2.f31158d, jsonGenerator);
            }
            jsonGenerator.writeFieldName(EventConstants.MUTE);
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8876b2.f31159e), jsonGenerator);
            if (c8876b2.f31160f != null) {
                jsonGenerator.writeFieldName("property_groups");
                C8548d.m25354a(C8548d.m25352b(C8765j.C8766a.f30926a)).serialize((AbstractC8547c) c8876b2.f31160f, jsonGenerator);
            }
            jsonGenerator.writeFieldName("strict_conflict");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8876b2.f31161g), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8876b(String str) {
        this(str, C8914bm.f31232a, false, null, false, null, false);
    }

    public C8876b(String str, C8914bm c8914bm, boolean z, Date date, boolean z2, List<C8765j> list, boolean z3) {
        if (str != null) {
            if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.f31155a = str;
            if (c8914bm == null) {
                throw new IllegalArgumentException("Required value for 'mode' is null");
            }
            this.f31156b = c8914bm;
            this.f31157c = z;
            this.f31158d = C8636d.m25221a(date);
            this.f31159e = z2;
            if (list != null) {
                for (C8765j c8765j : list) {
                    if (c8765j == null) {
                        throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                    }
                }
            }
            this.f31160f = list;
            this.f31161g = z3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    /* renamed from: a */
    public static C8877a m25017a(String str) {
        return new C8877a(str);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8876b c8876b = (C8876b) obj;
        String str = this.f31155a;
        String str2 = c8876b.f31155a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        C8914bm c8914bm = this.f31156b;
        C8914bm c8914bm2 = c8876b.f31156b;
        if ((c8914bm != c8914bm2 && !c8914bm.equals(c8914bm2)) || this.f31157c != c8876b.f31157c) {
            return false;
        }
        Date date = this.f31158d;
        Date date2 = c8876b.f31158d;
        if ((date != date2 && (date == null || !date.equals(date2))) || this.f31159e != c8876b.f31159e) {
            return false;
        }
        List<C8765j> list = this.f31160f;
        List<C8765j> list2 = c8876b.f31160f;
        return (list == list2 || (list != null && list.equals(list2))) && this.f31161g == c8876b.f31161g;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31155a, this.f31156b, Boolean.valueOf(this.f31157c), this.f31158d, Boolean.valueOf(this.f31159e), this.f31160f, Boolean.valueOf(this.f31161g)});
    }

    public final String toString() {
        return C8878b.f31169a.serialize((C8878b) this, false);
    }
}
