package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer.class */
public class StackTraceElementDeserializer extends StdScalarDeserializer<StackTraceElement> {
    public StackTraceElementDeserializer() {
        super(StackTraceElement.class);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public StackTraceElement deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_OBJECT) {
            String str = "";
            String str2 = "";
            String str3 = str2;
            int i = -1;
            while (true) {
                JsonToken nextValue = jsonParser.nextValue();
                if (nextValue == JsonToken.END_OBJECT) {
                    return new StackTraceElement(str, str2, str3, i);
                }
                String currentName = jsonParser.getCurrentName();
                if ("className".equals(currentName)) {
                    str = jsonParser.getText();
                } else if ("fileName".equals(currentName)) {
                    str3 = jsonParser.getText();
                } else if ("lineNumber".equals(currentName)) {
                    if (nextValue.isNumeric()) {
                        i = jsonParser.getIntValue();
                    } else {
                        throw JsonMappingException.from(jsonParser, "Non-numeric token (" + nextValue + ") for property 'lineNumber'");
                    }
                } else if ("methodName".equals(currentName)) {
                    str2 = jsonParser.getText();
                } else if (!"nativeMethod".equals(currentName)) {
                    handleUnknownProperty(jsonParser, deserializationContext, this._valueClass, currentName);
                }
            }
        } else if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        } else {
            jsonParser.nextToken();
            StackTraceElement deserialize = deserialize(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return deserialize;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'java.lang.StackTraceElement' value but there was more than a single value in the array");
        }
    }
}
