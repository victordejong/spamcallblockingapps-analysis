package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/StdScalarDeserializer.class */
public abstract class StdScalarDeserializer<T> extends StdDeserializer<T> {
    public StdScalarDeserializer(Class<?> cls) {
        super(cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromScalar(jsonParser, deserializationContext);
    }
}
