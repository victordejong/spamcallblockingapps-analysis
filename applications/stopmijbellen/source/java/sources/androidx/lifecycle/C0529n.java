package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.n */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/n.class */
public class C0529n {

    /* renamed from: a */
    public static Map<Class<?>, Integer> f2048a = new HashMap();

    /* renamed from: b */
    public static Map<Class<?>, List<Constructor<? extends AbstractC0515e>>> f2049b = new HashMap();

    /* renamed from: a */
    public static AbstractC0515e m7982a(Constructor<? extends AbstractC0515e> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: b */
    public static String m7981b(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    /* renamed from: c */
    public static int m7980c(Class<?> cls) {
        int i;
        Constructor<?> constructor;
        boolean z;
        String str;
        Integer num = (Integer) ((HashMap) f2048a).get(cls);
        if (num != null) {
            return num.intValue();
        }
        if (cls.getCanonicalName() == null) {
            i = 1;
        } else {
            try {
                Package r0 = cls.getPackage();
                String canonicalName = cls.getCanonicalName();
                String name = r0 != null ? r0.getName() : "";
                if (!name.isEmpty()) {
                    canonicalName = canonicalName.substring(name.length() + 1);
                }
                String m7981b = m7981b(canonicalName);
                if (name.isEmpty()) {
                    str = m7981b;
                } else {
                    str = name + "." + m7981b;
                }
                Constructor<?> declaredConstructor = Class.forName(str).getDeclaredConstructor(cls);
                constructor = declaredConstructor;
                if (!declaredConstructor.isAccessible()) {
                    declaredConstructor.setAccessible(true);
                    constructor = declaredConstructor;
                }
            } catch (ClassNotFoundException e) {
                constructor = null;
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            }
            if (constructor != null) {
                ((HashMap) f2049b).put(cls, Collections.singletonList(constructor));
            } else {
                C0507b c0507b = C0507b.f2020c;
                Boolean bool = c0507b.f2022b.get(cls);
                if (bool != null) {
                    z = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length = declaredMethods.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                c0507b.f2022b.put(cls, Boolean.FALSE);
                                z = false;
                                break;
                            } else if (((AbstractC0532q) declaredMethods[i2].getAnnotation(AbstractC0532q.class)) != null) {
                                c0507b.m8006a(cls, declaredMethods);
                                z = true;
                                break;
                            } else {
                                i2++;
                            }
                        }
                    } catch (NoClassDefFoundError e3) {
                        throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e3);
                    }
                }
                if (z) {
                    i = 1;
                } else {
                    Class<? super Object> superclass = cls.getSuperclass();
                    ArrayList arrayList = null;
                    if (superclass != null && AbstractC0523i.class.isAssignableFrom(superclass)) {
                        if (m7980c(superclass) == 1) {
                            i = 1;
                        } else {
                            arrayList = new ArrayList((Collection) ((HashMap) f2049b).get(superclass));
                        }
                    }
                    Class<?>[] interfaces = cls.getInterfaces();
                    int length2 = interfaces.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length2) {
                            Class<?> cls2 = interfaces[i3];
                            if (cls2 != null && AbstractC0523i.class.isAssignableFrom(cls2)) {
                                if (m7980c(cls2) == 1) {
                                    i = 1;
                                    break;
                                }
                                ArrayList arrayList2 = arrayList;
                                if (arrayList == null) {
                                    arrayList2 = new ArrayList();
                                }
                                arrayList2.addAll((Collection) ((HashMap) f2049b).get(cls2));
                                arrayList = arrayList2;
                            }
                            i3++;
                        } else {
                            i = 1;
                            if (arrayList != null) {
                                ((HashMap) f2049b).put(cls, arrayList);
                            }
                        }
                    }
                }
            }
            i = 2;
        }
        ((HashMap) f2048a).put(cls, Integer.valueOf(i));
        return i;
    }
}
