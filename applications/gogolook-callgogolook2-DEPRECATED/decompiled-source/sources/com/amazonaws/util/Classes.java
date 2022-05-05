package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/Classes.class */
public enum Classes {
    ;

    public static Class<?> childClassOf(Class<?> cls, Object obj) {
        if (obj == null || obj == Object.class) {
            return null;
        }
        if (cls != null && cls.isInterface()) {
            return null;
        }
        Class<?> cls2 = obj.getClass();
        while (true) {
            Class<? super Object> superclass = cls2.getSuperclass();
            if (superclass == cls) {
                return cls2;
            }
            if (superclass == null) {
                return null;
            }
            cls2 = superclass;
        }
    }
}
