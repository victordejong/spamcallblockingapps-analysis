package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/NumberSerializers.class */
public class NumberSerializers {

    /* renamed from: com.fasterxml.jackson.databind.ser.std.NumberSerializers$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/NumberSerializers$1.class */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape;

        static {
            int[] iArr = new int[JsonFormat.Shape.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape = iArr;
            try {
                iArr[JsonFormat.Shape.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/NumberSerializers$Base.class */
    public static abstract class Base<T> extends StdScalarSerializer<T> implements ContextualSerializer {
        protected final boolean _isInt;
        protected final JsonParser.NumberType _numberType;
        protected final String _schemaType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        protected Base(Class<?> cls, JsonParser.NumberType numberType, String str) {
            super(cls, false);
            boolean z = false;
            this._numberType = numberType;
            this._schemaType = str;
            this._isInt = (numberType == JsonParser.NumberType.INT || numberType == JsonParser.NumberType.LONG || numberType == JsonParser.NumberType.BIG_INTEGER) ? true : z;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
            if (this._isInt) {
                visitIntFormat(jsonFormatVisitorWrapper, javaType, this._numberType);
            } else {
                visitFloatFormat(jsonFormatVisitorWrapper, javaType, this._numberType);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
        public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
            JsonFormat.Value findFormatOverrides = findFormatOverrides(serializerProvider, beanProperty, handledType());
            return (findFormatOverrides == null || AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[findFormatOverrides.getShape().ordinal()] != 1) ? this : handledType() == BigDecimal.class ? NumberSerializer.bigDecimalAsStringSerializer() : ToStringSerializer.instance;
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
        public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
            return createSchemaNode(this._schemaType, true);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/NumberSerializers$DoubleSerializer.class */
    public static class DoubleSerializer extends Base<Object> {
        public DoubleSerializer(Class<?> cls) {
            super(cls, JsonParser.NumberType.DOUBLE, "number");
        }

        public static boolean notFinite(double d2) {
            return Double.isNaN(d2) || Double.isInfinite(d2);
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeNumber(((Double) obj).doubleValue());
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
            Double d2 = (Double) obj;
            if (notFinite(d2.doubleValue())) {
                WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(obj, JsonToken.VALUE_NUMBER_FLOAT));
                jsonGenerator.writeNumber(d2.doubleValue());
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
                return;
            }
            jsonGenerator.writeNumber(d2.doubleValue());
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/NumberSerializers$FloatSerializer.class */
    public static class FloatSerializer extends Base<Object> {
        static final FloatSerializer instance = new FloatSerializer();

        public FloatSerializer() {
            super(Float.class, JsonParser.NumberType.FLOAT, "number");
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeNumber(((Float) obj).floatValue());
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/NumberSerializers$IntLikeSerializer.class */
    public static class IntLikeSerializer extends Base<Object> {
        static final IntLikeSerializer instance = new IntLikeSerializer();

        public IntLikeSerializer() {
            super(Number.class, JsonParser.NumberType.INT, "integer");
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeNumber(((Number) obj).intValue());
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/NumberSerializers$IntegerSerializer.class */
    public static class IntegerSerializer extends Base<Object> {
        public IntegerSerializer(Class<?> cls) {
            super(cls, JsonParser.NumberType.INT, "integer");
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeNumber(((Integer) obj).intValue());
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
            serialize(obj, jsonGenerator, serializerProvider);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer.class */
    public static class LongSerializer extends Base<Object> {
        public LongSerializer(Class<?> cls) {
            super(cls, JsonParser.NumberType.LONG, "number");
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeNumber(((Long) obj).longValue());
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/NumberSerializers$ShortSerializer.class */
    public static class ShortSerializer extends Base<Object> {
        static final ShortSerializer instance = new ShortSerializer();

        public ShortSerializer() {
            super(Short.class, JsonParser.NumberType.INT, "number");
        }

        @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            jsonGenerator.writeNumber(((Short) obj).shortValue());
        }
    }

    protected NumberSerializers() {
    }

    public static void addAll(Map<String, JsonSerializer<?>> map) {
        map.put(Integer.class.getName(), new IntegerSerializer(Integer.class));
        map.put(Integer.TYPE.getName(), new IntegerSerializer(Integer.TYPE));
        map.put(Long.class.getName(), new LongSerializer(Long.class));
        map.put(Long.TYPE.getName(), new LongSerializer(Long.TYPE));
        map.put(Byte.class.getName(), IntLikeSerializer.instance);
        map.put(Byte.TYPE.getName(), IntLikeSerializer.instance);
        map.put(Short.class.getName(), ShortSerializer.instance);
        map.put(Short.TYPE.getName(), ShortSerializer.instance);
        map.put(Double.class.getName(), new DoubleSerializer(Double.class));
        map.put(Double.TYPE.getName(), new DoubleSerializer(Double.TYPE));
        map.put(Float.class.getName(), FloatSerializer.instance);
        map.put(Float.TYPE.getName(), FloatSerializer.instance);
    }
}
