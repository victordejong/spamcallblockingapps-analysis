package com.dropbox.core.p265v2.teamlog;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.teamlog.ShmodelGroupShareDetails */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/ShmodelGroupShareDetails.class */
public class ShmodelGroupShareDetails {

    /* renamed from: com.dropbox.core.v2.teamlog.ShmodelGroupShareDetails$Serializer */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$Serializer.class */
    public static class Serializer extends AbstractC8558e<ShmodelGroupShareDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public ShmodelGroupShareDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            ShmodelGroupShareDetails shmodelGroupShareDetails = new ShmodelGroupShareDetails();
            if (!z) {
                expectEndObject(jsonParser);
            }
            shmodelGroupShareDetails.toStringMultiline();
            C8546b.m25355a(shmodelGroupShareDetails);
            return shmodelGroupShareDetails;
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
