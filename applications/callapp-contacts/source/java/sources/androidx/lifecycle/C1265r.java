package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.r */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/r.class */
public final class C1265r {

    /* renamed from: a */
    private static Map<Class<?>, Integer> f4838a = new HashMap();

    /* renamed from: b */
    private static Map<Class<?>, List<Constructor<? extends AbstractC1250g>>> f4839b = new HashMap();

    private C1265r() {
    }

    /* renamed from: a */
    private static AbstractC1250g m43291a(Constructor<? extends AbstractC1250g> constructor, Object obj) {
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
    public static AbstractC1261n m43292a(Object obj) {
        boolean z = obj instanceof AbstractC1261n;
        boolean z2 = obj instanceof AbstractC1249f;
        if (!z || !z2) {
            if (z2) {
                return new FullLifecycleObserverAdapter((AbstractC1249f) obj, null);
            }
            if (z) {
                return (AbstractC1261n) obj;
            }
            Class<?> cls = obj.getClass();
            if (m43290b(cls) != 2) {
                return new ReflectiveGenericLifecycleObserver(obj);
            }
            List<Constructor<? extends AbstractC1250g>> list = f4839b.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(m43291a(list.get(0), obj));
            }
            AbstractC1250g[] abstractC1250gArr = new AbstractC1250g[list.size()];
            for (int i = 0; i < list.size(); i++) {
                abstractC1250gArr[i] = m43291a(list.get(i), obj);
            }
            return new CompositeGeneratedAdaptersObserver(abstractC1250gArr);
        }
        return new FullLifecycleObserverAdapter((AbstractC1249f) obj, (AbstractC1261n) obj);
    }

    /* renamed from: a */
    private static Constructor<? extends AbstractC1250g> m43293a(Class<?> cls) {
        String str;
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String str2 = canonicalName.replace(".", "_") + "_LifecycleAdapter";
            if (name.isEmpty()) {
                str = str2;
            } else {
                str = name + "." + str2;
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
    private static int m43290b(Class<?> cls) {
        Integer num = f4838a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int m43289c = m43289c(cls);
        f4838a.put(cls, Integer.valueOf(m43289c));
        return m43289c;
    }

    /* renamed from: c */
    private static int m43289c(Class<?> cls) {
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends AbstractC1250g> m43293a = m43293a(cls);
        if (m43293a != null) {
            f4839b.put(cls, Collections.singletonList(m43293a));
            return 2;
        } else if (C1243b.f4820a.m43303a(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            if (m43288d(superclass)) {
                if (m43290b(superclass) == 1) {
                    return 1;
                }
                arrayList = new ArrayList(f4839b.get(superclass));
            }
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            int i = 0;
            while (i < length) {
                Class<?> cls2 = interfaces[i];
                ArrayList arrayList2 = arrayList;
                if (m43288d(cls2)) {
                    if (m43290b(cls2) == 1) {
                        return 1;
                    }
                    arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.addAll(f4839b.get(cls2));
                }
                i++;
                arrayList = arrayList2;
            }
            if (arrayList == null) {
                return 1;
            }
            f4839b.put(cls, arrayList);
            return 2;
        }
    }

    /* renamed from: d */
    private static boolean m43288d(Class<?> cls) {
        return cls != null && AbstractC1262o.class.isAssignableFrom(cls);
    }
}
