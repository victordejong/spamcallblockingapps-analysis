package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/CollectionSerializer.class */
public class CollectionSerializer extends AsArraySerializerBase<Collection<?>> {
    private static final long serialVersionUID = 1;

    @Deprecated
    public CollectionSerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer, BeanProperty beanProperty, JsonSerializer<Object> jsonSerializer) {
        this(javaType, z, typeSerializer, jsonSerializer);
    }

    public CollectionSerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        super(Collection.class, javaType, z, typeSerializer, jsonSerializer);
    }

    public CollectionSerializer(CollectionSerializer collectionSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(collectionSerializer, beanProperty, typeSerializer, jsonSerializer, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new CollectionSerializer(this, this._property, typeSerializer, this._elementSerializer, this._unwrapSingle);
    }

    public boolean hasSingleElement(Collection<?> collection) {
        return collection.size() == 1;
    }

    public boolean isEmpty(SerializerProvider serializerProvider, Collection<?> collection) {
        return collection.isEmpty();
    }

    public final void serialize(Collection<?> collection, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int size = collection.size();
        if (size == 1 && ((this._unwrapSingle == null && serializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this._unwrapSingle == Boolean.TRUE)) {
            serializeContents(collection, jsonGenerator, serializerProvider);
            return;
        }
        jsonGenerator.writeStartArray(collection, size);
        serializeContents(collection, jsonGenerator, serializerProvider);
        jsonGenerator.writeEndArray();
    }

    public void serializeContents(Collection<?> collection, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        PropertySerializerMap propertySerializerMap;
        JsonSerializer<Object> jsonSerializer;
        jsonGenerator.setCurrentValue(collection);
        if (this._elementSerializer != null) {
            serializeContentsUsing(collection, jsonGenerator, serializerProvider, this._elementSerializer);
            return;
        }
        Iterator<?> it2 = collection.iterator();
        if (!it2.hasNext()) {
            return;
        }
        PropertySerializerMap propertySerializerMap2 = this._dynamicSerializers;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        int i = 0;
        do {
            int i2 = i;
            try {
                Object next = it2.next();
                if (next == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                    propertySerializerMap = propertySerializerMap2;
                } else {
                    Class<?> cls = next.getClass();
                    int i3 = i;
                    JsonSerializer<Object> serializerFor = propertySerializerMap2.serializerFor(cls);
                    propertySerializerMap = propertySerializerMap2;
                    JsonSerializer<Object> jsonSerializer2 = serializerFor;
                    if (serializerFor == null) {
                        if (this._elementType.hasGenericTypes()) {
                            int i4 = i;
                            jsonSerializer = _findAndAddDynamic(propertySerializerMap2, serializerProvider.constructSpecializedType(this._elementType, cls), serializerProvider);
                        } else {
                            jsonSerializer = _findAndAddDynamic(propertySerializerMap2, cls, serializerProvider);
                        }
                        int i5 = i;
                        jsonSerializer2 = jsonSerializer;
                        propertySerializerMap = this._dynamicSerializers;
                    }
                    if (typeSerializer == null) {
                        jsonSerializer2.serialize(next, jsonGenerator, serializerProvider);
                    } else {
                        jsonSerializer2.serializeWithType(next, jsonGenerator, serializerProvider, typeSerializer);
                    }
                }
                i++;
                propertySerializerMap2 = propertySerializerMap;
            } catch (Exception e) {
                wrapAndThrow(serializerProvider, e, collection, i2);
                return;
            }
        } while (it2.hasNext());
    }

    public void serializeContentsUsing(Collection<?> collection, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException {
        Iterator<?> it2 = collection.iterator();
        if (it2.hasNext()) {
            TypeSerializer typeSerializer = this._valueTypeSerializer;
            int i = 0;
            do {
                Object next = it2.next();
                if (next == null) {
                    try {
                        serializerProvider.defaultSerializeNull(jsonGenerator);
                    } catch (Exception e) {
                        wrapAndThrow(serializerProvider, e, collection, i);
                    }
                } else if (typeSerializer == null) {
                    jsonSerializer.serialize(next, jsonGenerator, serializerProvider);
                } else {
                    jsonSerializer.serializeWithType(next, jsonGenerator, serializerProvider, typeSerializer);
                }
                i++;
            } while (it2.hasNext());
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    /* renamed from: withResolved */
    public AsArraySerializerBase<Collection<?>> withResolved2(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        return new CollectionSerializer(this, beanProperty, typeSerializer, jsonSerializer, bool);
    }
}
