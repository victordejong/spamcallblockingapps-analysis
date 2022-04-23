package p012b.p068o;

import androidx.lifecycle.CompositeGeneratedAdaptersObserver;
import androidx.lifecycle.FullLifecycleObserverAdapter;
import androidx.lifecycle.ReflectiveGenericLifecycleObserver;
import androidx.lifecycle.SingleGeneratedAdapterObserver;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: b.o.j */
/* loaded from: classes-dex2jar.jar:b/o/j.class */
public class C1114j {

    /* renamed from: a */
    public static Map<Class, Integer> f4620a = new HashMap();

    /* renamed from: b */
    public static Map<Class, List<Constructor<? extends AbstractC1105c>>> f4621b = new HashMap();

    /* renamed from: a */
    public static AbstractC1105c m34640a(Constructor<? extends AbstractC1105c> constructor, Object obj) {
        try {
            return (AbstractC1105c) constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: a */
    public static AbstractC1107e m34642a(Object obj) {
        boolean z = obj instanceof AbstractC1107e;
        boolean z2 = obj instanceof AbstractC1104b;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((AbstractC1104b) obj, (AbstractC1107e) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((AbstractC1104b) obj, null);
        }
        if (z) {
            return (AbstractC1107e) obj;
        }
        Class<?> cls = obj.getClass();
        if (m34639b(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List<Constructor<? extends AbstractC1105c>> list = f4621b.get(cls);
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(m34640a(list.get(0), obj));
        }
        AbstractC1105c[] cVarArr = new AbstractC1105c[list.size()];
        for (int i = 0; i < list.size(); i++) {
            cVarArr[i] = m34640a(list.get(i), obj);
        }
        return new CompositeGeneratedAdaptersObserver(cVarArr);
    }

    /* renamed from: a */
    public static String m34641a(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    /* renamed from: a */
    public static Constructor<? extends AbstractC1105c> m34643a(Class<?> cls) {
        String str;
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String a = m34641a(canonicalName);
            if (name.isEmpty()) {
                str = a;
            } else {
                str = name + "." + a;
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
    public static int m34639b(Class<?> cls) {
        Integer num = f4620a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int d = m34637d(cls);
        f4620a.put(cls, Integer.valueOf(d));
        return d;
    }

    /* renamed from: c */
    public static boolean m34638c(Class<?> cls) {
        return cls != null && AbstractC1108f.class.isAssignableFrom(cls);
    }

    /* renamed from: d */
    public static int m34637d(Class<?> cls) {
        Class<?>[] interfaces;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends AbstractC1105c> a = m34643a(cls);
        if (a != null) {
            f4621b.put(cls, Collections.singletonList(a));
            return 2;
        } else if (C1101a.f4602c.m34675c(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            if (m34638c(superclass)) {
                if (m34639b(superclass) == 1) {
                    return 1;
                }
                arrayList = new ArrayList(f4621b.get(superclass));
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (m34638c(cls2)) {
                    if (m34639b(cls2) == 1) {
                        return 1;
                    }
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.addAll(f4621b.get(cls2));
                    arrayList = arrayList2;
                }
            }
            if (arrayList == null) {
                return 1;
            }
            f4621b.put(cls, arrayList);
            return 2;
        }
    }
}
