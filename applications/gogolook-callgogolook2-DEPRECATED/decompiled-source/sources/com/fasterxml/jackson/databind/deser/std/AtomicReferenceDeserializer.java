package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer.class */
public class AtomicReferenceDeserializer extends StdDeserializer<AtomicReference<?>> implements ContextualDeserializer {
    public final JavaType _referencedType;
    public final JsonDeserializer<?> _valueDeserializer;
    public final TypeDeserializer _valueTypeDeserializer;

    public AtomicReferenceDeserializer(JavaType javaType, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) {
        super(AtomicReference.class);
        this._referencedType = javaType;
        this._valueDeserializer = jsonDeserializer;
        this._valueTypeDeserializer = typeDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<?> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        JsonDeserializer<?> findContextualValueDeserializer = jsonDeserializer == null ? deserializationContext.findContextualValueDeserializer(this._referencedType, beanProperty) : deserializationContext.handleSecondaryContextualization(jsonDeserializer, beanProperty, this._referencedType);
        TypeDeserializer typeDeserializer2 = typeDeserializer;
        if (typeDeserializer != null) {
            typeDeserializer2 = typeDeserializer.forProperty(beanProperty);
        }
        return withResolved(typeDeserializer2, findContextualValueDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public AtomicReference<?> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        return new AtomicReference<>(typeDeserializer == null ? this._valueDeserializer.deserialize(jsonParser, deserializationContext) : this._valueDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer));
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        return currentToken == JsonToken.VALUE_NULL ? getNullValue(deserializationContext) : (currentToken == null || !currentToken.isScalarValue()) ? typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext) : deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    @Deprecated
    public AtomicReference<?> getNullValue() {
        return new AtomicReference<>();
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public AtomicReference<?> getNullValue(DeserializationContext deserializationContext) {
        return new AtomicReference<>();
    }

    public AtomicReferenceDeserializer withResolved(TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) {
        return (jsonDeserializer == this._valueDeserializer && typeDeserializer == this._valueTypeDeserializer) ? this : new AtomicReferenceDeserializer(this._referencedType, typeDeserializer, jsonDeserializer);
    }
}
