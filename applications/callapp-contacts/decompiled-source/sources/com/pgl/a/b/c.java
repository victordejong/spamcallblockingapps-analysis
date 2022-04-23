package com.pgl.a.b;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/pgl/a/b/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f34940a;

    /* loaded from: classes4-dex2jar.jar:com/pgl/a/b/c$a.class */
    public static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        public final Class<? extends T> f34941a;

        /* renamed from: b  reason: collision with root package name */
        public final T f34942b;
    }

    static {
        HashMap hashMap = new HashMap();
        f34940a = hashMap;
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

    public static void a(String str, String str2, Object... objArr) {
        Method method;
        try {
            Class<?> cls = Class.forName(str);
            Class[] clsArr = new Class[3];
            int i = 0;
            while (true) {
                Class<?> cls2 = null;
                if (i < 3) {
                    Object obj = objArr[i];
                    if (obj != null && (obj instanceof a)) {
                        cls2 = ((a) obj).f34941a;
                    } else if (obj != null) {
                        cls2 = obj.getClass();
                    }
                    clsArr[i] = cls2;
                    i++;
                }
            }
            while (true) {
                Method[] declaredMethods = cls.getDeclaredMethods();
                if (str2 != null) {
                    int length = declaredMethods.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            method = null;
                            break;
                        }
                        method = declaredMethods[i2];
                        if (method.getName().equals(str2) && a(method.getParameterTypes(), clsArr)) {
                            break;
                        }
                        i2++;
                    }
                    if (method != null) {
                        method.setAccessible(true);
                        Object[] objArr2 = new Object[3];
                        for (int i3 = 0; i3 < 3; i3++) {
                            Object obj2 = objArr[i3];
                            if (obj2 == null || !(obj2 instanceof a)) {
                                objArr2[i3] = obj2;
                            } else {
                                objArr2[i3] = ((a) obj2).f34942b;
                            }
                        }
                        method.invoke(null, objArr2);
                        return;
                    } else if (cls.getSuperclass() != null) {
                        cls = cls.getSuperclass();
                    } else {
                        throw new NoSuchMethodException();
                    }
                } else {
                    throw new NullPointerException("Method name must not be null.");
                }
            }
        } catch (Exception e) {
        }
    }

    private static boolean a(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (clsArr == null) {
            return clsArr2 == null || clsArr2.length == 0;
        }
        if (clsArr2 == null) {
            return clsArr.length == 0;
        }
        if (clsArr.length != clsArr2.length) {
            return false;
        }
        for (int i = 0; i < clsArr.length; i++) {
            if (!clsArr[i].isAssignableFrom(clsArr2[i])) {
                Map<Class<?>, Class<?>> map = f34940a;
                if (!map.containsKey(clsArr[i]) || !map.get(clsArr[i]).equals(map.get(clsArr2[i]))) {
                    return false;
                }
            }
        }
        return true;
    }
}
