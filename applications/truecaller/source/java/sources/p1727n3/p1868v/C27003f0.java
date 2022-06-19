package p1727n3.p1868v;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: n3.v.f0 */
/* loaded from: classes-dex2jar.jar:n3/v/f0.class */
public class C27003f0 {

    /* renamed from: a */
    public static Map<Class<?>, Integer> f75525a = new HashMap();

    /* renamed from: b */
    public static Map<Class<?>, List<Constructor<? extends AbstractC27027t>>> f75526b = new HashMap();

    /* renamed from: a */
    public static AbstractC27027t m1009a(Constructor<? extends AbstractC27027t> constructor, Object obj) {
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
    public static String m1008b(String str) {
        return str.replace(StringConstant.DOT, AnalyticsConstants.DELIMITER_MAIN) + "_LifecycleAdapter";
    }

    /* renamed from: c */
    public static int m1007c(Class<?> cls) {
        int i;
        Constructor<?> constructor;
        boolean z;
        String str;
        Integer num = f75525a.get(cls);
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
                String m1008b = m1008b(canonicalName);
                if (name.isEmpty()) {
                    str = m1008b;
                } else {
                    str = name + StringConstant.DOT + m1008b;
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
                f75526b.put(cls, Collections.singletonList(constructor));
            } else {
                C27000f c27000f = C27000f.f75518c;
                Boolean bool = c27000f.f75520b.get(cls);
                if (bool != null) {
                    z = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length = declaredMethods.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                c27000f.f75520b.put(cls, Boolean.FALSE);
                                z = false;
                                break;
                            } else if (((AbstractC27013m0) declaredMethods[i2].getAnnotation(AbstractC27013m0.class)) != null) {
                                c27000f.m1013a(cls, declaredMethods);
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
                    if (superclass != null && AbstractC26985a0.class.isAssignableFrom(superclass)) {
                        if (m1007c(superclass) == 1) {
                            i = 1;
                        } else {
                            arrayList = new ArrayList(f75526b.get(superclass));
                        }
                    }
                    Class<?>[] interfaces = cls.getInterfaces();
                    int length2 = interfaces.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length2) {
                            Class<?> cls2 = interfaces[i3];
                            if (cls2 != null && AbstractC26985a0.class.isAssignableFrom(cls2)) {
                                if (m1007c(cls2) == 1) {
                                    i = 1;
                                    break;
                                }
                                ArrayList arrayList2 = arrayList;
                                if (arrayList == null) {
                                    arrayList2 = new ArrayList();
                                }
                                arrayList2.addAll(f75526b.get(cls2));
                                arrayList = arrayList2;
                            }
                            i3++;
                        } else {
                            i = 1;
                            if (arrayList != null) {
                                f75526b.put(cls, arrayList);
                            }
                        }
                    }
                }
            }
            i = 2;
        }
        f75525a.put(cls, Integer.valueOf(i));
        return i;
    }
}
