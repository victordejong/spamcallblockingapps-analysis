package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/FailingDeserializer.class */
public class FailingDeserializer extends StdDeserializer<Object> {
    public final String _message;

    public FailingDeserializer(String str) {
        super(Object.class);
        this._message = str;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws JsonMappingException {
        throw deserializationContext.mappingException(this._message);
    }
}
