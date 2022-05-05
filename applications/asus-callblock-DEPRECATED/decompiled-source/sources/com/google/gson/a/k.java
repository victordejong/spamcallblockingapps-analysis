package com.google.gson.a;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/k.class */
public abstract class k {
    public static k a() {
        k kVar;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            final Object obj = declaredField.get(null);
            final Method method = cls.getMethod("allocateInstance", Class.class);
            kVar = new k() { // from class: com.google.gson.a.k.1
                @Override // com.google.gson.a.k
                public final <T> T a(Class<T> cls2) {
                    return (T) method.invoke(obj, cls2);
                }
            };
        } catch (Exception e) {
            try {
                final Method declaredMethod = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                declaredMethod.setAccessible(true);
                kVar = new k() { // from class: com.google.gson.a.k.2
                    @Override // com.google.gson.a.k
                    public final <T> T a(Class<T> cls2) {
                        return (T) declaredMethod.invoke(null, cls2, Object.class);
                    }
                };
            } catch (Exception e2) {
                try {
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod2.setAccessible(true);
                    final int intValue = ((Integer) declaredMethod2.invoke(null, Object.class)).intValue();
                    final Method declaredMethod3 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod3.setAccessible(true);
                    kVar = new k() { // from class: com.google.gson.a.k.3
                        @Override // com.google.gson.a.k
                        public final <T> T a(Class<T> cls2) {
                            return (T) declaredMethod3.invoke(null, cls2, Integer.valueOf(intValue));
                        }
                    };
                } catch (Exception e3) {
                    kVar = new k() { // from class: com.google.gson.a.k.4
                        @Override // com.google.gson.a.k
                        public final <T> T a(Class<T> cls2) {
                            throw new UnsupportedOperationException("Cannot allocate " + cls2);
                        }
                    };
                }
            }
        }
        return kVar;
    }

    public abstract <T> T a(Class<T> cls);
}
