package com.dropbox.core.p265v2.auth;

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
/* renamed from: com.dropbox.core.v2.auth.g */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/g.class */
public final class C8681g {

    /* renamed from: a */
    protected final String f30771a;

    /* renamed from: com.dropbox.core.v2.auth.g$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/g$a.class */
    public static final class C8682a extends AbstractC8558e<C8681g> {

        /* renamed from: a */
        public static final C8682a f30772a = new C8682a();

        /* renamed from: a */
        public static C8681g m25181a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("required_scope".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"required_scope\" missing.");
            }
            C8681g c8681g = new C8681g(str2);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f30772a.serialize((C8682a) c8681g, true);
            C8546b.m25355a(c8681g);
            return c8681g;
        }

        /* renamed from: a */
        public static void m25182a(C8681g c8681g, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("required_scope");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8681g.f30771a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8681g deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m25181a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8681g c8681g, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            m25182a(c8681g, jsonGenerator, z);
        }
    }

    public C8681g(String str) {
        if (str != null) {
            this.f30771a = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'requiredScope' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.f30771a;
        String str2 = ((C8681g) obj).f30771a;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30771a});
    }

    public final String toString() {
        return C8682a.f30772a.serialize((C8682a) this, false);
    }
}
