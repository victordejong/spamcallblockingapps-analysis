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
/* renamed from: com.dropbox.core.v2.files.av */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/av.class */
public class C8862av {

    /* renamed from: e */
    protected final boolean f31133e;

    /* renamed from: com.dropbox.core.v2.files.av$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/av$a.class */
    public static final class C8863a extends AbstractC8558e<C8862av> {

        /* renamed from: a */
        public static final C8863a f31134a = new C8863a();

        private C8863a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C8862av deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("read_only".equals(currentName)) {
                    bool = C8548d.C8549a.f30452a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"read_only\" missing.");
            }
            C8862av c8862av = new C8862av(bool.booleanValue());
            if (!z) {
                expectEndObject(jsonParser);
            }
            c8862av.mo24936a();
            C8546b.m25355a(c8862av);
            return c8862av;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C8862av c8862av, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C8862av c8862av2 = c8862av;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("read_only");
            C8548d.C8549a.f30452a.serialize((C8548d.C8549a) Boolean.valueOf(c8862av2.f31133e), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C8862av(boolean z) {
        this.f31133e = z;
    }

    /* renamed from: a */
    public String mo24936a() {
        return C8863a.f31134a.serialize((C8863a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.f31133e == ((C8862av) obj).f31133e;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f31133e)});
    }

    public String toString() {
        return C8863a.f31134a.serialize((C8863a) this, false);
    }
}
