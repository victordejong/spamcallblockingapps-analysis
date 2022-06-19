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
/* renamed from: com.dropbox.core.v2.files.au */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/au.class */
public final class C8860au {

    /* renamed from: a */
    protected final String f31130a;

    /* renamed from: b */
    protected final String f31131b;

    /* renamed from: com.dropbox.core.v2.files.au$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/au$a.class */
    static final class C8861a extends AbstractC8558e<C8860au> {

        /* renamed from: a */
        public static final C8861a f31132a = new C8861a();

        C8861a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8860au deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("url".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("password".equals(currentName)) {
                    str3 = (String) C8548d.m25354a(C8548d.C8556h.f30459a).deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"url\" missing.");
            }
            C8860au c8860au = new C8860au(str2, str3);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31132a.serialize((C8861a) c8860au, true);
            C8546b.m25355a(c8860au);
            return c8860au;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8860au c8860au, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8860au c8860au2 = c8860au;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("url");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8860au2.f31130a, jsonGenerator);
            if (c8860au2.f31131b != null) {
                jsonGenerator.writeFieldName("password");
                C8548d.m25354a(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8860au2.f31131b, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8860au(String str) {
        this(str, null);
    }

    public C8860au(String str, String str2) {
        if (str != null) {
            this.f31130a = str;
            this.f31131b = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'url' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8860au c8860au = (C8860au) obj;
        String str = this.f31130a;
        String str2 = c8860au.f31130a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f31131b;
        String str4 = c8860au.f31131b;
        if (str3 == str4) {
            return true;
        }
        return str3 != null && str3.equals(str4);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31130a, this.f31131b});
    }

    public final String toString() {
        return C8861a.f31132a.serialize((C8861a) this, false);
    }
}
