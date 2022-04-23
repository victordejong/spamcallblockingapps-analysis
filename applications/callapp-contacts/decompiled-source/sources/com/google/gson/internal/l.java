package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/l.class */
public abstract class l {
    public static l a() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            final Object obj = declaredField.get(null);
            final Method method = cls.getMethod("allocateInstance", Class.class);
            return new l() { // from class: com.google.gson.internal.l.1
                @Override // com.google.gson.internal.l
                public final <T> T a(Class<T> cls2) throws Exception {
                    b(cls2);
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
                return new l() { // from class: com.google.gson.internal.l.2
                    @Override // com.google.gson.internal.l
                    public final <T> T a(Class<T> cls2) throws Exception {
                        b(cls2);
                        return (T) declaredMethod2.invoke(null, cls2, Integer.valueOf(intValue));
                    }
                };
            } catch (Exception e2) {
                try {
                    final Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new l() { // from class: com.google.gson.internal.l.3
                        @Override // com.google.gson.internal.l
                        public final <T> T a(Class<T> cls2) throws Exception {
                            b(cls2);
                            return (T) declaredMethod3.invoke(null, cls2, Object.class);
                        }
                    };
                } catch (Exception e3) {
                    return new l() { // from class: com.google.gson.internal.l.4
                        @Override // com.google.gson.internal.l
                        public final <T> T a(Class<T> cls2) {
                            throw new UnsupportedOperationException("Cannot allocate ".concat(String.valueOf(cls2)));
                        }
                    };
                }
            }
        }
    }

    static void b(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: " + cls.getName());
        } else if (Modifier.isAbstract(modifiers)) {
            throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: " + cls.getName());
        }
    }

    public abstract <T> T a(Class<T> cls) throws Exception;
}
