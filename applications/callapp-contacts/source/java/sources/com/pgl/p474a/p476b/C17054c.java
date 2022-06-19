package com.pgl.p474a.p476b;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.pgl.a.b.c */
/* loaded from: classes4-dex2jar.jar:com/pgl/a/b/c.class */
public final class C17054c {

    /* renamed from: a */
    private static final Map<Class<?>, Class<?>> f60574a;

    /* renamed from: com.pgl.a.b.c$a */
    /* loaded from: classes4-dex2jar.jar:com/pgl/a/b/c$a.class */
    public static final class C17055a<T> {

        /* renamed from: a */
        public final Class<? extends T> f60575a;

        /* renamed from: b */
        public final T f60576b;
    }

    static {
        HashMap hashMap = new HashMap();
        f60574a = hashMap;
        hashMap.put(Boolean.class, Boolean.TYPE);
        hashMap.put(Byte.class, Byte.TYPE);
        hashMap.put(Character.class, Character.TYPE);
        hashMap.put(Short.class, Short.TYPE);
        hashMap.put(Integer.class, Integer.TYPE);
        hashMap.put(Float.class, Float.TYPE);
        hashMap.put(Long.class, Long.TYPE);
        hashMap.put(Double.class, Double.TYPE);
        Class cls = Boolean.TYPE;
        hashMap.put(cls, cls);
        Class cls2 = Byte.TYPE;
        hashMap.put(cls2, cls2);
        Class cls3 = Character.TYPE;
        hashMap.put(cls3, cls3);
        Class cls4 = Short.TYPE;
        hashMap.put(cls4, cls4);
        Class cls5 = Integer.TYPE;
        hashMap.put(cls5, cls5);
        Class cls6 = Float.TYPE;
        hashMap.put(cls6, cls6);
        Class cls7 = Long.TYPE;
        hashMap.put(cls7, cls7);
        Class cls8 = Double.TYPE;
        hashMap.put(cls8, cls8);
    }

    /* renamed from: a */
    public static void m5951a(String str, String str2, Object... objArr) {
        Class<? super Object> cls;
        Method method;
        try {
            Class<?> cls2 = Class.forName(str);
            Class[] clsArr = new Class[3];
            int i = 0;
            while (true) {
                cls = cls2;
                if (i < 3) {
                    Object obj = objArr[i];
                    clsArr[i] = (obj == null || !(obj instanceof C17055a)) ? obj == null ? null : obj.getClass() : ((C17055a) obj).f60575a;
                    i++;
                }
            }
            while (true) {
                Method[] declaredMethods = cls.getDeclaredMethods();
                if (str2 == null) {
                    throw new NullPointerException("Method name must not be null.");
                }
                int length = declaredMethods.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        method = null;
                        break;
                    }
                    method = declaredMethods[i2];
                    if (method.getName().equals(str2) && m5950a(method.getParameterTypes(), clsArr)) {
                        break;
                    }
                    i2++;
                }
                if (method != null) {
                    method.setAccessible(true);
                    Object[] objArr2 = new Object[3];
                    for (int i3 = 0; i3 < 3; i3++) {
                        Object obj2 = objArr[i3];
                        if (obj2 == null || !(obj2 instanceof C17055a)) {
                            objArr2[i3] = obj2;
                        } else {
                            objArr2[i3] = ((C17055a) obj2).f60576b;
                        }
                    }
                    method.invoke(null, objArr2);
                    return;
                } else if (cls.getSuperclass() == null) {
                    throw new NoSuchMethodException();
                } else {
                    cls = cls.getSuperclass();
                }
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    private static boolean m5950a(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (clsArr == null) {
            return clsArr2 == null || clsArr2.length == 0;
        } else if (clsArr2 == null) {
            return clsArr.length == 0;
        } else if (clsArr.length != clsArr2.length) {
            return false;
        } else {
            for (int i = 0; i < clsArr.length; i++) {
                if (!clsArr[i].isAssignableFrom(clsArr2[i])) {
                    Map<Class<?>, Class<?>> map = f60574a;
                    if (!map.containsKey(clsArr[i]) || !map.get(clsArr[i]).equals(map.get(clsArr2[i]))) {
                        return false;
                    }
                }
            }
            return true;
        }
    }
}
