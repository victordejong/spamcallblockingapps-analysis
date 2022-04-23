package androidx.lifecycle;

import androidx.lifecycle.j;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    static b f2567a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, a> f2568b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<Class<?>, Boolean> f2569c = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Map<j.a, List<C0072b>> f2570a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        final Map<C0072b, j.a> f2571b;

        a(Map<C0072b, j.a> map) {
            this.f2571b = map;
            for (Map.Entry<C0072b, j.a> entry : map.entrySet()) {
                j.a value = entry.getValue();
                List<C0072b> list = this.f2570a.get(value);
                List<C0072b> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                    this.f2570a.put(value, list2);
                }
                list2.add(entry.getKey());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void a(List<C0072b> list, p pVar, j.a aVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    C0072b bVar = list.get(size);
                    try {
                        int i = bVar.f2572a;
                        if (i == 0) {
                            bVar.f2573b.invoke(obj, new Object[0]);
                        } else if (i == 1) {
                            bVar.f2573b.invoke(obj, pVar);
                        } else if (i == 2) {
                            bVar.f2573b.invoke(obj, pVar, aVar);
                        }
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException("Failed to call observer method", e2.getCause());
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/b$b.class */
    public static final class C0072b {

        /* renamed from: a  reason: collision with root package name */
        final int f2572a;

        /* renamed from: b  reason: collision with root package name */
        final Method f2573b;

        C0072b(int i, Method method) {
            this.f2572a = i;
            this.f2573b = method;
            method.setAccessible(true);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0072b)) {
                return false;
            }
            C0072b bVar = (C0072b) obj;
            return this.f2572a == bVar.f2572a && this.f2573b.getName().equals(bVar.f2573b.getName());
        }

        public final int hashCode() {
            return (this.f2572a * 31) + this.f2573b.getName().hashCode();
        }
    }

    b() {
    }

    private a a(Class<?> cls, Method[] methodArr) {
        int i;
        a b2;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (!(superclass == null || (b2 = b(superclass)) == null)) {
            hashMap.putAll(b2.f2571b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C0072b, j.a> entry : b(cls2).f2571b.entrySet()) {
                a(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = c(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            v vVar = (v) method.getAnnotation(v.class);
            if (vVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (parameterTypes[0].isAssignableFrom(p.class)) {
                    i = 1;
                } else {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                }
                j.a a2 = vVar.a();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(j.a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    } else if (a2 == j.a.ON_ANY) {
                        i = 2;
                    } else {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                }
                if (parameterTypes.length <= 2) {
                    a(hashMap, new C0072b(i, method), a2, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        a aVar = new a(hashMap);
        this.f2568b.put(cls, aVar);
        this.f2569c.put(cls, Boolean.valueOf(z));
        return aVar;
    }

    private static void a(Map<C0072b, j.a> map, C0072b bVar, j.a aVar, Class<?> cls) {
        j.a aVar2 = map.get(bVar);
        if (aVar2 != null && aVar != aVar2) {
            Method method = bVar.f2573b;
            throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + aVar2 + ", new value " + aVar);
        } else if (aVar2 == null) {
            map.put(bVar, aVar);
        }
    }

    private static Method[] c(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Class<?> cls) {
        Boolean bool = this.f2569c.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] c2 = c(cls);
        for (Method method : c2) {
            if (((v) method.getAnnotation(v.class)) != null) {
                a(cls, c2);
                return true;
            }
        }
        this.f2569c.put(cls, Boolean.FALSE);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final a b(Class<?> cls) {
        a aVar = this.f2568b.get(cls);
        return aVar != null ? aVar : a(cls, null);
    }
}
