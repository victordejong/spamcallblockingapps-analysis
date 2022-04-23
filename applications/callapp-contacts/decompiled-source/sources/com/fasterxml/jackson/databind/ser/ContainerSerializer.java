package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/ContainerSerializer.class */
public abstract class ContainerSerializer<T> extends StdSerializer<T> {
    public ContainerSerializer(JavaType javaType) {
        super(javaType);
    }

    public ContainerSerializer(ContainerSerializer<?> containerSerializer) {
        super(containerSerializer._handledType, false);
    }

    public ContainerSerializer(Class<T> cls) {
        super(cls);
    }

    public ContainerSerializer(Class<?> cls, boolean z) {
        super(cls, z);
    }

    protected abstract ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer);

    public abstract JsonSerializer<?> getContentSerializer();

    public abstract JavaType getContentType();

    @Deprecated
    protected boolean hasContentTypeAnnotation(SerializerProvider serializerProvider, BeanProperty beanProperty) {
        return false;
    }

    public abstract boolean hasSingleElement(T t);

    /* JADX WARN: Multi-variable type inference failed */
    public ContainerSerializer<?> withValueTypeSerializer(TypeSerializer typeSerializer) {
        return typeSerializer == null ? this : _withValueTypeSerializer(typeSerializer);
    }
}
