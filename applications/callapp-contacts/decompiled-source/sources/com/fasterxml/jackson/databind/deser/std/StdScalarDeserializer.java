package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/StdScalarDeserializer.class */
public abstract class StdScalarDeserializer<T> extends StdDeserializer<T> {
    private static final long serialVersionUID = 1;

    protected StdScalarDeserializer(JavaType javaType) {
        super(javaType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StdScalarDeserializer(StdScalarDeserializer<?> stdScalarDeserializer) {
        super(stdScalarDeserializer);
    }

    public StdScalarDeserializer(Class<?> cls) {
        super(cls);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, T t) throws IOException {
        deserializationContext.handleBadMerge(this);
        return deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromScalar(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public AccessPattern getEmptyAccessPattern() {
        return AccessPattern.CONSTANT;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public AccessPattern getNullAccessPattern() {
        return AccessPattern.ALWAYS_NULL;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public LogicalType logicalType() {
        return LogicalType.OtherScalar;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.FALSE;
    }
}
