package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static Map<Class<?>, Integer> f2585a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static Map<Class<?>, List<Constructor<? extends g>>> f2586b = new HashMap();

    private r() {
    }

    private static g a(Constructor<? extends g> constructor, Object obj) {
        try {
            return (g) constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n a(Object obj) {
        boolean z = obj instanceof n;
        boolean z2 = obj instanceof f;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((f) obj, (n) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((f) obj, null);
        }
        if (z) {
            return (n) obj;
        }
        Class<?> cls = obj.getClass();
        if (b(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List<Constructor<? extends g>> list = f2586b.get(cls);
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(a(list.get(0), obj));
        }
        g[] gVarArr = new g[list.size()];
        for (int i = 0; i < list.size(); i++) {
            gVarArr[i] = a(list.get(i), obj);
        }
        return new CompositeGeneratedAdaptersObserver(gVarArr);
    }

    private static Constructor<? extends g> a(Class<?> cls) {
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

    private static int b(Class<?> cls) {
        Integer num = f2585a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int c2 = c(cls);
        f2585a.put(cls, Integer.valueOf(c2));
        return c2;
    }

    private static int c(Class<?> cls) {
        Class<?>[] interfaces;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends g> a2 = a(cls);
        if (a2 != null) {
            f2586b.put(cls, Collections.singletonList(a2));
            return 2;
        } else if (b.f2567a.a(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            if (d(superclass)) {
                if (b(superclass) == 1) {
                    return 1;
                }
                arrayList = new ArrayList(f2586b.get(superclass));
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                arrayList = arrayList;
                if (d(cls2)) {
                    if (b(cls2) == 1) {
                        return 1;
                    }
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.addAll(f2586b.get(cls2));
                }
            }
            if (arrayList == null) {
                return 1;
            }
            f2586b.put(cls, arrayList);
            return 2;
        }
    }

    private static boolean d(Class<?> cls) {
        return cls != null && o.class.isAssignableFrom(cls);
    }
}
