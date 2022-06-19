package com.dropbox.core.p263a;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.a.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/a.class */
public abstract class AbstractC8545a<T> extends AbstractC8547c<T> {
    protected static final String TAG_FIELD = ".tag";

    protected static boolean hasTag(JsonParser jsonParser) throws IOException, JsonParseException {
        return jsonParser.getCurrentToken() == JsonToken.FIELD_NAME && TAG_FIELD.equals(jsonParser.getCurrentName());
    }

    public static String readTag(JsonParser jsonParser) throws IOException, JsonParseException {
        if (!hasTag(jsonParser)) {
            return null;
        }
        jsonParser.nextToken();
        String stringValue = getStringValue(jsonParser);
        jsonParser.nextToken();
        return stringValue;
    }

    public void writeTag(String str, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        if (str != null) {
            jsonGenerator.writeStringField(TAG_FIELD, str);
        }
    }
}
