package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.NullValueProvider;
import com.fasterxml.jackson.databind.deser.impl.NullsConstantProvider;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.io.IOException;
import java.util.Objects;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/StringArrayDeserializer.class */
public final class StringArrayDeserializer extends StdDeserializer<String[]> implements ContextualDeserializer {
    private static final String[] NO_STRINGS = new String[0];
    public static final StringArrayDeserializer instance = new StringArrayDeserializer();
    private static final long serialVersionUID = 2;
    protected JsonDeserializer<String> _elementDeserializer;
    protected final NullValueProvider _nullProvider;
    protected final boolean _skipNullValues;
    protected final Boolean _unwrapSingle;

    public StringArrayDeserializer() {
        this(null, null, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected StringArrayDeserializer(JsonDeserializer<?> jsonDeserializer, NullValueProvider nullValueProvider, Boolean bool) {
        super(String[].class);
        this._elementDeserializer = jsonDeserializer;
        this._nullProvider = nullValueProvider;
        this._unwrapSingle = bool;
        this._skipNullValues = NullsConstantProvider.isSkipper(nullValueProvider);
    }

    private final String[] handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._unwrapSingle == Boolean.TRUE || (this._unwrapSingle == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))) {
            return new String[]{jsonParser.hasToken(JsonToken.VALUE_NULL) ? (String) this._nullProvider.getNullValue(deserializationContext) : _parseString(jsonParser, deserializationContext)};
        }
        return jsonParser.hasToken(JsonToken.VALUE_STRING) ? _deserializeFromString(jsonParser, deserializationContext) : (String[]) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
    }

    protected final String[] _deserializeCustom(JsonParser jsonParser, DeserializationContext deserializationContext, String[] strArr) throws IOException {
        int i;
        Object[] objArr;
        String deserialize;
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        if (strArr == null) {
            objArr = leaseObjectBuffer.resetAndStart();
            i = 0;
        } else {
            i = strArr.length;
            objArr = leaseObjectBuffer.resetAndStart(strArr, i);
        }
        JsonDeserializer<String> jsonDeserializer = this._elementDeserializer;
        Object[] objArr2 = objArr;
        while (true) {
            try {
                if (jsonParser.nextTextValue() == null) {
                    JsonToken currentToken = jsonParser.currentToken();
                    if (currentToken == JsonToken.END_ARRAY) {
                        String[] strArr2 = (String[]) leaseObjectBuffer.completeAndClearBuffer(objArr2, i, String.class);
                        deserializationContext.returnObjectBuffer(leaseObjectBuffer);
                        return strArr2;
                    } else if (currentToken != JsonToken.VALUE_NULL) {
                        deserialize = jsonDeserializer.deserialize(jsonParser, deserializationContext);
                    } else if (!this._skipNullValues) {
                        deserialize = (String) this._nullProvider.getNullValue(deserializationContext);
                    }
                } else {
                    deserialize = jsonDeserializer.deserialize(jsonParser, deserializationContext);
                }
                int i2 = i;
                Object[] objArr3 = objArr2;
                if (i >= objArr2.length) {
                    objArr3 = leaseObjectBuffer.appendCompletedChunk(objArr2);
                    i2 = 0;
                }
                objArr3[i2] = deserialize;
                i = i2 + 1;
                objArr2 = objArr3;
            } catch (Exception e) {
                throw JsonMappingException.wrapWithPath(e, String.class, i);
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public final JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<?> findConvertingContentDeserializer = findConvertingContentDeserializer(deserializationContext, beanProperty, this._elementDeserializer);
        JavaType constructType = deserializationContext.constructType(String.class);
        JsonDeserializer<Object> findContextualValueDeserializer = findConvertingContentDeserializer == null ? deserializationContext.findContextualValueDeserializer(constructType, beanProperty) : deserializationContext.handleSecondaryContextualization(findConvertingContentDeserializer, beanProperty, constructType);
        Boolean findFormatFeature = findFormatFeature(deserializationContext, beanProperty, String[].class, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        NullValueProvider findContentNullProvider = findContentNullProvider(deserializationContext, beanProperty, findContextualValueDeserializer);
        JsonDeserializer<Object> jsonDeserializer = findContextualValueDeserializer;
        if (findContextualValueDeserializer != null) {
            jsonDeserializer = findContextualValueDeserializer;
            if (isDefaultDeserializer(findContextualValueDeserializer)) {
                jsonDeserializer = null;
            }
        }
        return (this._elementDeserializer == jsonDeserializer && Objects.equals(this._unwrapSingle, findFormatFeature) && this._nullProvider == findContentNullProvider) ? this : new StringArrayDeserializer(jsonDeserializer, findContentNullProvider, findFormatFeature);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public final String[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (!jsonParser.isExpectedStartArrayToken()) {
            return handleNonArray(jsonParser, deserializationContext);
        }
        if (this._elementDeserializer != null) {
            return _deserializeCustom(jsonParser, deserializationContext, null);
        }
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
        int i = 0;
        while (true) {
            try {
                String nextTextValue = jsonParser.nextTextValue();
                String str = nextTextValue;
                if (nextTextValue == null) {
                    JsonToken currentToken = jsonParser.currentToken();
                    if (currentToken == JsonToken.END_ARRAY) {
                        String[] strArr = (String[]) leaseObjectBuffer.completeAndClearBuffer(resetAndStart, i, String.class);
                        deserializationContext.returnObjectBuffer(leaseObjectBuffer);
                        return strArr;
                    } else if (currentToken != JsonToken.VALUE_NULL) {
                        str = _parseString(jsonParser, deserializationContext);
                    } else if (!this._skipNullValues) {
                        str = (String) this._nullProvider.getNullValue(deserializationContext);
                    }
                }
                Object[] objArr = resetAndStart;
                int i2 = i;
                if (i >= resetAndStart.length) {
                    objArr = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                    i2 = 0;
                }
                objArr[i2] = str;
                i = i2 + 1;
                resetAndStart = objArr;
            } catch (Exception e) {
                throw JsonMappingException.wrapWithPath(e, resetAndStart, leaseObjectBuffer.bufferedSize() + i);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    public final String[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, String[] strArr) throws IOException {
        if (!jsonParser.isExpectedStartArrayToken()) {
            String[] handleNonArray = handleNonArray(jsonParser, deserializationContext);
            if (handleNonArray == null) {
                return strArr;
            }
            int length = strArr.length;
            String[] strArr2 = new String[handleNonArray.length + length];
            System.arraycopy(strArr, 0, strArr2, 0, length);
            System.arraycopy(handleNonArray, 0, strArr2, length, handleNonArray.length);
            return strArr2;
        } else if (this._elementDeserializer != null) {
            return _deserializeCustom(jsonParser, deserializationContext, strArr);
        } else {
            ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
            int length2 = strArr.length;
            Object[] resetAndStart = leaseObjectBuffer.resetAndStart(strArr, length2);
            while (true) {
                try {
                    strArr = resetAndStart;
                    String nextTextValue = jsonParser.nextTextValue();
                    String str = nextTextValue;
                    if (nextTextValue == null) {
                        JsonToken currentToken = jsonParser.currentToken();
                        if (currentToken == JsonToken.END_ARRAY) {
                            String[] strArr3 = (String[]) leaseObjectBuffer.completeAndClearBuffer(strArr, length2, String.class);
                            deserializationContext.returnObjectBuffer(leaseObjectBuffer);
                            return strArr3;
                        } else if (currentToken != JsonToken.VALUE_NULL) {
                            str = _parseString(jsonParser, deserializationContext);
                        } else if (this._skipNullValues) {
                            return NO_STRINGS;
                        } else {
                            str = (String) this._nullProvider.getNullValue(deserializationContext);
                        }
                    }
                    int i = length2;
                    String[] strArr4 = strArr;
                    if (length2 >= strArr.length) {
                        strArr4 = leaseObjectBuffer.appendCompletedChunk(strArr);
                        i = 0;
                    }
                    strArr4[i] = str;
                    length2 = i + 1;
                    resetAndStart = strArr4;
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, strArr, leaseObjectBuffer.bufferedSize() + length2);
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public final Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public final AccessPattern getEmptyAccessPattern() {
        return AccessPattern.CONSTANT;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public final Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return NO_STRINGS;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public final LogicalType logicalType() {
        return LogicalType.Array;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public final Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.TRUE;
    }
}
