package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase;
import java.io.IOException;
import java.util.Iterator;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/IteratorSerializer.class */
public class IteratorSerializer extends AsArraySerializerBase<Iterator<?>> {
    public IteratorSerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer) {
        super(Iterator.class, javaType, z, typeSerializer, (JsonSerializer<Object>) null);
    }

    public IteratorSerializer(IteratorSerializer iteratorSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(iteratorSerializer, beanProperty, typeSerializer, jsonSerializer, bool);
    }

    protected void _serializeDynamicContents(Iterator<?> it2, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
        do {
            Object next = it2.next();
            if (next == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
            } else {
                Class<?> cls = next.getClass();
                JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
                PropertySerializerMap propertySerializerMap2 = propertySerializerMap;
                JsonSerializer<Object> jsonSerializer = serializerFor;
                if (serializerFor == null) {
                    jsonSerializer = this._elementType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._elementType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                    propertySerializerMap2 = this._dynamicSerializers;
                }
                if (typeSerializer == null) {
                    jsonSerializer.serialize(next, jsonGenerator, serializerProvider);
                    propertySerializerMap = propertySerializerMap2;
                } else {
                    jsonSerializer.serializeWithType(next, jsonGenerator, serializerProvider, typeSerializer);
                    propertySerializerMap = propertySerializerMap2;
                }
            }
        } while (it2.hasNext());
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new IteratorSerializer(this, this._property, typeSerializer, this._elementSerializer, this._unwrapSingle);
    }

    public boolean hasSingleElement(Iterator<?> it2) {
        return false;
    }

    public boolean isEmpty(SerializerProvider serializerProvider, Iterator<?> it2) {
        return !it2.hasNext();
    }

    public final void serialize(Iterator<?> it2, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeStartArray(it2);
        serializeContents(it2, jsonGenerator, serializerProvider);
        jsonGenerator.writeEndArray();
    }

    public void serializeContents(Iterator<?> it2, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (it2.hasNext()) {
            JsonSerializer<Object> jsonSerializer = this._elementSerializer;
            if (jsonSerializer == null) {
                _serializeDynamicContents(it2, jsonGenerator, serializerProvider);
                return;
            }
            TypeSerializer typeSerializer = this._valueTypeSerializer;
            do {
                Object next = it2.next();
                if (next == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else if (typeSerializer == null) {
                    jsonSerializer.serialize(next, jsonGenerator, serializerProvider);
                } else {
                    jsonSerializer.serializeWithType(next, jsonGenerator, serializerProvider, typeSerializer);
                }
            } while (it2.hasNext());
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    public AsArraySerializerBase<Iterator<?>> withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        return new IteratorSerializer(this, beanProperty, typeSerializer, jsonSerializer, bool);
    }
}
