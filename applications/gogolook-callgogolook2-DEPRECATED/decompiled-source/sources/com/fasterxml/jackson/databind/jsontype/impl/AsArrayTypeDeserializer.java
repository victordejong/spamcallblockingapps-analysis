package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.util.JsonParserSequence;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer.class */
public class AsArrayTypeDeserializer extends TypeDeserializerBase implements Serializable {
    public AsArrayTypeDeserializer(JavaType javaType, TypeIdResolver typeIdResolver, String str, boolean z, Class<?> cls) {
        super(javaType, typeIdResolver, str, z, cls);
    }

    public AsArrayTypeDeserializer(AsArrayTypeDeserializer asArrayTypeDeserializer, BeanProperty beanProperty) {
        super(asArrayTypeDeserializer, beanProperty);
    }

    public Object _deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object typeId;
        if (jsonParser.canReadTypeId() && (typeId = jsonParser.getTypeId()) != null) {
            return _deserializeWithNativeTypeId(jsonParser, deserializationContext, typeId);
        }
        boolean isExpectedStartArrayToken = jsonParser.isExpectedStartArrayToken();
        String _locateTypeId = _locateTypeId(jsonParser, deserializationContext);
        JsonDeserializer<Object> _findDeserializer = _findDeserializer(deserializationContext, _locateTypeId);
        JsonParser jsonParser2 = jsonParser;
        if (this._typeIdVisible) {
            jsonParser2 = jsonParser;
            if (!_usesExternalId()) {
                jsonParser2 = jsonParser;
                if (jsonParser.getCurrentToken() == JsonToken.START_OBJECT) {
                    TokenBuffer tokenBuffer = new TokenBuffer((ObjectCodec) null, false);
                    tokenBuffer.writeStartObject();
                    tokenBuffer.writeFieldName(this._typePropertyName);
                    tokenBuffer.writeString(_locateTypeId);
                    jsonParser2 = JsonParserSequence.createFlattened(tokenBuffer.asParser(jsonParser), jsonParser);
                    jsonParser2.nextToken();
                }
            }
        }
        Object deserialize = _findDeserializer.deserialize(jsonParser2, deserializationContext);
        if (isExpectedStartArrayToken) {
            JsonToken nextToken = jsonParser2.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken != jsonToken) {
                throw deserializationContext.wrongTokenException(jsonParser2, jsonToken, "expected closing END_ARRAY after type information and deserialized value");
            }
        }
        return deserialize;
    }

    public String _locateTypeId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.isExpectedStartArrayToken()) {
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.VALUE_STRING;
            if (nextToken == jsonToken) {
                String text = jsonParser.getText();
                jsonParser.nextToken();
                return text;
            } else if (this._defaultImpl != null) {
                return this._idResolver.idFromBaseType();
            } else {
                throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "need JSON String that contains type id (for subtype of " + baseTypeName() + ")");
            }
        } else if (this._defaultImpl != null) {
            return this._idResolver.idFromBaseType();
        } else {
            JsonToken jsonToken2 = JsonToken.START_ARRAY;
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken2, "need JSON Array to contain As.WRAPPER_ARRAY type information for class " + baseTypeName());
        }
    }

    public boolean _usesExternalId() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromAny(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return _deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return _deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return _deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromScalar(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return _deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public TypeDeserializer forProperty(BeanProperty beanProperty) {
        return beanProperty == this._property ? this : new AsArrayTypeDeserializer(this, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public JsonTypeInfo.EnumC2723As getTypeInclusion() {
        return JsonTypeInfo.EnumC2723As.WRAPPER_ARRAY;
    }
}
