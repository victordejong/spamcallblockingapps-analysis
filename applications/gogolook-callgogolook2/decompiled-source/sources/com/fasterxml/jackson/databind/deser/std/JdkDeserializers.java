package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.std.FromStringDeserializer;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/JdkDeserializers.class */
public class JdkDeserializers {
    public static final HashSet<String> _classNames = new HashSet<>();

    static {
        for (Class cls : new Class[]{UUID.class, AtomicBoolean.class, StackTraceElement.class, ByteBuffer.class}) {
            _classNames.add(cls.getName());
        }
        for (Class<?> cls2 : FromStringDeserializer.types()) {
            _classNames.add(cls2.getName());
        }
    }

    public static JsonDeserializer<?> find(Class<?> cls, String str) {
        if (!_classNames.contains(str)) {
            return null;
        }
        FromStringDeserializer.Std findDeserializer = FromStringDeserializer.findDeserializer(cls);
        if (findDeserializer != null) {
            return findDeserializer;
        }
        if (cls == UUID.class) {
            return new UUIDDeserializer();
        }
        if (cls == StackTraceElement.class) {
            return new StackTraceElementDeserializer();
        }
        if (cls == AtomicBoolean.class) {
            return new AtomicBooleanDeserializer();
        }
        if (cls == ByteBuffer.class) {
            return new ByteBufferDeserializer();
        }
        return null;
    }
}
