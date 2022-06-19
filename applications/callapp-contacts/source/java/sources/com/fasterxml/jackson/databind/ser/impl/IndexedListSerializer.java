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
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/IndexedListSerializer.class */
public final class IndexedListSerializer extends AsArraySerializerBase<List<?>> {
    private static final long serialVersionUID = 1;

    public IndexedListSerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        super(List.class, javaType, z, typeSerializer, jsonSerializer);
    }

    public IndexedListSerializer(IndexedListSerializer indexedListSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(indexedListSerializer, beanProperty, typeSerializer, jsonSerializer, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public final ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new IndexedListSerializer(this, this._property, typeSerializer, this._elementSerializer, this._unwrapSingle);
    }

    public final boolean hasSingleElement(List<?> list) {
        return list.size() == 1;
    }

    public final boolean isEmpty(SerializerProvider serializerProvider, List<?> list) {
        return list.isEmpty();
    }

    public final void serialize(List<?> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int size = list.size();
        if (size == 1 && ((this._unwrapSingle == null && serializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this._unwrapSingle == Boolean.TRUE)) {
            serializeContents(list, jsonGenerator, serializerProvider);
            return;
        }
        jsonGenerator.writeStartArray(list, size);
        serializeContents(list, jsonGenerator, serializerProvider);
        jsonGenerator.writeEndArray();
    }

    public final void serializeContents(List<?> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        JsonSerializer<Object> jsonSerializer;
        if (this._elementSerializer != null) {
            serializeContentsUsing(list, jsonGenerator, serializerProvider, this._elementSerializer);
        } else if (this._valueTypeSerializer != null) {
            serializeTypedContents(list, jsonGenerator, serializerProvider);
        } else {
            int size = list.size();
            if (size == 0) {
                return;
            }
            int i = 0;
            try {
                PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
                for (int i2 = 0; i2 < size; i2++) {
                    i = i2;
                    Object obj = list.get(i2);
                    if (obj == null) {
                        serializerProvider.defaultSerializeNull(jsonGenerator);
                    } else {
                        Class<?> cls = obj.getClass();
                        int i3 = i2;
                        JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
                        PropertySerializerMap propertySerializerMap2 = propertySerializerMap;
                        JsonSerializer<Object> jsonSerializer2 = serializerFor;
                        if (serializerFor == null) {
                            if (this._elementType.hasGenericTypes()) {
                                int i4 = i2;
                                jsonSerializer = _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._elementType, cls), serializerProvider);
                            } else {
                                jsonSerializer = _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                            }
                            int i5 = i2;
                            propertySerializerMap2 = this._dynamicSerializers;
                            jsonSerializer2 = jsonSerializer;
                        }
                        jsonSerializer2.serialize(obj, jsonGenerator, serializerProvider);
                        propertySerializerMap = propertySerializerMap2;
                    }
                }
            } catch (Exception e) {
                wrapAndThrow(serializerProvider, e, list, i);
            }
        }
    }

    public final void serializeContentsUsing(List<?> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException {
        int size = list.size();
        if (size == 0) {
            return;
        }
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        for (int i = 0; i < size; i++) {
            Object obj = list.get(i);
            if (obj == null) {
                try {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } catch (Exception e) {
                    wrapAndThrow(serializerProvider, e, list, i);
                }
            } else if (typeSerializer == null) {
                jsonSerializer.serialize(obj, jsonGenerator, serializerProvider);
            } else {
                jsonSerializer.serializeWithType(obj, jsonGenerator, serializerProvider, typeSerializer);
            }
        }
    }

    public final void serializeTypedContents(List<?> list, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        PropertySerializerMap propertySerializerMap;
        JsonSerializer<Object> jsonSerializer;
        int size = list.size();
        if (size == 0) {
            return;
        }
        int i = 0;
        int i2 = 0;
        try {
            TypeSerializer typeSerializer = this._valueTypeSerializer;
            PropertySerializerMap propertySerializerMap2 = this._dynamicSerializers;
            while (true) {
                PropertySerializerMap propertySerializerMap3 = propertySerializerMap2;
                if (i >= size) {
                    return;
                }
                i2 = i;
                Object obj = list.get(i);
                if (obj == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                    propertySerializerMap = propertySerializerMap3;
                } else {
                    Class<?> cls = obj.getClass();
                    int i3 = i;
                    JsonSerializer<Object> serializerFor = propertySerializerMap3.serializerFor(cls);
                    propertySerializerMap = propertySerializerMap3;
                    JsonSerializer<Object> jsonSerializer2 = serializerFor;
                    if (serializerFor == null) {
                        if (this._elementType.hasGenericTypes()) {
                            int i4 = i;
                            jsonSerializer = _findAndAddDynamic(propertySerializerMap3, serializerProvider.constructSpecializedType(this._elementType, cls), serializerProvider);
                        } else {
                            jsonSerializer = _findAndAddDynamic(propertySerializerMap3, cls, serializerProvider);
                        }
                        int i5 = i;
                        jsonSerializer2 = jsonSerializer;
                        propertySerializerMap = this._dynamicSerializers;
                    }
                    jsonSerializer2.serializeWithType(obj, jsonGenerator, serializerProvider, typeSerializer);
                }
                i++;
                propertySerializerMap2 = propertySerializerMap;
            }
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, list, i2);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public final AsArraySerializerBase<List<?>> withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        return new IndexedListSerializer(this, beanProperty, typeSerializer, jsonSerializer, bool);
    }
}
