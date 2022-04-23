package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.ResolvableSerializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.IOException;
import java.lang.reflect.Type;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer.class */
public class StdDelegatingSerializer extends StdSerializer<Object> implements JsonFormatVisitable, SchemaAware, ContextualSerializer, ResolvableSerializer {
    protected final Converter<Object, ?> _converter;
    protected final JsonSerializer<Object> _delegateSerializer;
    protected final JavaType _delegateType;

    public StdDelegatingSerializer(Converter<?, ?> converter) {
        super(Object.class);
        this._converter = converter;
        this._delegateType = null;
        this._delegateSerializer = null;
    }

    public StdDelegatingSerializer(Converter<Object, ?> converter, JavaType javaType, JsonSerializer<?> jsonSerializer) {
        super(javaType);
        this._converter = converter;
        this._delegateType = javaType;
        this._delegateSerializer = jsonSerializer;
    }

    public <T> StdDelegatingSerializer(Class<T> cls, Converter<T, ?> converter) {
        super(cls, false);
        this._converter = converter;
        this._delegateType = null;
        this._delegateSerializer = null;
    }

    protected JsonSerializer<Object> _findSerializer(Object obj, SerializerProvider serializerProvider) throws JsonMappingException {
        return serializerProvider.findValueSerializer(obj.getClass());
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._delegateSerializer;
        if (jsonSerializer != null) {
            jsonSerializer.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, javaType);
        }
    }

    protected Object convertValue(Object obj) {
        return this._converter.convert(obj);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer = this._delegateSerializer;
        JavaType javaType = this._delegateType;
        JsonSerializer<?> jsonSerializer2 = jsonSerializer;
        JavaType javaType2 = javaType;
        if (jsonSerializer == null) {
            JavaType javaType3 = javaType;
            if (javaType == null) {
                javaType3 = this._converter.getOutputType(serializerProvider.getTypeFactory());
            }
            jsonSerializer2 = jsonSerializer;
            javaType2 = javaType3;
            if (!javaType3.isJavaLangObject()) {
                jsonSerializer2 = serializerProvider.findValueSerializer(javaType3);
                javaType2 = javaType3;
            }
        }
        JsonSerializer<?> jsonSerializer3 = jsonSerializer2;
        if (jsonSerializer2 instanceof ContextualSerializer) {
            jsonSerializer3 = serializerProvider.handleSecondaryContextualization(jsonSerializer2, beanProperty);
        }
        return (jsonSerializer3 == this._delegateSerializer && javaType2 == this._delegateType) ? this : withDelegate(this._converter, javaType2, jsonSerializer3);
    }

    protected Converter<Object, ?> getConverter() {
        return this._converter;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public JsonSerializer<?> getDelegatee() {
        return this._delegateSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._delegateSerializer;
        return jsonSerializer instanceof SchemaAware ? ((SchemaAware) jsonSerializer).getSchema(serializerProvider, type) : super.getSchema(serializerProvider, type);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type, boolean z) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._delegateSerializer;
        return jsonSerializer instanceof SchemaAware ? ((SchemaAware) jsonSerializer).getSchema(serializerProvider, type, z) : super.getSchema(serializerProvider, type);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        Object convertValue = convertValue(obj);
        if (convertValue == null) {
            return true;
        }
        JsonSerializer<Object> jsonSerializer = this._delegateSerializer;
        return jsonSerializer == null ? obj == null : jsonSerializer.isEmpty(serializerProvider, convertValue);
    }

    @Override // com.fasterxml.jackson.databind.ser.ResolvableSerializer
    public void resolve(SerializerProvider serializerProvider) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._delegateSerializer;
        if (jsonSerializer != null && (jsonSerializer instanceof ResolvableSerializer)) {
            ((ResolvableSerializer) jsonSerializer).resolve(serializerProvider);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        Object convertValue = convertValue(obj);
        if (convertValue == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
            return;
        }
        JsonSerializer<Object> jsonSerializer = this._delegateSerializer;
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            jsonSerializer2 = _findSerializer(convertValue, serializerProvider);
        }
        jsonSerializer2.serialize(convertValue, jsonGenerator, serializerProvider);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        Object convertValue = convertValue(obj);
        JsonSerializer<Object> jsonSerializer = this._delegateSerializer;
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            jsonSerializer2 = _findSerializer(obj, serializerProvider);
        }
        jsonSerializer2.serializeWithType(convertValue, jsonGenerator, serializerProvider, typeSerializer);
    }

    protected StdDelegatingSerializer withDelegate(Converter<Object, ?> converter, JavaType javaType, JsonSerializer<?> jsonSerializer) {
        ClassUtil.verifyMustOverride(StdDelegatingSerializer.class, this, "withDelegate");
        return new StdDelegatingSerializer(converter, javaType, jsonSerializer);
    }
}
