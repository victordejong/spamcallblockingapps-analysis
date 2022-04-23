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
public class C0361k {

    /* renamed from: a */
    private static Map<Class<?>, Integer> f2061a = new HashMap();

    /* renamed from: b */
    private static Map<Class<?>, List<Constructor<? extends AbstractC0357d>>> f2062b = new HashMap();

    /* renamed from: a */
    private static AbstractC0357d m12982a(Constructor<? extends AbstractC0357d> constructor, Object obj) {
        try {
            return (AbstractC0357d) constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: b */
    private static Constructor<? extends AbstractC0357d> m12981b(Class<?> cls) {
        String str;
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String c = m12980c(canonicalName);
            if (name.isEmpty()) {
                str = c;
            } else {
                str = name + "." + c;
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
    public static String m12980c(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    /* renamed from: d */
    private static int m12979d(Class<?> cls) {
        Integer num = f2061a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int g = m12976g(cls);
        f2061a.put(cls, Integer.valueOf(g));
        return g;
    }

    /* renamed from: e */
    private static boolean m12978e(Class<?> cls) {
        return cls != null && AbstractC0359g.class.isAssignableFrom(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static f m12977f(Object obj) {
        boolean z = obj instanceof f;
        boolean z2 = obj instanceof c;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((c) obj, (f) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((c) obj, (f) null);
        }
        if (z) {
            return (f) obj;
        }
        Class<?> cls = obj.getClass();
        if (m12979d(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List<Constructor<? extends AbstractC0357d>> list = f2062b.get(cls);
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(m12982a(list.get(0), obj));
        }
        AbstractC0357d[] dVarArr = new AbstractC0357d[list.size()];
        for (int i = 0; i < list.size(); i++) {
            dVarArr[i] = m12982a(list.get(i), obj);
        }
        return new CompositeGeneratedAdaptersObserver(dVarArr);
    }

    /* renamed from: g */
    private static int m12976g(Class<?> cls) {
        Class<?>[] interfaces;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends AbstractC0357d> b = m12981b(cls);
        if (b != null) {
            f2062b.put(cls, Collections.singletonList(b));
            return 2;
        } else if (C0353a.f2049c.m12991d(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            if (m12978e(superclass)) {
                if (m12979d(superclass) == 1) {
                    return 1;
                }
                arrayList = new ArrayList(f2062b.get(superclass));
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (m12978e(cls2)) {
                    if (m12979d(cls2) == 1) {
                        return 1;
                    }
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.addAll(f2062b.get(cls2));
                    arrayList = arrayList2;
                }
            }
            if (arrayList == null) {
                return 1;
            }
            f2062b.put(cls, arrayList);
            return 2;
        }
    }
}
