package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.util.JsonParserSequence;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer.class */
public class AsPropertyTypeDeserializer extends AsArrayTypeDeserializer {
    public final JsonTypeInfo.EnumC2723As _inclusion;

    public AsPropertyTypeDeserializer(JavaType javaType, TypeIdResolver typeIdResolver, String str, boolean z, Class<?> cls, JsonTypeInfo.EnumC2723As as) {
        super(javaType, typeIdResolver, str, z, cls);
        this._inclusion = as;
    }

    public AsPropertyTypeDeserializer(AsPropertyTypeDeserializer asPropertyTypeDeserializer, BeanProperty beanProperty) {
        super(asPropertyTypeDeserializer, beanProperty);
        this._inclusion = asPropertyTypeDeserializer._inclusion;
    }

    public Object _deserializeTypedForId(JsonParser jsonParser, DeserializationContext deserializationContext, TokenBuffer tokenBuffer) throws IOException {
        String text = jsonParser.getText();
        JsonDeserializer<Object> _findDeserializer = _findDeserializer(deserializationContext, text);
        TokenBuffer tokenBuffer2 = tokenBuffer;
        if (this._typeIdVisible) {
            tokenBuffer2 = tokenBuffer;
            if (tokenBuffer == null) {
                tokenBuffer2 = new TokenBuffer(jsonParser, deserializationContext);
            }
            tokenBuffer2.writeFieldName(jsonParser.getCurrentName());
            tokenBuffer2.writeString(text);
        }
        JsonParser jsonParser2 = jsonParser;
        if (tokenBuffer2 != null) {
            jsonParser2 = JsonParserSequence.createFlattened(tokenBuffer2.asParser(jsonParser), jsonParser);
        }
        jsonParser2.nextToken();
        return _findDeserializer.deserialize(jsonParser2, deserializationContext);
    }

    public Object _deserializeTypedUsingDefaultImpl(JsonParser jsonParser, DeserializationContext deserializationContext, TokenBuffer tokenBuffer) throws IOException {
        JsonDeserializer<Object> _findDefaultImplDeserializer = _findDefaultImplDeserializer(deserializationContext);
        if (_findDefaultImplDeserializer != null) {
            JsonParser jsonParser2 = jsonParser;
            if (tokenBuffer != null) {
                tokenBuffer.writeEndObject();
                jsonParser2 = tokenBuffer.asParser(jsonParser);
                jsonParser2.nextToken();
            }
            return _findDefaultImplDeserializer.deserialize(jsonParser2, deserializationContext);
        }
        Object deserializeIfNatural = TypeDeserializer.deserializeIfNatural(jsonParser, deserializationContext, this._baseType);
        if (deserializeIfNatural != null) {
            return deserializeIfNatural;
        }
        if (jsonParser.getCurrentToken() == JsonToken.START_ARRAY) {
            return super.deserializeTypedFromAny(jsonParser, deserializationContext);
        }
        JsonToken jsonToken = JsonToken.FIELD_NAME;
        throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "missing property '" + this._typePropertyName + "' that is to contain type id  (for class " + baseTypeName() + ")");
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromAny(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return jsonParser.getCurrentToken() == JsonToken.START_ARRAY ? super.deserializeTypedFromArray(jsonParser, deserializationContext) : deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken jsonToken;
        Object typeId;
        if (jsonParser.canReadTypeId() && (typeId = jsonParser.getTypeId()) != null) {
            return _deserializeWithNativeTypeId(jsonParser, deserializationContext, typeId);
        }
        JsonToken currentToken = jsonParser.getCurrentToken();
        TokenBuffer tokenBuffer = null;
        if (currentToken == JsonToken.START_OBJECT) {
            jsonToken = jsonParser.nextToken();
        } else {
            jsonToken = currentToken;
            if (currentToken != JsonToken.FIELD_NAME) {
                return _deserializeTypedUsingDefaultImpl(jsonParser, deserializationContext, null);
            }
        }
        while (jsonToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.getCurrentName();
            jsonParser.nextToken();
            if (currentName.equals(this._typePropertyName)) {
                return _deserializeTypedForId(jsonParser, deserializationContext, tokenBuffer);
            }
            TokenBuffer tokenBuffer2 = tokenBuffer;
            if (tokenBuffer == null) {
                tokenBuffer2 = new TokenBuffer(jsonParser, deserializationContext);
            }
            tokenBuffer2.writeFieldName(currentName);
            tokenBuffer2.copyCurrentStructure(jsonParser);
            jsonToken = jsonParser.nextToken();
            tokenBuffer = tokenBuffer2;
        }
        return _deserializeTypedUsingDefaultImpl(jsonParser, deserializationContext, tokenBuffer);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public TypeDeserializer forProperty(BeanProperty beanProperty) {
        return beanProperty == this._property ? this : new AsPropertyTypeDeserializer(this, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public JsonTypeInfo.EnumC2723As getTypeInclusion() {
        return this._inclusion;
    }
}
