package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import java.io.IOException;
import java.util.Iterator;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/IterableSerializer.class */
public class IterableSerializer extends AsArraySerializerBase<Iterable<?>> {
    public IterableSerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer) {
        super(Iterable.class, javaType, z, typeSerializer, (JsonSerializer<Object>) null);
    }

    public IterableSerializer(IterableSerializer iterableSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(iterableSerializer, beanProperty, typeSerializer, jsonSerializer, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new IterableSerializer(this, this._property, typeSerializer, this._elementSerializer, this._unwrapSingle);
    }

    public boolean hasSingleElement(Iterable<?> iterable) {
        if (iterable != null) {
            Iterator<?> it2 = iterable.iterator();
            if (!it2.hasNext()) {
                return false;
            }
            it2.next();
            return !it2.hasNext();
        }
        return false;
    }

    public boolean isEmpty(SerializerProvider serializerProvider, Iterable<?> iterable) {
        return !iterable.iterator().hasNext();
    }

    public final void serialize(Iterable<?> iterable, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (((this._unwrapSingle == null && serializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this._unwrapSingle == Boolean.TRUE) && hasSingleElement(iterable)) {
            serializeContents(iterable, jsonGenerator, serializerProvider);
            return;
        }
        jsonGenerator.writeStartArray(iterable);
        serializeContents(iterable, jsonGenerator, serializerProvider);
        jsonGenerator.writeEndArray();
    }

    public void serializeContents(Iterable<?> iterable, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        Iterator<?> it2 = iterable.iterator();
        if (it2.hasNext()) {
            TypeSerializer typeSerializer = this._valueTypeSerializer;
            Class<?> cls = null;
            JsonSerializer<Object> jsonSerializer = null;
            do {
                Object next = it2.next();
                if (next == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else {
                    JsonSerializer<Object> jsonSerializer2 = this._elementSerializer;
                    if (jsonSerializer2 == null) {
                        Class<?> cls2 = next.getClass();
                        if (cls2 != cls) {
                            jsonSerializer = serializerProvider.findValueSerializer(cls2, this._property);
                            cls = cls2;
                        }
                        jsonSerializer2 = jsonSerializer;
                        jsonSerializer = jsonSerializer;
                    }
                    if (typeSerializer == null) {
                        jsonSerializer2.serialize(next, jsonGenerator, serializerProvider);
                    } else {
                        jsonSerializer2.serializeWithType(next, jsonGenerator, serializerProvider, typeSerializer);
                    }
                }
            } while (it2.hasNext());
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase
    /* renamed from: withResolved */
    public AsArraySerializerBase<Iterable<?>> withResolved2(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, Boolean bool) {
        return new IterableSerializer(this, beanProperty, typeSerializer, jsonSerializer, bool);
    }
}
