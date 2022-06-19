package androidx.lifecycle;

import io.fabric.sdk.android.services.p069c.AbstractC1507b;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.n */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/n.class */
public class C0908n {

    /* renamed from: a */
    private static Map<Class, Integer> f2860a = new HashMap();

    /* renamed from: b */
    private static Map<Class, List<Constructor<? extends AbstractC0894e>>> f2861b = new HashMap();

    /* renamed from: a */
    private static AbstractC0894e m5089a(Constructor<? extends AbstractC0894e> constructor, Object obj) {
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

    /* renamed from: a */
    public static AbstractC0901i m5091a(Object obj) {
        boolean z = obj instanceof AbstractC0901i;
        boolean z2 = obj instanceof AbstractC0893d;
        if (!z || !z2) {
            if (z2) {
                return new FullLifecycleObserverAdapter((AbstractC0893d) obj, null);
            }
            if (z) {
                return (AbstractC0901i) obj;
            }
            Class<?> cls = obj.getClass();
            if (m5088b(cls) != 2) {
                return new ReflectiveGenericLifecycleObserver(obj);
            }
            List<Constructor<? extends AbstractC0894e>> list = f2861b.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(m5089a(list.get(0), obj));
            }
            AbstractC0894e[] abstractC0894eArr = new AbstractC0894e[list.size()];
            for (int i = 0; i < list.size(); i++) {
                abstractC0894eArr[i] = m5089a(list.get(i), obj);
            }
            return new CompositeGeneratedAdaptersObserver(abstractC0894eArr);
        }
        return new FullLifecycleObserverAdapter((AbstractC0893d) obj, (AbstractC0901i) obj);
    }

    /* renamed from: a */
    public static String m5090a(String str) {
        return str.replace(".", AbstractC1507b.ROLL_OVER_FILE_NAME_SEPARATOR) + "_LifecycleAdapter";
    }

    /* renamed from: a */
    private static Constructor<? extends AbstractC0894e> m5092a(Class<?> cls) {
        String str;
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String m5090a = m5090a(canonicalName);
            if (name.isEmpty()) {
                str = m5090a;
            } else {
                str = name + "." + m5090a;
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

    /* renamed from: b */
    private static int m5088b(Class<?> cls) {
        Integer num = f2860a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int m5087c = m5087c(cls);
        f2860a.put(cls, Integer.valueOf(m5087c));
        return m5087c;
    }

    /* renamed from: c */
    private static int m5087c(Class<?> cls) {
        Class<?>[] interfaces;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends AbstractC0894e> m5092a = m5092a(cls);
        if (m5092a != null) {
            f2861b.put(cls, Collections.singletonList(m5092a));
            return 2;
        } else if (C0889b.f2834a.m5128a(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            if (m5086d(superclass)) {
                if (m5088b(superclass) == 1) {
                    return 1;
                }
                arrayList = new ArrayList(f2861b.get(superclass));
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (m5086d(cls2)) {
                    if (m5088b(cls2) == 1) {
                        return 1;
                    }
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.addAll(f2861b.get(cls2));
                    arrayList = arrayList2;
                }
            }
            if (arrayList == null) {
                return 1;
            }
            f2861b.put(cls, arrayList);
            return 2;
        }
    }

    /* renamed from: d */
    private static boolean m5086d(Class<?> cls) {
        return cls != null && AbstractC0902j.class.isAssignableFrom(cls);
    }
}
