package com.dropbox.core.v2.sharing;

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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18661a;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/g$a.class */
    static final class a extends e<g> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18662a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ g deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    if ("name".equals(currentName)) {
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
                    f18662a.serialize((a) gVar, true);
                    b.a(gVar);
                    return gVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(g gVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            g gVar2 = gVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            d.h.f17717a.serialize((d.h) gVar2.f18661a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public g(String str) {
        if (str != null) {
            this.f18661a = str;
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
        String str = this.f18661a;
        String str2 = ((g) obj).f18661a;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18661a});
    }

    public final String toString() {
        return a.f18662a.serialize((a) this, false);
    }
}
