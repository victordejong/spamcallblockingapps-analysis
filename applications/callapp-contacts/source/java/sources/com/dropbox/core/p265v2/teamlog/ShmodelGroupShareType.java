package com.dropbox.core.p265v2.teamlog;

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
/* renamed from: com.dropbox.core.v2.teamlog.ShmodelGroupShareType */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/ShmodelGroupShareType.class */
public class ShmodelGroupShareType {
    protected final String description;

    /* renamed from: com.dropbox.core.v2.teamlog.ShmodelGroupShareType$Serializer */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/ShmodelGroupShareType$Serializer.class */
    public static class Serializer extends AbstractC8558e<ShmodelGroupShareType> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public ShmodelGroupShareType deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("description".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"description\" missing.");
            }
            ShmodelGroupShareType shmodelGroupShareType = new ShmodelGroupShareType(str2);
            if (!z) {
                expectEndObject(jsonParser);
            }
            shmodelGroupShareType.toStringMultiline();
            C8546b.m25355a(shmodelGroupShareType);
            return shmodelGroupShareType;
        }

        public void serialize(ShmodelGroupShareType shmodelGroupShareType, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("description");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) shmodelGroupShareType.description, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public ShmodelGroupShareType(String str) {
        if (str != null) {
            this.description = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'description' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.description;
        String str2 = ((ShmodelGroupShareType) obj).description;
        return str == str2 || str.equals(str2);
    }

    public String getDescription() {
        return this.description;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.description});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
