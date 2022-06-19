package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualKeyDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/MapEntryDeserializer.class */
public class MapEntryDeserializer extends ContainerDeserializerBase<Map.Entry<Object, Object>> implements ContextualDeserializer {
    private static final long serialVersionUID = 1;
    protected final KeyDeserializer _keyDeserializer;
    protected final JsonDeserializer<Object> _valueDeserializer;
    protected final TypeDeserializer _valueTypeDeserializer;

    public MapEntryDeserializer(JavaType javaType, KeyDeserializer keyDeserializer, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer) {
        super(javaType);
        if (javaType.containedTypeCount() == 2) {
            this._keyDeserializer = keyDeserializer;
            this._valueDeserializer = jsonDeserializer;
            this._valueTypeDeserializer = typeDeserializer;
            return;
        }
        throw new IllegalArgumentException("Missing generic type information for ".concat(String.valueOf(javaType)));
    }

    protected MapEntryDeserializer(MapEntryDeserializer mapEntryDeserializer) {
        super(mapEntryDeserializer);
        this._keyDeserializer = mapEntryDeserializer._keyDeserializer;
        this._valueDeserializer = mapEntryDeserializer._valueDeserializer;
        this._valueTypeDeserializer = mapEntryDeserializer._valueTypeDeserializer;
    }

    protected MapEntryDeserializer(MapEntryDeserializer mapEntryDeserializer, KeyDeserializer keyDeserializer, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer) {
        super(mapEntryDeserializer);
        this._keyDeserializer = keyDeserializer;
        this._valueDeserializer = jsonDeserializer;
        this._valueTypeDeserializer = typeDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        KeyDeserializer keyDeserializer;
        KeyDeserializer keyDeserializer2 = this._keyDeserializer;
        if (keyDeserializer2 == null) {
            keyDeserializer = deserializationContext.findKeyDeserializer(this._containerType.containedType(0), beanProperty);
        } else {
            keyDeserializer = keyDeserializer2;
            if (keyDeserializer2 instanceof ContextualKeyDeserializer) {
                keyDeserializer = ((ContextualKeyDeserializer) keyDeserializer2).createContextual(deserializationContext, beanProperty);
            }
        }
        JsonDeserializer<?> findConvertingContentDeserializer = findConvertingContentDeserializer(deserializationContext, beanProperty, this._valueDeserializer);
        JavaType containedType = this._containerType.containedType(1);
        JsonDeserializer<Object> findContextualValueDeserializer = findConvertingContentDeserializer == null ? deserializationContext.findContextualValueDeserializer(containedType, beanProperty) : deserializationContext.handleSecondaryContextualization(findConvertingContentDeserializer, beanProperty, containedType);
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        TypeDeserializer typeDeserializer2 = typeDeserializer;
        if (typeDeserializer != null) {
            typeDeserializer2 = typeDeserializer.forProperty(beanProperty);
        }
        return withResolved(keyDeserializer, typeDeserializer2, findContextualValueDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Map.Entry<Object, Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken jsonToken;
        Object obj;
        JsonToken currentToken = jsonParser.currentToken();
        if (currentToken == JsonToken.START_OBJECT) {
            jsonToken = jsonParser.nextToken();
        } else {
            jsonToken = currentToken;
            if (currentToken != JsonToken.FIELD_NAME) {
                jsonToken = currentToken;
                if (currentToken != JsonToken.END_OBJECT) {
                    return currentToken == JsonToken.START_ARRAY ? _deserializeFromArray(jsonParser, deserializationContext) : (Map.Entry) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                }
            }
        }
        if (jsonToken != JsonToken.FIELD_NAME) {
            return jsonToken == JsonToken.END_OBJECT ? (Map.Entry) deserializationContext.reportInputMismatch(this, "Cannot deserialize a Map.Entry out of empty JSON Object", new Object[0]) : (Map.Entry) deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
        }
        KeyDeserializer keyDeserializer = this._keyDeserializer;
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        String currentName = jsonParser.currentName();
        Object deserializeKey = keyDeserializer.deserializeKey(currentName, deserializationContext);
        try {
            obj = jsonParser.nextToken() == JsonToken.VALUE_NULL ? jsonDeserializer.getNullValue(deserializationContext) : typeDeserializer == null ? jsonDeserializer.deserialize(jsonParser, deserializationContext) : jsonDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
        } catch (Exception e) {
            wrapAndThrow(deserializationContext, e, Map.Entry.class, currentName);
            obj = null;
        }
        JsonToken nextToken = jsonParser.nextToken();
        if (nextToken == JsonToken.END_OBJECT) {
            return new AbstractMap.SimpleEntry(deserializeKey, obj);
        }
        if (nextToken == JsonToken.FIELD_NAME) {
            deserializationContext.reportInputMismatch(this, "Problem binding JSON into Map.Entry: more than one entry in JSON (second field: '%s')", jsonParser.currentName());
            return null;
        }
        deserializationContext.reportInputMismatch(this, "Problem binding JSON into Map.Entry: unexpected content after JSON Object entry: ".concat(String.valueOf(nextToken)), new Object[0]);
        return null;
    }

    public Map.Entry<Object, Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Map.Entry<Object, Object> entry) throws IOException {
        throw new IllegalStateException("Cannot update Map.Entry values");
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JsonDeserializer<Object> getContentDeserializer() {
        return this._valueDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JavaType getContentType() {
        return this._containerType.containedType(1);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public LogicalType logicalType() {
        return LogicalType.Map;
    }

    protected MapEntryDeserializer withResolved(KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) {
        return (this._keyDeserializer == keyDeserializer && this._valueDeserializer == jsonDeserializer && this._valueTypeDeserializer == typeDeserializer) ? this : new MapEntryDeserializer(this, keyDeserializer, jsonDeserializer, typeDeserializer);
    }
}
