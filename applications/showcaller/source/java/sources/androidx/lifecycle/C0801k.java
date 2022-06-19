package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.k */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/k.class */
public class C0801k {

    /* renamed from: a */
    private static Map<Class<?>, Integer> f3713a = new HashMap();

    /* renamed from: b */
    private static Map<Class<?>, List<Constructor<? extends AbstractC0792d>>> f3714b = new HashMap();

    /* renamed from: a */
    private static AbstractC0792d m32381a(Constructor<? extends AbstractC0792d> constructor, Object obj) {
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
    private static Constructor<? extends AbstractC0792d> m32380b(Class<?> cls) {
        String str;
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String m32379c = m32379c(canonicalName);
            if (name.isEmpty()) {
                str = m32379c;
            } else {
                str = name + "." + m32379c;
            }
            Constructor declaredConstructor = Class.forName(str).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: c */
    public static String m32379c(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    /* renamed from: d */
    private static int m32378d(Class<?> cls) {
        Integer num = f3713a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int m32375g = m32375g(cls);
        f3713a.put(cls, Integer.valueOf(m32375g));
        return m32375g;
    }

    /* renamed from: e */
    private static boolean m32377e(Class<?> cls) {
        return cls != null && AbstractC0796g.class.isAssignableFrom(cls);
    }

    /* renamed from: f */
    public static AbstractC0795f m32376f(Object obj) {
        boolean z = obj instanceof AbstractC0795f;
        boolean z2 = obj instanceof AbstractC0791c;
        if (!z || !z2) {
            if (z2) {
                return new FullLifecycleObserverAdapter((AbstractC0791c) obj, null);
            }
            if (z) {
                return (AbstractC0795f) obj;
            }
            Class<?> cls = obj.getClass();
            if (m32378d(cls) != 2) {
                return new ReflectiveGenericLifecycleObserver(obj);
            }
            List<Constructor<? extends AbstractC0792d>> list = f3714b.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(m32381a(list.get(0), obj));
            }
            AbstractC0792d[] abstractC0792dArr = new AbstractC0792d[list.size()];
            for (int i = 0; i < list.size(); i++) {
                abstractC0792dArr[i] = m32381a(list.get(i), obj);
            }
            return new CompositeGeneratedAdaptersObserver(abstractC0792dArr);
        }
        return new FullLifecycleObserverAdapter((AbstractC0791c) obj, (AbstractC0795f) obj);
    }

    /* renamed from: g */
    private static int m32375g(Class<?> cls) {
        ArrayList arrayList;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends AbstractC0792d> m32380b = m32380b(cls);
        if (m32380b != null) {
            f3714b.put(cls, Collections.singletonList(m32380b));
            return 2;
        } else if (C0787a.f3695a.m32410d(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList2 = null;
            if (m32377e(superclass)) {
                if (m32378d(superclass) == 1) {
                    return 1;
                }
                arrayList2 = new ArrayList(f3714b.get(superclass));
            }
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            int i = 0;
            while (i < length) {
                Class<?> cls2 = interfaces[i];
                if (!m32377e(cls2)) {
                    arrayList = arrayList2;
                } else if (m32378d(cls2) == 1) {
                    return 1;
                } else {
                    arrayList = arrayList2;
                    if (arrayList2 == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.addAll(f3714b.get(cls2));
                }
                i++;
                arrayList2 = arrayList;
            }
            if (arrayList2 == null) {
                return 1;
            }
            f3714b.put(cls, arrayList2);
            return 2;
        }
    }
}
