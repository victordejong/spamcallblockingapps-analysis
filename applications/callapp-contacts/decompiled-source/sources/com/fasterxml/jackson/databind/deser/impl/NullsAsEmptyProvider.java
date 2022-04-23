package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.NullValueProvider;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/NullsAsEmptyProvider.class */
public class NullsAsEmptyProvider implements NullValueProvider, Serializable {
    protected final JsonDeserializer<?> _deserializer;

    public NullsAsEmptyProvider(JsonDeserializer<?> jsonDeserializer) {
        this._deserializer = jsonDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.NullValueProvider
    public Object getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this._deserializer.getEmptyValue(deserializationContext);
    }
}
