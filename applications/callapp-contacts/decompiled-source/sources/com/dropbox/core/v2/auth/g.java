package com.dropbox.core.v2.auth;

import com.dropbox.core.a.b;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    protected final String f17939a;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/auth/g$a.class */
    public static final class a extends e<g> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17940a = new a();

        public static g a(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
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
                    if ("required_scope".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (str2 != null) {
                    g gVar = new g(str2);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f17940a.serialize((a) gVar, true);
                    b.a(gVar);
                    return gVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"required_scope\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        public static void a(g gVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("required_scope");
            d.h.f17717a.serialize((d.h) gVar.f17939a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ g deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            return a(jsonParser, z);
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(g gVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            a(gVar, jsonGenerator, z);
        }
    }

    public g(String str) {
        if (str != null) {
            this.f17939a = str;
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
        String str = this.f17939a;
        String str2 = ((g) obj).f17939a;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17939a});
    }

    public final String toString() {
        return a.f17940a.serialize((a) this, false);
    }
}
