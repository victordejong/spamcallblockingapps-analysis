package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/AtomicIntegerDeserializer.class */
public class AtomicIntegerDeserializer extends StdScalarDeserializer<AtomicInteger> {
    private static final long serialVersionUID = 1;

    public AtomicIntegerDeserializer() {
        super(AtomicInteger.class);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public AtomicInteger deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.isExpectedNumberIntToken()) {
            return new AtomicInteger(jsonParser.getIntValue());
        }
        Integer _parseInteger = _parseInteger(jsonParser, deserializationContext, AtomicInteger.class);
        if (_parseInteger != null) {
            return new AtomicInteger(_parseInteger.intValue());
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return new AtomicInteger();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public LogicalType logicalType() {
        return LogicalType.Integer;
    }
}
