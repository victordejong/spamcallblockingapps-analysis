package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
@JacksonStdImpl
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/ObjectArraySerializer.class */
public class ObjectArraySerializer extends ArraySerializerBase<Object[]> implements ContextualSerializer {
    public PropertySerializerMap _dynamicSerializers;
    public JsonSerializer<Object> _elementSerializer;
    public final JavaType _elementType;
    public final boolean _staticTyping;
    public final TypeSerializer _valueTypeSerializer;

    public ObjectArraySerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        super(Object[].class);
        this._elementType = javaType;
        this._staticTyping = z;
        this._valueTypeSerializer = typeSerializer;
        this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
        this._elementSerializer = jsonSerializer;
    }

    public ObjectArraySerializer(ObjectArraySerializer objectArraySerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(objectArraySerializer, beanProperty, bool);
        this._elementType = objectArraySerializer._elementType;
        this._valueTypeSerializer = typeSerializer;
        this._staticTyping = objectArraySerializer._staticTyping;
        this._dynamicSerializers = objectArraySerializer._dynamicSerializers;
        this._elementSerializer = jsonSerializer;
    }

    public final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, JavaType javaType, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(javaType, serializerProvider, this._property);
        PropertySerializerMap propertySerializerMap2 = findAndAddSecondarySerializer.map;
        if (propertySerializerMap != propertySerializerMap2) {
            this._dynamicSerializers = propertySerializerMap2;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    public final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, Class<?> cls, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(cls, serializerProvider, this._property);
        PropertySerializerMap propertySerializerMap2 = findAndAddSecondarySerializer.map;
        if (propertySerializerMap != propertySerializerMap2) {
            this._dynamicSerializers = propertySerializerMap2;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase
    public JsonSerializer<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
        return new ObjectArraySerializer(this, beanProperty, this._valueTypeSerializer, this._elementSerializer, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new ObjectArraySerializer(this._elementType, this._staticTyping, typeSerializer, this._elementSerializer);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonArrayFormatVisitor expectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType);
        if (expectArrayFormat != null) {
            JavaType moreSpecificType = jsonFormatVisitorWrapper.getProvider().getTypeFactory().moreSpecificType(this._elementType, javaType.getContentType());
            if (moreSpecificType != null) {
                JsonSerializer<Object> jsonSerializer = this._elementSerializer;
                JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
                if (jsonSerializer == null) {
                    jsonSerializer2 = jsonFormatVisitorWrapper.getProvider().findValueSerializer(moreSpecificType, this._property);
                }
                expectArrayFormat.itemsFormat(jsonSerializer2, moreSpecificType);
                return;
            }
            throw JsonMappingException.from(jsonFormatVisitorWrapper.getProvider(), "Could not resolve type");
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ArraySerializerBase, com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer;
        JsonSerializer<?> jsonSerializer2;
        Object findContentSerializer;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        TypeSerializer typeSerializer2 = typeSerializer;
        if (typeSerializer != null) {
            typeSerializer2 = typeSerializer.forProperty(beanProperty);
        }
        Boolean bool = null;
        if (beanProperty != null) {
            AnnotatedMember member = beanProperty.getMember();
            JsonSerializer<Object> serializerInstance = (member == null || (findContentSerializer = serializerProvider.getAnnotationIntrospector().findContentSerializer(member)) == null) ? null : serializerProvider.serializerInstance(member, findContentSerializer);
            JsonFormat.Value findPropertyFormat = beanProperty.findPropertyFormat(serializerProvider.getConfig(), this._handledType);
            jsonSerializer = serializerInstance;
            if (findPropertyFormat != null) {
                bool = findPropertyFormat.getFeature(JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED);
                jsonSerializer = serializerInstance;
            }
        } else {
            jsonSerializer = null;
        }
        JsonSerializer<Object> jsonSerializer3 = jsonSerializer;
        if (jsonSerializer == null) {
            jsonSerializer3 = this._elementSerializer;
        }
        JsonSerializer<?> findConvertingContentSerializer = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializer3);
        if (findConvertingContentSerializer == null) {
            JavaType javaType = this._elementType;
            jsonSerializer2 = findConvertingContentSerializer;
            if (javaType != null) {
                jsonSerializer2 = findConvertingContentSerializer;
                if (this._staticTyping) {
                    jsonSerializer2 = findConvertingContentSerializer;
                    if (!javaType.isJavaLangObject()) {
                        jsonSerializer2 = serializerProvider.findValueSerializer(this._elementType, beanProperty);
                    }
                }
            }
        } else {
            jsonSerializer2 = serializerProvider.handleSecondaryContextualization(findConvertingContentSerializer, beanProperty);
        }
        return withResolved(beanProperty, typeSerializer2, jsonSerializer2, bool);
    }

    public boolean isEmpty(SerializerProvider serializerProvider, Object[] objArr) {
        return objArr == null || objArr.length == 0;
    }

    public final void serialize(Object[] objArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int length = objArr.length;
        if (length != 1 || ((this._unwrapSingle != null || !serializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) && this._unwrapSingle != Boolean.TRUE)) {
            jsonGenerator.writeStartArray(length);
            serializeContents(objArr, jsonGenerator, serializerProvider);
            jsonGenerator.writeEndArray();
            return;
        }
        serializeContents(objArr, jsonGenerator, serializerProvider);
    }

    public void serializeContents(Object[] objArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int length = objArr.length;
        if (length != 0) {
            JsonSerializer<Object> jsonSerializer = this._elementSerializer;
            if (jsonSerializer != null) {
                serializeContentsUsing(objArr, jsonGenerator, serializerProvider, jsonSerializer);
            } else if (this._valueTypeSerializer != null) {
                serializeTypedContents(objArr, jsonGenerator, serializerProvider);
            } else {
                int i = 0;
                Object obj = null;
                try {
                    PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
                    for (int i2 = 0; i2 < length; i2++) {
                        Object obj2 = objArr[i2];
                        if (obj2 == null) {
                            serializerProvider.defaultSerializeNull(jsonGenerator);
                        } else {
                            i = i2;
                            obj = obj2;
                            Class<?> cls = obj2.getClass();
                            JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
                            JsonSerializer<Object> jsonSerializer2 = serializerFor;
                            if (serializerFor == null) {
                                jsonSerializer2 = this._elementType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._elementType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                            }
                            jsonSerializer2.serialize(obj2, jsonGenerator, serializerProvider);
                        }
                    }
                } catch (IOException e) {
                    throw e;
                } catch (Exception e2) {
                    e = e2;
                    while ((e instanceof InvocationTargetException) && e.getCause() != null) {
                        e = e.getCause();
                    }
                    if (e instanceof Error) {
                        throw ((Error) e);
                    }
                    throw JsonMappingException.wrapWithPath(e, obj, i);
                }
            }
        }
    }

    public void serializeContentsUsing(Object[] objArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException {
        Object obj;
        int length = objArr.length;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        for (int i = 0; i < length; i++) {
            Object obj2 = objArr[i];
            if (obj2 == null) {
                obj = obj2;
                try {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                    continue;
                } catch (IOException e) {
                    throw e;
                } catch (Exception e2) {
                    e = e2;
                    while ((e instanceof InvocationTargetException) && e.getCause() != null) {
                        e = e.getCause();
                    }
                    if (e instanceof Error) {
                        throw ((Error) e);
                    }
                    throw JsonMappingException.wrapWithPath(e, obj, i);
                }
            } else if (typeSerializer == null) {
                obj = obj2;
                jsonSerializer.serialize(obj2, jsonGenerator, serializerProvider);
                continue;
            } else {
                obj = obj2;
                jsonSerializer.serializeWithType(obj2, jsonGenerator, serializerProvider, typeSerializer);
                continue;
            }
        }
    }

    public void serializeTypedContents(Object[] objArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int length = objArr.length;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        int i = 0;
        Object obj = null;
        try {
            PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
            for (int i2 = 0; i2 < length; i2++) {
                Object obj2 = objArr[i2];
                if (obj2 == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else {
                    i = i2;
                    obj = obj2;
                    Class<?> cls = obj2.getClass();
                    JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
                    JsonSerializer<Object> jsonSerializer = serializerFor;
                    if (serializerFor == null) {
                        jsonSerializer = _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                    }
                    jsonSerializer.serializeWithType(obj2, jsonGenerator, serializerProvider, typeSerializer);
                }
            }
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            e = e2;
            while ((e instanceof InvocationTargetException) && e.getCause() != null) {
                e = e.getCause();
            }
            if (e instanceof Error) {
                throw ((Error) e);
            }
            throw JsonMappingException.wrapWithPath(e, obj, i);
        }
    }

    public ObjectArraySerializer withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        return (this._property == beanProperty && jsonSerializer == this._elementSerializer && this._valueTypeSerializer == typeSerializer && this._unwrapSingle == bool) ? this : new ObjectArraySerializer(this, beanProperty, typeSerializer, jsonSerializer, bool);
    }
}
