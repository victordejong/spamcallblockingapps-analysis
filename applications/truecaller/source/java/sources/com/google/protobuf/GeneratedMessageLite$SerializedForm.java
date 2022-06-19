package com.google.protobuf;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.Field;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/GeneratedMessageLite$SerializedForm.class */
public final class GeneratedMessageLite$SerializedForm implements Serializable {
    private static final long serialVersionUID = 0;
    private final byte[] asBytes;
    private final Class<?> messageClass;
    private final String messageClassName;

    public GeneratedMessageLite$SerializedForm(MessageLite messageLite) {
        Class<?> cls = messageLite.getClass();
        this.messageClass = cls;
        this.messageClassName = cls.getName();
        this.asBytes = messageLite.toByteArray();
    }

    /* renamed from: of */
    public static GeneratedMessageLite$SerializedForm m38287of(MessageLite messageLite) {
        return new GeneratedMessageLite$SerializedForm(messageLite);
    }

    @Deprecated
    private Object readResolveFallback() throws ObjectStreamException {
        try {
            Field declaredField = resolveMessageClass().getDeclaredField("defaultInstance");
            declaredField.setAccessible(true);
            return ((MessageLite) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
        } catch (InvalidProtocolBufferException e) {
            throw new RuntimeException("Unable to understand proto buffer", e);
        } catch (ClassNotFoundException e2) {
            StringBuilder m8728C = C22128a.m8728C("Unable to find proto buffer class: ");
            m8728C.append(this.messageClassName);
            throw new RuntimeException(m8728C.toString(), e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Unable to call parsePartialFrom", e3);
        } catch (NoSuchFieldException e4) {
            StringBuilder m8728C2 = C22128a.m8728C("Unable to find defaultInstance in ");
            m8728C2.append(this.messageClassName);
            throw new RuntimeException(m8728C2.toString(), e4);
        } catch (SecurityException e5) {
            StringBuilder m8728C3 = C22128a.m8728C("Unable to call defaultInstance in ");
            m8728C3.append(this.messageClassName);
            throw new RuntimeException(m8728C3.toString(), e5);
        }
    }

    private Class<?> resolveMessageClass() throws ClassNotFoundException {
        Class<?> cls = this.messageClass;
        if (cls == null) {
            cls = Class.forName(this.messageClassName);
        }
        return cls;
    }

    public Object readResolve() throws ObjectStreamException {
        try {
            Field declaredField = resolveMessageClass().getDeclaredField("DEFAULT_INSTANCE");
            declaredField.setAccessible(true);
            return ((MessageLite) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
        } catch (InvalidProtocolBufferException e) {
            throw new RuntimeException("Unable to understand proto buffer", e);
        } catch (ClassNotFoundException e2) {
            StringBuilder m8728C = C22128a.m8728C("Unable to find proto buffer class: ");
            m8728C.append(this.messageClassName);
            throw new RuntimeException(m8728C.toString(), e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Unable to call parsePartialFrom", e3);
        } catch (NoSuchFieldException e4) {
            return readResolveFallback();
        } catch (SecurityException e5) {
            StringBuilder m8728C2 = C22128a.m8728C("Unable to call DEFAULT_INSTANCE in ");
            m8728C2.append(this.messageClassName);
            throw new RuntimeException(m8728C2.toString(), e5);
        }
    }
}
