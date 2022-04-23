package com.dropbox.core.v2.files;

import com.dropbox.core.a.b;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.files.n;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ag.class */
public final class ag {

    /* renamed from: a  reason: collision with root package name */
    protected final n f18150a;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ag$a.class */
    static final class a extends e<ag> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18151a = new a();

        a() {
        }

        public static ag a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            n nVar = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("lock".equals(currentName)) {
                        nVar = n.a.f18338a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (nVar != null) {
                    ag agVar = new ag(nVar);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18151a.serialize((a) agVar, true);
                    b.a(agVar);
                    return agVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"lock\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        public static void a(ag agVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("lock");
            n.a.f18338a.serialize((n.a) agVar.f18150a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ ag deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(ag agVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            a(agVar, jsonGenerator, z);
        }
    }

    public ag(n nVar) {
        if (nVar != null) {
            this.f18150a = nVar;
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
        n nVar = this.f18150a;
        n nVar2 = ((ag) obj).f18150a;
        return nVar == nVar2 || nVar.equals(nVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18150a});
    }

    public final String toString() {
        return a.f18151a.serialize((a) this, false);
    }
}
