package com.dropbox.core.v2.files;

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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ax.class */
public final class ax {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18221a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ax$a.class */
    public static final class a extends e<ax> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18222a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ ax deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    if ("target".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (str2 != null) {
                    ax axVar = new ax(str2);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18222a.serialize((a) axVar, true);
                    b.a(axVar);
                    return axVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"target\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(ax axVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            ax axVar2 = axVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("target");
            d.h.f17717a.serialize((d.h) axVar2.f18221a, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public ax(String str) {
        if (str != null) {
            this.f18221a = str;
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
        String str = this.f18221a;
        String str2 = ((ax) obj).f18221a;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18221a});
    }

    public final String toString() {
        return a.f18222a.serialize((a) this, false);
    }
}
