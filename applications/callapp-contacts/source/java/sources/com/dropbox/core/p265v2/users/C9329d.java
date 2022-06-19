package com.dropbox.core.p265v2.users;

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
/* renamed from: com.dropbox.core.v2.users.d */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/d.class */
public final class C9329d {

    /* renamed from: a */
    protected final String f31960a;

    /* renamed from: b */
    protected final String f31961b;

    /* renamed from: com.dropbox.core.v2.users.d$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/d$a.class */
    public static final class C9330a extends AbstractC8558e<C9329d> {

        /* renamed from: a */
        public static final C9330a f31962a = new C9330a();

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9329d deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("id".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            C9329d c9329d = new C9329d(str2, str3);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31962a.serialize((C9330a) c9329d, true);
            C8546b.m25355a(c9329d);
            return c9329d;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9329d c9329d, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9329d c9329d2 = c9329d;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9329d2.f31960a, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9329d2.f31961b, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9329d(String str, String str2) {
        if (str != null) {
            this.f31960a = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.f31961b = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'id' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9329d c9329d = (C9329d) obj;
        String str = this.f31960a;
        String str2 = c9329d.f31960a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f31961b;
        String str4 = c9329d.f31961b;
        return str3 == str4 || str3.equals(str4);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31960a, this.f31961b});
    }

    public final String toString() {
        return C9330a.f31962a.serialize((C9330a) this, false);
    }
}
