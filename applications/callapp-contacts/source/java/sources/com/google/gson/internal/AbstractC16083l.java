package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* renamed from: com.google.gson.internal.l */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/l.class */
public abstract class AbstractC16083l {
    /* renamed from: a */
    public static AbstractC16083l m7866a() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            final Object obj = declaredField.get(null);
            final Method method = cls.getMethod("allocateInstance", Class.class);
            return new AbstractC16083l() { // from class: com.google.gson.internal.l.1
                @Override // com.google.gson.internal.AbstractC16083l
                /* renamed from: a */
                public final <T> T mo7864a(Class<T> cls2) throws Exception {
                    m7865b(cls2);
                    return (T) method.invoke(obj, cls2);
                }
            };
        } catch (Exception e) {
            try {
                Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                declaredMethod.setAccessible(true);
                final int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                final Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                declaredMethod2.setAccessible(true);
                return new AbstractC16083l() { // from class: com.google.gson.internal.l.2
                    @Override // com.google.gson.internal.AbstractC16083l
                    /* renamed from: a */
                    public final <T> T mo7864a(Class<T> cls2) throws Exception {
                        m7865b(cls2);
                        return (T) declaredMethod2.invoke(null, cls2, Integer.valueOf(intValue));
                    }
                };
            } catch (Exception e2) {
                try {
                    final Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new AbstractC16083l() { // from class: com.google.gson.internal.l.3
                        @Override // com.google.gson.internal.AbstractC16083l
                        /* renamed from: a */
                        public final <T> T mo7864a(Class<T> cls2) throws Exception {
                            m7865b(cls2);
                            return (T) declaredMethod3.invoke(null, cls2, Object.class);
                        }
                    };
                } catch (Exception e3) {
                    return new AbstractC16083l() { // from class: com.google.gson.internal.l.4
                        @Override // com.google.gson.internal.AbstractC16083l
                        /* renamed from: a */
                        public final <T> T mo7864a(Class<T> cls2) {
                            throw new UnsupportedOperationException("Cannot allocate ".concat(String.valueOf(cls2)));
                        }
                    };
                }
            }
        }
    }

    /* renamed from: b */
    static void m7865b(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: " + cls.getName());
        } else if (!Modifier.isAbstract(modifiers)) {
        } else {
            throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: " + cls.getName());
        }
    }

    /* renamed from: a */
    public abstract <T> T mo7864a(Class<T> cls) throws Exception;
}
