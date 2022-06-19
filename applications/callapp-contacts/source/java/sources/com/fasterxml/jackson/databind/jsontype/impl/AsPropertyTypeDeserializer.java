package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.util.JsonParserSequence;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer.class */
public class AsPropertyTypeDeserializer extends AsArrayTypeDeserializer {
    private static final long serialVersionUID = 1;
    protected final JsonTypeInfo.EnumC10517As _inclusion;
    protected final String _msgForMissingId;

    public AsPropertyTypeDeserializer(JavaType javaType, TypeIdResolver typeIdResolver, String str, boolean z, JavaType javaType2) {
        this(javaType, typeIdResolver, str, z, javaType2, JsonTypeInfo.EnumC10517As.PROPERTY);
    }

    public AsPropertyTypeDeserializer(JavaType javaType, TypeIdResolver typeIdResolver, String str, boolean z, JavaType javaType2, JsonTypeInfo.EnumC10517As enumC10517As) {
        super(javaType, typeIdResolver, str, z, javaType2);
        this._msgForMissingId = this._property == null ? String.format("missing type id property '%s'", this._typePropertyName) : String.format("missing type id property '%s' (for POJO property '%s')", this._typePropertyName, this._property.getName());
        this._inclusion = enumC10517As;
    }

    public AsPropertyTypeDeserializer(AsPropertyTypeDeserializer asPropertyTypeDeserializer, BeanProperty beanProperty) {
        super(asPropertyTypeDeserializer, beanProperty);
        this._msgForMissingId = this._property == null ? String.format("missing type id property '%s'", this._typePropertyName) : String.format("missing type id property '%s' (for POJO property '%s')", this._typePropertyName, this._property.getName());
        this._inclusion = asPropertyTypeDeserializer._inclusion;
    }

    public Object _deserializeTypedForId(JsonParser jsonParser, DeserializationContext deserializationContext, TokenBuffer tokenBuffer, String str) throws IOException {
        JsonDeserializer<Object> _findDeserializer = _findDeserializer(deserializationContext, str);
        TokenBuffer tokenBuffer2 = tokenBuffer;
        if (this._typeIdVisible) {
            tokenBuffer2 = tokenBuffer;
            if (tokenBuffer == null) {
                tokenBuffer2 = new TokenBuffer(jsonParser, deserializationContext);
            }
            tokenBuffer2.writeFieldName(jsonParser.currentName());
            tokenBuffer2.writeString(str);
        }
        JsonParserSequence jsonParserSequence = jsonParser;
        if (tokenBuffer2 != null) {
            jsonParser.clearCurrentToken();
            jsonParserSequence = JsonParserSequence.createFlattened(false, tokenBuffer2.asParser(jsonParser), jsonParser);
        }
        jsonParserSequence.nextToken();
        return _findDeserializer.deserialize(jsonParserSequence, deserializationContext);
    }

    @Deprecated
    protected Object _deserializeTypedUsingDefaultImpl(JsonParser jsonParser, DeserializationContext deserializationContext, TokenBuffer tokenBuffer) throws IOException {
        return _deserializeTypedUsingDefaultImpl(jsonParser, deserializationContext, tokenBuffer, null);
    }

    public Object _deserializeTypedUsingDefaultImpl(JsonParser jsonParser, DeserializationContext deserializationContext, TokenBuffer tokenBuffer, String str) throws IOException {
        if (!hasDefaultImpl()) {
            Object deserializeIfNatural = TypeDeserializer.deserializeIfNatural(jsonParser, deserializationContext, this._baseType);
            if (deserializeIfNatural != null) {
                return deserializeIfNatural;
            }
            if (jsonParser.isExpectedStartArrayToken()) {
                return super.deserializeTypedFromAny(jsonParser, deserializationContext);
            }
            if (jsonParser.hasToken(JsonToken.VALUE_STRING) && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().trim().isEmpty()) {
                return null;
            }
        }
        JsonDeserializer<Object> _findDefaultImplDeserializer = _findDefaultImplDeserializer(deserializationContext);
        JsonDeserializer<Object> jsonDeserializer = _findDefaultImplDeserializer;
        if (_findDefaultImplDeserializer == null) {
            JavaType _handleMissingTypeId = _handleMissingTypeId(deserializationContext, str);
            if (_handleMissingTypeId == null) {
                return null;
            }
            jsonDeserializer = deserializationContext.findContextualValueDeserializer(_handleMissingTypeId, this._property);
        }
        JsonParser jsonParser2 = jsonParser;
        if (tokenBuffer != null) {
            tokenBuffer.writeEndObject();
            jsonParser2 = tokenBuffer.asParser(jsonParser);
            jsonParser2.nextToken();
        }
        return jsonDeserializer.deserialize(jsonParser2, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromAny(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return jsonParser.hasToken(JsonToken.START_ARRAY) ? super.deserializeTypedFromArray(jsonParser, deserializationContext) : deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken jsonToken;
        Object typeId;
        if (!jsonParser.canReadTypeId() || (typeId = jsonParser.getTypeId()) == null) {
            JsonToken currentToken = jsonParser.currentToken();
            TokenBuffer tokenBuffer = null;
            if (currentToken == JsonToken.START_OBJECT) {
                jsonToken = jsonParser.nextToken();
            } else {
                jsonToken = currentToken;
                if (currentToken != JsonToken.FIELD_NAME) {
                    return _deserializeTypedUsingDefaultImpl(jsonParser, deserializationContext, null, this._msgForMissingId);
                }
            }
            boolean isEnabled = deserializationContext.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
            JsonToken jsonToken2 = jsonToken;
            while (jsonToken2 == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.currentName();
                jsonParser.nextToken();
                if (currentName.equals(this._typePropertyName) || (isEnabled && currentName.equalsIgnoreCase(this._typePropertyName))) {
                    return _deserializeTypedForId(jsonParser, deserializationContext, tokenBuffer, jsonParser.getText());
                }
                TokenBuffer tokenBuffer2 = tokenBuffer;
                if (tokenBuffer == null) {
                    tokenBuffer2 = new TokenBuffer(jsonParser, deserializationContext);
                }
                tokenBuffer2.writeFieldName(currentName);
                tokenBuffer2.copyCurrentStructure(jsonParser);
                jsonToken2 = jsonParser.nextToken();
                tokenBuffer = tokenBuffer2;
            }
            return _deserializeTypedUsingDefaultImpl(jsonParser, deserializationContext, tokenBuffer, this._msgForMissingId);
        }
        return _deserializeWithNativeTypeId(jsonParser, deserializationContext, typeId);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public TypeDeserializer forProperty(BeanProperty beanProperty) {
        return beanProperty == this._property ? this : new AsPropertyTypeDeserializer(this, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public JsonTypeInfo.EnumC10517As getTypeInclusion() {
        return this._inclusion;
    }
}
