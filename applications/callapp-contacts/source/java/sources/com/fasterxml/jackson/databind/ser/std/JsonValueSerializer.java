package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.RuntimeJsonMappingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonStringFormatVisitor;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/JsonValueSerializer.class */
public class JsonValueSerializer extends StdSerializer<Object> implements JsonFormatVisitable, SchemaAware, ContextualSerializer {
    protected final AnnotatedMember _accessor;
    protected transient PropertySerializerMap _dynamicSerializers;
    protected final boolean _forceTypeInformation;
    protected final BeanProperty _property;
    protected final JsonSerializer<Object> _valueSerializer;
    protected final JavaType _valueType;
    protected final TypeSerializer _valueTypeSerializer;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/JsonValueSerializer$TypeSerializerRerouter.class */
    static class TypeSerializerRerouter extends TypeSerializer {
        protected final Object _forObject;
        protected final TypeSerializer _typeSerializer;

        public TypeSerializerRerouter(TypeSerializer typeSerializer, Object obj) {
            this._typeSerializer = typeSerializer;
            this._forObject = obj;
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public TypeSerializer forProperty(BeanProperty beanProperty) {
            throw new UnsupportedOperationException();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public String getPropertyName() {
            return this._typeSerializer.getPropertyName();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public TypeIdResolver getTypeIdResolver() {
            return this._typeSerializer.getTypeIdResolver();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public JsonTypeInfo.EnumC10517As getTypeInclusion() {
            return this._typeSerializer.getTypeInclusion();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeCustomTypePrefixForArray(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this._typeSerializer.writeCustomTypePrefixForArray(this._forObject, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeCustomTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this._typeSerializer.writeCustomTypePrefixForObject(this._forObject, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeCustomTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this._typeSerializer.writeCustomTypePrefixForScalar(this._forObject, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeCustomTypeSuffixForArray(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this._typeSerializer.writeCustomTypeSuffixForArray(this._forObject, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeCustomTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this._typeSerializer.writeCustomTypeSuffixForObject(this._forObject, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeCustomTypeSuffixForScalar(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this._typeSerializer.writeCustomTypeSuffixForScalar(this._forObject, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public WritableTypeId writeTypePrefix(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) throws IOException {
            writableTypeId.forValue = this._forObject;
            return this._typeSerializer.writeTypePrefix(jsonGenerator, writableTypeId);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeTypePrefixForArray(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this._typeSerializer.writeTypePrefixForArray(this._forObject, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeTypePrefixForArray(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
            this._typeSerializer.writeTypePrefixForArray(this._forObject, jsonGenerator, cls);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this._typeSerializer.writeTypePrefixForObject(this._forObject, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
            this._typeSerializer.writeTypePrefixForObject(this._forObject, jsonGenerator, cls);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this._typeSerializer.writeTypePrefixForScalar(this._forObject, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
            this._typeSerializer.writeTypePrefixForScalar(this._forObject, jsonGenerator, cls);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public WritableTypeId writeTypeSuffix(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) throws IOException {
            return this._typeSerializer.writeTypeSuffix(jsonGenerator, writableTypeId);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeTypeSuffixForArray(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this._typeSerializer.writeTypeSuffixForArray(this._forObject, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this._typeSerializer.writeTypeSuffixForObject(this._forObject, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        @Deprecated
        public void writeTypeSuffixForScalar(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this._typeSerializer.writeTypeSuffixForScalar(this._forObject, jsonGenerator);
        }
    }

    @Deprecated
    public JsonValueSerializer(AnnotatedMember annotatedMember, JsonSerializer<?> jsonSerializer) {
        this(annotatedMember, null, jsonSerializer);
    }

    public JsonValueSerializer(AnnotatedMember annotatedMember, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer) {
        super(annotatedMember.getType());
        this._accessor = annotatedMember;
        this._valueType = annotatedMember.getType();
        this._valueTypeSerializer = typeSerializer;
        this._valueSerializer = jsonSerializer;
        this._property = null;
        this._forceTypeInformation = true;
        this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
    }

    public JsonValueSerializer(JsonValueSerializer jsonValueSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, boolean z) {
        super(_notNullClass(jsonValueSerializer.handledType()));
        this._accessor = jsonValueSerializer._accessor;
        this._valueType = jsonValueSerializer._valueType;
        this._valueTypeSerializer = typeSerializer;
        this._valueSerializer = jsonSerializer;
        this._property = beanProperty;
        this._forceTypeInformation = z;
        this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
    }

    private static final Class<Object> _notNullClass(Class<?> cls) {
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Object.class;
        }
        return cls2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected boolean _acceptJsonFormatVisitorForEnum(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, Class<?> cls) throws JsonMappingException {
        Object[] enumConstants;
        JsonStringFormatVisitor expectStringFormat = jsonFormatVisitorWrapper.expectStringFormat(javaType);
        if (expectStringFormat != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Object obj : cls.getEnumConstants()) {
                try {
                    linkedHashSet.add(String.valueOf(this._accessor.getValue(obj)));
                } catch (Exception e) {
                    e = e;
                    while ((e instanceof InvocationTargetException) && e.getCause() != null) {
                        e = e.getCause();
                    }
                    ClassUtil.throwIfError(e);
                    throw JsonMappingException.wrapWithPath(e, obj, this._accessor.getName() + "()");
                }
            }
            expectStringFormat.enumTypes(linkedHashSet);
            return true;
        }
        return true;
    }

    protected JsonSerializer<Object> _findDynamicSerializer(SerializerProvider serializerProvider, Class<?> cls) throws JsonMappingException {
        JsonSerializer<Object> serializerFor = this._dynamicSerializers.serializerFor(cls);
        JsonSerializer<Object> jsonSerializer = serializerFor;
        if (serializerFor == null) {
            if (this._valueType.hasGenericTypes()) {
                JavaType constructSpecializedType = serializerProvider.constructSpecializedType(this._valueType, cls);
                jsonSerializer = serializerProvider.findPrimaryPropertySerializer(constructSpecializedType, this._property);
                this._dynamicSerializers = this._dynamicSerializers.addSerializer(constructSpecializedType, jsonSerializer).map;
            } else {
                jsonSerializer = serializerProvider.findPrimaryPropertySerializer(cls, this._property);
                this._dynamicSerializers = this._dynamicSerializers.addSerializer(cls, jsonSerializer).map;
            }
        }
        return jsonSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        Class<?> declaringClass = this._accessor.getDeclaringClass();
        if (declaringClass == null || !ClassUtil.isEnumType(declaringClass) || !_acceptJsonFormatVisitorForEnum(jsonFormatVisitorWrapper, javaType, declaringClass)) {
            JsonSerializer<Object> jsonSerializer = this._valueSerializer;
            JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
            if (jsonSerializer == null) {
                JsonSerializer<Object> findTypedValueSerializer = jsonFormatVisitorWrapper.getProvider().findTypedValueSerializer(this._valueType, false, this._property);
                jsonSerializer2 = findTypedValueSerializer;
                if (findTypedValueSerializer == null) {
                    jsonFormatVisitorWrapper.expectAnyFormat(javaType);
                    return;
                }
            }
            jsonSerializer2.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, this._valueType);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        TypeSerializer typeSerializer2 = typeSerializer;
        if (typeSerializer != null) {
            typeSerializer2 = typeSerializer.forProperty(beanProperty);
        }
        JsonSerializer<?> jsonSerializer = this._valueSerializer;
        if (jsonSerializer == null) {
            if (!serializerProvider.isEnabled(MapperFeature.USE_STATIC_TYPING) && !this._valueType.isFinal()) {
                return beanProperty != this._property ? withResolved(beanProperty, typeSerializer2, jsonSerializer, this._forceTypeInformation) : this;
            }
            JsonSerializer<Object> findPrimaryPropertySerializer = serializerProvider.findPrimaryPropertySerializer(this._valueType, beanProperty);
            return withResolved(beanProperty, typeSerializer2, findPrimaryPropertySerializer, isNaturalTypeWithStdHandling(this._valueType.getRawClass(), findPrimaryPropertySerializer));
        }
        return withResolved(beanProperty, typeSerializer2, serializerProvider.handlePrimaryContextualization(jsonSerializer, beanProperty), this._forceTypeInformation);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        return jsonSerializer instanceof SchemaAware ? ((SchemaAware) jsonSerializer).getSchema(serializerProvider, null) : JsonSchema.getDefaultSchemaNode();
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        Object value = this._accessor.getValue(obj);
        if (value == null) {
            return true;
        }
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            try {
                jsonSerializer2 = _findDynamicSerializer(serializerProvider, value.getClass());
            } catch (JsonMappingException e) {
                throw new RuntimeJsonMappingException(e);
            }
        }
        return jsonSerializer2.isEmpty(serializerProvider, value);
    }

    protected boolean isNaturalTypeWithStdHandling(Class<?> cls, JsonSerializer<?> jsonSerializer) {
        if (cls.isPrimitive()) {
            if (cls != Integer.TYPE && cls != Boolean.TYPE && cls != Double.TYPE) {
                return false;
            }
        } else if (cls != String.class && cls != Integer.class && cls != Boolean.class && cls != Double.class) {
            return false;
        }
        return isDefaultSerializer(jsonSerializer);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        Object obj2;
        try {
            obj2 = this._accessor.getValue(obj);
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, obj, this._accessor.getName() + "()");
            obj2 = null;
        }
        if (obj2 == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
            return;
        }
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
        if (jsonSerializer == null) {
            jsonSerializer2 = _findDynamicSerializer(serializerProvider, obj2.getClass());
        }
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        if (typeSerializer != null) {
            jsonSerializer2.serializeWithType(obj2, jsonGenerator, serializerProvider, typeSerializer);
        } else {
            jsonSerializer2.serialize(obj2, jsonGenerator, serializerProvider);
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        Object obj2;
        JsonSerializer<Object> jsonSerializer;
        try {
            obj2 = this._accessor.getValue(obj);
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, obj, this._accessor.getName() + "()");
            obj2 = null;
        }
        if (obj2 == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
            return;
        }
        JsonSerializer<Object> jsonSerializer2 = this._valueSerializer;
        if (jsonSerializer2 == null) {
            jsonSerializer = _findDynamicSerializer(serializerProvider, obj2.getClass());
        } else {
            jsonSerializer = jsonSerializer2;
            if (this._forceTypeInformation) {
                WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(obj, JsonToken.VALUE_STRING));
                jsonSerializer2.serialize(obj2, jsonGenerator, serializerProvider);
                typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
                return;
            }
        }
        jsonSerializer.serializeWithType(obj2, jsonGenerator, serializerProvider, new TypeSerializerRerouter(typeSerializer, obj));
    }

    public String toString() {
        return "(@JsonValue serializer for method " + this._accessor.getDeclaringClass() + "#" + this._accessor.getName() + ")";
    }

    protected JsonValueSerializer withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, boolean z) {
        return (this._property == beanProperty && this._valueTypeSerializer == typeSerializer && this._valueSerializer == jsonSerializer && z == this._forceTypeInformation) ? this : new JsonValueSerializer(this, beanProperty, typeSerializer, jsonSerializer, z);
    }
}
