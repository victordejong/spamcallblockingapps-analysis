package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.JsonDeserializer;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/JdkDeserializers.class */
public class JdkDeserializers {
    private static final HashSet<String> _classNames = new HashSet<>();

    static {
        for (int i = 0; i < 7; i++) {
            _classNames.add(new Class[]{UUID.class, AtomicBoolean.class, AtomicInteger.class, AtomicLong.class, StackTraceElement.class, ByteBuffer.class, Void.class}[i].getName());
        }
        for (Class<?> cls : FromStringDeserializer.types()) {
            _classNames.add(cls.getName());
        }
    }

    public static JsonDeserializer<?> find(Class<?> cls, String str) {
        if (_classNames.contains(str)) {
            FromStringDeserializer<?> findDeserializer = FromStringDeserializer.findDeserializer(cls);
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
            if (cls == AtomicInteger.class) {
                return new AtomicIntegerDeserializer();
            }
            if (cls == AtomicLong.class) {
                return new AtomicLongDeserializer();
            }
            if (cls == ByteBuffer.class) {
                return new ByteBufferDeserializer();
            }
            if (cls != Void.class) {
                return null;
            }
            return NullifyingDeserializer.instance;
        }
        return null;
    }
}
