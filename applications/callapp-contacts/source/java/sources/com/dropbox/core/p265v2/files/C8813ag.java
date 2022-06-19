package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p265v2.files.C8949n;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.ag */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ag.class */
public final class C8813ag {

    /* renamed from: a */
    protected final C8949n f31032a;

    /* renamed from: com.dropbox.core.v2.files.ag$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ag$a.class */
    static final class C8814a extends AbstractC8558e<C8813ag> {

        /* renamed from: a */
        public static final C8814a f31033a = new C8814a();

        C8814a() {
        }

        /* renamed from: a */
        public static C8813ag m25076a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            C8949n c8949n = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("lock".equals(currentName)) {
                    c8949n = C8949n.C8950a.f31283a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (c8949n == null) {
                throw new JsonParseException(jsonParser, "Required field \"lock\" missing.");
            }
            C8813ag c8813ag = new C8813ag(c8949n);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31033a.serialize((C8814a) c8813ag, true);
            C8546b.m25355a(c8813ag);
            return c8813ag;
        }

        /* renamed from: a */
        public static void m25077a(C8813ag c8813ag, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("lock");
            C8949n.C8950a.f31283a.serialize((C8949n.C8950a) c8813ag.f31032a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8813ag deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return m25076a(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8813ag c8813ag, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            m25077a(c8813ag, jsonGenerator, z);
        }
    }

    public C8813ag(C8949n c8949n) {
        if (c8949n != null) {
            this.f31032a = c8949n;
            return;
        }
        throw new IllegalArgumentException("Required value for 'lock' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C8949n c8949n = this.f31032a;
        C8949n c8949n2 = ((C8813ag) obj).f31032a;
        return c8949n == c8949n2 || c8949n.equals(c8949n2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31032a});
    }

    public final String toString() {
        return C8814a.f31033a.serialize((C8814a) this, false);
    }
}
