package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
@JacksonStdImpl
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/NumberSerializer.class */
public class NumberSerializer extends StdScalarSerializer<Number> {
    public static final NumberSerializer instance = new NumberSerializer(Number.class);
    public final boolean _isInt;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NumberSerializer(Class<? extends Number> cls) {
        super(cls, false);
        boolean z = false;
        this._isInt = cls == BigInteger.class ? true : z;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        if (this._isInt) {
            visitIntFormat(jsonFormatVisitorWrapper, javaType, JsonParser.NumberType.BIG_INTEGER);
        } else if (handledType() == BigDecimal.class) {
            visitFloatFormat(jsonFormatVisitorWrapper, javaType, JsonParser.NumberType.BIG_DECIMAL);
        } else {
            jsonFormatVisitorWrapper.expectNumberFormat(javaType);
        }
    }

    public void serialize(Number number, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (number instanceof BigDecimal) {
            jsonGenerator.writeNumber((BigDecimal) number);
        } else if (number instanceof BigInteger) {
            jsonGenerator.writeNumber((BigInteger) number);
        } else if (number instanceof Long) {
            jsonGenerator.writeNumber(number.longValue());
        } else if (number instanceof Double) {
            jsonGenerator.writeNumber(number.doubleValue());
        } else if (number instanceof Float) {
            jsonGenerator.writeNumber(number.floatValue());
        } else if ((number instanceof Integer) || (number instanceof Byte) || (number instanceof Short)) {
            jsonGenerator.writeNumber(number.intValue());
        } else {
            jsonGenerator.writeNumber(number.toString());
        }
    }
}
