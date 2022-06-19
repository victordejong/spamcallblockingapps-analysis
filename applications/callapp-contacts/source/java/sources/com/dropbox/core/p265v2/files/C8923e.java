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
/* renamed from: com.dropbox.core.v2.files.e */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/e.class */
public final class C8923e {

    /* renamed from: a */
    protected final String f31243a;

    /* renamed from: b */
    protected final String f31244b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.e$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/e$a.class */
    public static final class C8924a extends AbstractC8558e<C8923e> {

        /* renamed from: a */
        public static final C8924a f31245a = new C8924a();

        C8924a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8923e deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("parent_rev".equals(currentName)) {
                    str3 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            C8923e c8923e = new C8923e(str2, str3);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31245a.serialize((C8924a) c8923e, true);
            C8546b.m25355a(c8923e);
            return c8923e;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8923e c8923e, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8923e c8923e2 = c8923e;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8923e2.f31243a, jsonGenerator);
            if (c8923e2.f31244b != null) {
                jsonGenerator.writeFieldName("parent_rev");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8923e2.f31244b, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8923e(String str) {
        this(str, null);
    }

    public C8923e(String str, String str2) {
        if (str != null) {
            if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.f31243a = str;
            if (str2 != null) {
                if (str2.length() < 9) {
                    throw new IllegalArgumentException("String 'parentRev' is shorter than 9");
                }
                if (!Pattern.matches("[0-9a-f]+", str2)) {
                    throw new IllegalArgumentException("String 'parentRev' does not match pattern");
                }
            }
            this.f31244b = str2;
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
        C8923e c8923e = (C8923e) obj;
        String str = this.f31243a;
        String str2 = c8923e.f31243a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f31244b;
        String str4 = c8923e.f31244b;
        if (str3 == str4) {
            return true;
        }
        return str3 != null && str3.equals(str4);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31243a, this.f31244b});
    }

    public final String toString() {
        return C8924a.f31245a.serialize((C8924a) this, false);
    }
}
