package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import java.io.IOException;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/StdKeySerializer.class */
public class StdKeySerializer extends StdSerializer<Object> {
    public StdKeySerializer() {
        super(Object.class);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        visitStringFormat(jsonFormatVisitorWrapper, javaType);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        String str;
        Class<?> cls = obj.getClass();
        if (cls == String.class) {
            str = (String) obj;
        } else if (cls.isEnum()) {
            Enum r0 = (Enum) obj;
            str = serializerProvider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING) ? r0.toString() : r0.name();
        } else if (obj instanceof Date) {
            serializerProvider.defaultSerializeDateKey((Date) obj, jsonGenerator);
            return;
        } else {
            str = cls == Class.class ? ((Class) obj).getName() : obj.toString();
        }
        jsonGenerator.writeFieldName(str);
    }
}
