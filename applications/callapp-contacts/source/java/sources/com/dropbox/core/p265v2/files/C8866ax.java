package com.dropbox.core.p265v2.files;

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
/* renamed from: com.dropbox.core.v2.files.ax */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ax.class */
public final class C8866ax {

    /* renamed from: a */
    protected final String f31139a;

    /* renamed from: com.dropbox.core.v2.files.ax$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ax$a.class */
    public static final class C8867a extends AbstractC8558e<C8866ax> {

        /* renamed from: a */
        public static final C8867a f31140a = new C8867a();

        C8867a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8866ax deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("target".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"target\" missing.");
            }
            C8866ax c8866ax = new C8866ax(str2);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31140a.serialize((C8867a) c8866ax, true);
            C8546b.m25355a(c8866ax);
            return c8866ax;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8866ax c8866ax, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8866ax c8866ax2 = c8866ax;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("target");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c8866ax2.f31139a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8866ax(String str) {
        if (str != null) {
            this.f31139a = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'target' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.f31139a;
        String str2 = ((C8866ax) obj).f31139a;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31139a});
    }

    public final String toString() {
        return C8867a.f31140a.serialize((C8867a) this, false);
    }
}
