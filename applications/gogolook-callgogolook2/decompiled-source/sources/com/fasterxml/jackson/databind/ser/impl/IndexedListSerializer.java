package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase;
import java.io.IOException;
import java.util.List;
@JacksonStdImpl
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/IndexedListSerializer.class */
public final class IndexedListSerializer extends AsArraySerializerBase<List<?>> {
    public IndexedListSerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        super(List.class, javaType, z, typeSerializer, jsonSerializer);
    }

    public IndexedListSerializer(IndexedListSerializer indexedListSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(indexedListSerializer, beanProperty, typeSerializer, jsonSerializer, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new IndexedListSerializer(this, this._property, typeSerializer, this._elementSerializer, this._unwrapSingle);
    }

    public boolean isEmpty(SerializerProvider serializerProvider, List<?> list) {
        return list == null || list.isEmpty();
    }

    public final void serialize(List<?> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int size = list.size();
        if (size != 1 || ((this._unwrapSingle != null || !serializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) && this._unwrapSingle != Boolean.TRUE)) {
            jsonGenerator.writeStartArray(size);
            serializeContents(list, jsonGenerator, serializerProvider);
            jsonGenerator.writeEndArray();
            return;
        }
        serializeContents(list, jsonGenerator, serializerProvider);
    }

    public void serializeContents(List<?> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        JsonSerializer<Object> jsonSerializer = this._elementSerializer;
        if (jsonSerializer != null) {
            serializeContentsUsing(list, jsonGenerator, serializerProvider, jsonSerializer);
        } else if (this._valueTypeSerializer != null) {
            serializeTypedContents(list, jsonGenerator, serializerProvider);
        } else {
            int size = list.size();
            if (size != 0) {
                int i = 0;
                int i2 = 0;
                try {
                    PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
                    while (i2 < size) {
                        i = i2;
                        Object obj = list.get(i2);
                        if (obj == null) {
                            serializerProvider.defaultSerializeNull(jsonGenerator);
                            propertySerializerMap = propertySerializerMap;
                        } else {
                            Class<?> cls = obj.getClass();
                            JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
                            propertySerializerMap = propertySerializerMap;
                            JsonSerializer<Object> jsonSerializer2 = serializerFor;
                            if (serializerFor == null) {
                                jsonSerializer2 = this._elementType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._elementType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                                propertySerializerMap = this._dynamicSerializers;
                            }
                            jsonSerializer2.serialize(obj, jsonGenerator, serializerProvider);
                        }
                        i2++;
                    }
                } catch (Exception e) {
                    wrapAndThrow(serializerProvider, e, list, i);
                    throw null;
                }
            }
        }
    }

    public void serializeContentsUsing(List<?> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException {
        int size = list.size();
        if (size != 0) {
            TypeSerializer typeSerializer = this._valueTypeSerializer;
            for (int i = 0; i < size; i++) {
                Object obj = list.get(i);
                if (obj == null) {
                    try {
                        serializerProvider.defaultSerializeNull(jsonGenerator);
                        continue;
                    } catch (Exception e) {
                        wrapAndThrow(serializerProvider, e, list, i);
                        throw null;
                    }
                } else if (typeSerializer == null) {
                    jsonSerializer.serialize(obj, jsonGenerator, serializerProvider);
                    continue;
                } else {
                    jsonSerializer.serializeWithType(obj, jsonGenerator, serializerProvider, typeSerializer);
                    continue;
                }
            }
        }
    }

    public void serializeTypedContents(List<?> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int size = list.size();
        if (size != 0) {
            int i = 0;
            int i2 = 0;
            try {
                TypeSerializer typeSerializer = this._valueTypeSerializer;
                PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
                while (i < size) {
                    i2 = i;
                    Object obj = list.get(i);
                    if (obj == null) {
                        serializerProvider.defaultSerializeNull(jsonGenerator);
                        propertySerializerMap = propertySerializerMap;
                    } else {
                        Class<?> cls = obj.getClass();
                        JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
                        propertySerializerMap = propertySerializerMap;
                        JsonSerializer<Object> jsonSerializer = serializerFor;
                        if (serializerFor == null) {
                            jsonSerializer = this._elementType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._elementType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                            propertySerializerMap = this._dynamicSerializers;
                        }
                        jsonSerializer.serializeWithType(obj, jsonGenerator, serializerProvider, typeSerializer);
                    }
                    i++;
                }
            } catch (Exception e) {
                wrapAndThrow(serializerProvider, e, list, i2);
                throw null;
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public AsArraySerializerBase<List<?>> withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        return new IndexedListSerializer(this, beanProperty, typeSerializer, jsonSerializer, bool);
    }
}
