package com.dropbox.core.v2.teamlog;

import com.dropbox.core.a.b;
import com.dropbox.core.a.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/ShmodelGroupShareDetails.class */
public class ShmodelGroupShareDetails {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$Serializer.class */
    public static class Serializer extends e<ShmodelGroupShareDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.a.e
        public ShmodelGroupShareDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                ShmodelGroupShareDetails shmodelGroupShareDetails = new ShmodelGroupShareDetails();
                if (!z) {
                    expectEndObject(jsonParser);
                }
                shmodelGroupShareDetails.toStringMultiline();
                b.a(shmodelGroupShareDetails);
                return shmodelGroupShareDetails;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        public void serialize(ShmodelGroupShareDetails shmodelGroupShareDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass());
    }

    public int hashCode() {
        return getClass().toString().hashCode();
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
