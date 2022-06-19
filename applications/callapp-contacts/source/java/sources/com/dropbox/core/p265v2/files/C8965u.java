package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.files.u */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/u.class */
public final class C8965u extends C8862av {

    /* renamed from: a */
    protected final String f31319a;

    /* renamed from: b */
    protected final String f31320b;

    /* renamed from: c */
    protected final boolean f31321c;

    /* renamed from: d */
    protected final boolean f31322d;

    /* renamed from: com.dropbox.core.v2.files.u$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/u$a.class */
    public static final class C8966a extends AbstractC8558e<C8965u> {

        /* renamed from: a */
        public static final C8966a f31323a = new C8966a();

        C8966a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8965u deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool2 = Boolean.FALSE;
            Boolean bool3 = Boolean.FALSE;
            String str2 = null;
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("read_only".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("parent_shared_folder_id".equals(currentName)) {
                    str2 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else if ("shared_folder_id".equals(currentName)) {
                    str3 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else if ("traverse_only".equals(currentName)) {
                    bool2 = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("no_access".equals(currentName)) {
                    bool3 = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"read_only\" missing.");
            }
            C8965u c8965u = new C8965u(bool.booleanValue(), str2, str3, bool2.booleanValue(), bool3.booleanValue());
            if (!z) {
                expectEndObject(jsonParser);
            }
            c8965u.mo24936a();
            C8546b.m25355a(c8965u);
            return c8965u;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8965u c8965u, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8965u c8965u2 = c8965u;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("read_only");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8965u2.f31133e), jsonGenerator);
            if (c8965u2.f31319a != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8965u2.f31319a, jsonGenerator);
            }
            if (c8965u2.f31320b != null) {
                jsonGenerator.writeFieldName("shared_folder_id");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8965u2.f31320b, jsonGenerator);
            }
            jsonGenerator.writeFieldName("traverse_only");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8965u2.f31321c), jsonGenerator);
            jsonGenerator.writeFieldName("no_access");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8965u2.f31322d), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8965u(boolean z) {
        this(z, null, null, false, false);
    }

    public C8965u(boolean z, String str, String str2, boolean z2, boolean z3) {
        super(z);
        if (str == null || Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            this.f31319a = str;
            if (str2 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.f31320b = str2;
            this.f31321c = z2;
            this.f31322d = z3;
            return;
        }
        throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
    }

    @Override // com.dropbox.core.p265v2.files.C8862av
    /* renamed from: a */
    public final String mo24936a() {
        return C8966a.f31323a.serialize((C8966a) this, true);
    }

    @Override // com.dropbox.core.p265v2.files.C8862av
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8965u c8965u = (C8965u) obj;
        if (this.f31133e != c8965u.f31133e) {
            return false;
        }
        String str = this.f31319a;
        String str2 = c8965u.f31319a;
        if (str != str2 && (str == null || !str.equals(str2))) {
            return false;
        }
        String str3 = this.f31320b;
        String str4 = c8965u.f31320b;
        return (str3 == str4 || (str3 != null && str3.equals(str4))) && this.f31321c == c8965u.f31321c && this.f31322d == c8965u.f31322d;
    }

    @Override // com.dropbox.core.p265v2.files.C8862av
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31319a, this.f31320b, Boolean.valueOf(this.f31321c), Boolean.valueOf(this.f31322d)});
    }

    @Override // com.dropbox.core.p265v2.files.C8862av
    public final String toString() {
        return C8966a.f31323a.serialize((C8966a) this, false);
    }
}
