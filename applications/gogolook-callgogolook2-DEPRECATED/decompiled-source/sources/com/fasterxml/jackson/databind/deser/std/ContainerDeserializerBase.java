package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase.class */
public abstract class ContainerDeserializerBase<T> extends StdDeserializer<T> {
    public ContainerDeserializerBase(JavaType javaType) {
        super(javaType);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public SettableBeanProperty findBackReference(String str) {
        JsonDeserializer<Object> contentDeserializer = getContentDeserializer();
        if (contentDeserializer != null) {
            return contentDeserializer.findBackReference(str);
        }
        throw new IllegalArgumentException("Can not handle managed/back reference '" + str + "': type: container deserializer of type " + getClass().getName() + " returned null for 'getContentDeserializer()'");
    }

    public abstract JsonDeserializer<Object> getContentDeserializer();

    public void wrapAndThrow(Throwable th, Object obj, String str) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        if (th instanceof Error) {
            throw ((Error) th);
        } else if (!(th instanceof IOException) || (th instanceof JsonMappingException)) {
            throw JsonMappingException.wrapWithPath(th, obj, str);
        } else {
            throw ((IOException) th);
        }
    }
}
