package com.bytedance.sdk.openadsdk.preload.p193a.p195b;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.m */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/m.class */
public abstract class AbstractC5230m {
    /* renamed from: a */
    public static AbstractC5230m m32811a() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            final Object obj = declaredField.get(null);
            final Method method = cls.getMethod("allocateInstance", Class.class);
            return new AbstractC5230m() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.m.1
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5230m
                /* renamed from: a */
                public final <T> T mo32809a(Class<T> cls2) throws Exception {
                    m32810b(cls2);
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
                return new AbstractC5230m() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.m.2
                    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5230m
                    /* renamed from: a */
                    public final <T> T mo32809a(Class<T> cls2) throws Exception {
                        m32810b(cls2);
                        return (T) declaredMethod2.invoke(null, cls2, Integer.valueOf(intValue));
                    }
                };
            } catch (Exception e2) {
                try {
                    final Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new AbstractC5230m() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.m.3
                        @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5230m
                        /* renamed from: a */
                        public final <T> T mo32809a(Class<T> cls2) throws Exception {
                            m32810b(cls2);
                            return (T) declaredMethod3.invoke(null, cls2, Object.class);
                        }
                    };
                } catch (Exception e3) {
                    return new AbstractC5230m() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.m.4
                        @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5230m
                        /* renamed from: a */
                        public final <T> T mo32809a(Class<T> cls2) {
                            throw new UnsupportedOperationException("Cannot allocate ".concat(String.valueOf(cls2)));
                        }
                    };
                }
            }
        }
    }

    /* renamed from: b */
    static void m32810b(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: " + cls.getName());
        } else if (!Modifier.isAbstract(modifiers)) {
        } else {
            throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: " + cls.getName());
        }
    }

    /* renamed from: a */
    public abstract <T> T mo32809a(Class<T> cls) throws Exception;
}
