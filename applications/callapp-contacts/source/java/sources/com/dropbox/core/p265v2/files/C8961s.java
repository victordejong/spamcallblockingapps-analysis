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
/* renamed from: com.dropbox.core.v2.files.s */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/s.class */
public final class C8961s extends C8862av {

    /* renamed from: a */
    protected final String f31311a;

    /* renamed from: b */
    protected final String f31312b;

    /* renamed from: com.dropbox.core.v2.files.s$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/s$a.class */
    public static final class C8962a extends AbstractC8558e<C8961s> {

        /* renamed from: a */
        public static final C8962a f31313a = new C8962a();

        C8962a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8961s deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("read_only".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else if ("parent_shared_folder_id".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("modified_by".equals(currentName)) {
                    str3 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"read_only\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"parent_shared_folder_id\" missing.");
            }
            C8961s c8961s = new C8961s(bool.booleanValue(), str2, str3);
            if (!z) {
                expectEndObject(jsonParser);
            }
            c8961s.mo24936a();
            C8546b.m25355a(c8961s);
            return c8961s;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8961s c8961s, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8961s c8961s2 = c8961s;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("read_only");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8961s2.f31133e), jsonGenerator);
            jsonGenerator.writeFieldName("parent_shared_folder_id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8961s2.f31311a, jsonGenerator);
            if (c8961s2.f31312b != null) {
                jsonGenerator.writeFieldName("modified_by");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8961s2.f31312b, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8961s(boolean z, String str) {
        this(z, str, null);
    }

    public C8961s(boolean z, String str, String str2) {
        super(z);
        if (str != null) {
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            this.f31311a = str;
            if (str2 != null) {
                if (str2.length() < 40) {
                    throw new IllegalArgumentException("String 'modifiedBy' is shorter than 40");
                }
                if (str2.length() > 40) {
                    throw new IllegalArgumentException("String 'modifiedBy' is longer than 40");
                }
            }
            this.f31312b = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'parentSharedFolderId' is null");
    }

    @Override // com.dropbox.core.p265v2.files.C8862av
    /* renamed from: a */
    public final String mo24936a() {
        return C8962a.f31313a.serialize((C8962a) this, true);
    }

    @Override // com.dropbox.core.p265v2.files.C8862av
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8961s c8961s = (C8961s) obj;
        if (this.f31133e != c8961s.f31133e) {
            return false;
        }
        String str = this.f31311a;
        String str2 = c8961s.f31311a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f31312b;
        String str4 = c8961s.f31312b;
        if (str3 == str4) {
            return true;
        }
        return str3 != null && str3.equals(str4);
    }

    @Override // com.dropbox.core.p265v2.files.C8862av
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f31311a, this.f31312b});
    }

    @Override // com.dropbox.core.p265v2.files.C8862av
    public final String toString() {
        return C8962a.f31313a.serialize((C8962a) this, false);
    }
}
