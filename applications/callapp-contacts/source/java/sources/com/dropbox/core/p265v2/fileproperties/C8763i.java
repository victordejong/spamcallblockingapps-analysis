package com.dropbox.core.p265v2.fileproperties;

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
/* renamed from: com.dropbox.core.v2.fileproperties.i */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/i.class */
public final class C8763i {

    /* renamed from: a */
    protected final String f30921a;

    /* renamed from: b */
    protected final String f30922b;

    /* renamed from: com.dropbox.core.v2.fileproperties.i$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/i$a.class */
    static final class C8764a extends AbstractC8558e<C8763i> {

        /* renamed from: a */
        public static final C8764a f30923a = new C8764a();

        C8764a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8763i deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("name".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("value".equals(currentName)) {
                    str3 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"value\" missing.");
            }
            C8763i c8763i = new C8763i(str2, str3);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f30923a.serialize((C8764a) c8763i, true);
            C8546b.m25355a(c8763i);
            return c8763i;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8763i c8763i, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8763i c8763i2 = c8763i;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8763i2.f30921a, jsonGenerator);
            jsonGenerator.writeFieldName("value");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8763i2.f30922b, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8763i(String str, String str2) {
        if (str != null) {
            this.f30921a = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'value' is null");
            }
            this.f30922b = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8763i c8763i = (C8763i) obj;
        String str = this.f30921a;
        String str2 = c8763i.f30921a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f30922b;
        String str4 = c8763i.f30922b;
        return str3 == str4 || str3.equals(str4);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30921a, this.f30922b});
    }

    public final String toString() {
        return C8764a.f30923a.serialize((C8764a) this, false);
    }
}
