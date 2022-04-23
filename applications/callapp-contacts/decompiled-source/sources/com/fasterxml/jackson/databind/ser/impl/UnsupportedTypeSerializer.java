package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer.class */
public class UnsupportedTypeSerializer extends StdSerializer<Object> {
    private static final long serialVersionUID = 1;
    protected final String _message;
    protected final JavaType _type;

    public UnsupportedTypeSerializer(JavaType javaType, String str) {
        super(Object.class);
        this._type = javaType;
        this._message = str;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        serializerProvider.reportBadDefinition(this._type, this._message);
    }
}
