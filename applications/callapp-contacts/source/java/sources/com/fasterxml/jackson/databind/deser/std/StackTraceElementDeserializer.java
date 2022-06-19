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
        String str;
        String str2;
        String str3;
        int i;
        String str4;
        String str5;
        String str6;
        JsonToken currentToken = jsonParser.currentToken();
        if (currentToken != JsonToken.START_OBJECT) {
            if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                return (StackTraceElement) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
            }
            jsonParser.nextToken();
            StackTraceElement deserialize = deserialize(jsonParser, deserializationContext);
            if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                handleMissingEndArrayForSingle(jsonParser, deserializationContext);
            }
            return deserialize;
        }
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = "";
        String str11 = str10;
        String str12 = str11;
        int i2 = -1;
        while (true) {
            JsonToken nextValue = jsonParser.nextValue();
            if (nextValue == JsonToken.END_OBJECT) {
                return constructValue(deserializationContext, str10, str11, str12, i2, str7, str8, str9);
            }
            String currentName = jsonParser.currentName();
            if ("className".equals(currentName)) {
                str6 = jsonParser.getText();
                str5 = str11;
                str4 = str12;
                i = i2;
                str3 = str7;
                str2 = str8;
                str = str9;
            } else if ("classLoaderName".equals(currentName)) {
                str = jsonParser.getText();
                str6 = str10;
                str5 = str11;
                str4 = str12;
                i = i2;
                str3 = str7;
                str2 = str8;
            } else if ("fileName".equals(currentName)) {
                str4 = jsonParser.getText();
                str6 = str10;
                str5 = str11;
                i = i2;
                str3 = str7;
                str2 = str8;
                str = str9;
            } else if ("lineNumber".equals(currentName)) {
                i = nextValue.isNumeric() ? jsonParser.getIntValue() : _parseIntPrimitive(jsonParser, deserializationContext);
                str6 = str10;
                str5 = str11;
                str4 = str12;
                str3 = str7;
                str2 = str8;
                str = str9;
            } else if ("methodName".equals(currentName)) {
                str5 = jsonParser.getText();
                str6 = str10;
                str4 = str12;
                i = i2;
                str3 = str7;
                str2 = str8;
                str = str9;
            } else {
                str6 = str10;
                str5 = str11;
                str4 = str12;
                i = i2;
                str3 = str7;
                str2 = str8;
                str = str9;
                if (!"nativeMethod".equals(currentName)) {
                    if ("moduleName".equals(currentName)) {
                        str3 = jsonParser.getText();
                        str6 = str10;
                        str5 = str11;
                        str4 = str12;
                        i = i2;
                        str2 = str8;
                        str = str9;
                    } else if ("moduleVersion".equals(currentName)) {
                        str2 = jsonParser.getText();
                        str6 = str10;
                        str5 = str11;
                        str4 = str12;
                        i = i2;
                        str3 = str7;
                        str = str9;
                    } else {
                        str6 = str10;
                        str5 = str11;
                        str4 = str12;
                        i = i2;
                        str3 = str7;
                        str2 = str8;
                        str = str9;
                        if (!"declaringClass".equals(currentName)) {
                            str6 = str10;
                            str5 = str11;
                            str4 = str12;
                            i = i2;
                            str3 = str7;
                            str2 = str8;
                            str = str9;
                            if (!"format".equals(currentName)) {
                                handleUnknownProperty(jsonParser, deserializationContext, this._valueClass, currentName);
                                str = str9;
                                str2 = str8;
                                str3 = str7;
                                i = i2;
                                str4 = str12;
                                str5 = str11;
                                str6 = str10;
                            }
                        }
                    }
                }
            }
            jsonParser.skipChildren();
            str10 = str6;
            str11 = str5;
            str12 = str4;
            i2 = i;
            str7 = str3;
            str8 = str2;
            str9 = str;
        }
    }
}
