package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer.class */
public class StackTraceElementDeserializer extends StdScalarDeserializer<StackTraceElement> {
    private static final long serialVersionUID = 1;

    public StackTraceElementDeserializer() {
        super(StackTraceElement.class);
    }

    @Deprecated
    protected StackTraceElement constructValue(DeserializationContext deserializationContext, String str, String str2, String str3, int i, String str4, String str5) {
        return constructValue(deserializationContext, str, str2, str3, i, str4, str5, null);
    }

    protected StackTraceElement constructValue(DeserializationContext deserializationContext, String str, String str2, String str3, int i, String str4, String str5, String str6) {
        return new StackTraceElement(str, str2, str3, i);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public StackTraceElement deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.currentToken();
        if (currentToken == JsonToken.START_OBJECT) {
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = "";
            String str5 = str4;
            String str6 = str5;
            int i = -1;
            while (true) {
                JsonToken nextValue = jsonParser.nextValue();
                if (nextValue == JsonToken.END_OBJECT) {
                    return constructValue(deserializationContext, str4, str5, str6, i, str, str2, str3);
                }
                String currentName = jsonParser.currentName();
                if ("className".equals(currentName)) {
                    str4 = jsonParser.getText();
                    str5 = str5;
                    str6 = str6;
                    i = i;
                    str = str;
                    str2 = str2;
                    str3 = str3;
                } else if ("classLoaderName".equals(currentName)) {
                    str3 = jsonParser.getText();
                    str4 = str4;
                    str5 = str5;
                    str6 = str6;
                    i = i;
                    str = str;
                    str2 = str2;
                } else if ("fileName".equals(currentName)) {
                    str6 = jsonParser.getText();
                    str4 = str4;
                    str5 = str5;
                    i = i;
                    str = str;
                    str2 = str2;
                    str3 = str3;
                } else if ("lineNumber".equals(currentName)) {
                    i = nextValue.isNumeric() ? jsonParser.getIntValue() : _parseIntPrimitive(jsonParser, deserializationContext);
                    str4 = str4;
                    str5 = str5;
                    str6 = str6;
                    str = str;
                    str2 = str2;
                    str3 = str3;
                } else if ("methodName".equals(currentName)) {
                    str5 = jsonParser.getText();
                    str4 = str4;
                    str6 = str6;
                    i = i;
                    str = str;
                    str2 = str2;
                    str3 = str3;
                } else {
                    str4 = str4;
                    str5 = str5;
                    str6 = str6;
                    i = i;
                    str = str;
                    str2 = str2;
                    str3 = str3;
                    if (!"nativeMethod".equals(currentName)) {
                        if ("moduleName".equals(currentName)) {
                            str = jsonParser.getText();
                            str4 = str4;
                            str5 = str5;
                            str6 = str6;
                            i = i;
                            str2 = str2;
                            str3 = str3;
                        } else if ("moduleVersion".equals(currentName)) {
                            str2 = jsonParser.getText();
                            str4 = str4;
                            str5 = str5;
                            str6 = str6;
                            i = i;
                            str = str;
                            str3 = str3;
                        } else {
                            str4 = str4;
                            str5 = str5;
                            str6 = str6;
                            i = i;
                            str = str;
                            str2 = str2;
                            str3 = str3;
                            if (!"declaringClass".equals(currentName)) {
                                str4 = str4;
                                str5 = str5;
                                str6 = str6;
                                i = i;
                                str = str;
                                str2 = str2;
                                str3 = str3;
                                if (!"format".equals(currentName)) {
                                    handleUnknownProperty(jsonParser, deserializationContext, this._valueClass, currentName);
                                    str3 = str3;
                                    str2 = str2;
                                    str = str;
                                    i = i;
                                    str6 = str6;
                                    str5 = str5;
                                    str4 = str4;
                                }
                            }
                        }
                    }
                }
                jsonParser.skipChildren();
            }
        } else if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            return (StackTraceElement) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        } else {
            jsonParser.nextToken();
            StackTraceElement deserialize = deserialize(jsonParser, deserializationContext);
            if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                handleMissingEndArrayForSingle(jsonParser, deserializationContext);
            }
            return deserialize;
        }
    }
}
