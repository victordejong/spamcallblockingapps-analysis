package androidx.lifecycle;

import androidx.lifecycle.AbstractC1253j;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.b */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/b.class */
final class C1243b {

    /* renamed from: a */
    static C1243b f4820a = new C1243b();

    /* renamed from: b */
    private final Map<Class<?>, C1244a> f4821b = new HashMap();

    /* renamed from: c */
    private final Map<Class<?>, Boolean> f4822c = new HashMap();

    /* renamed from: androidx.lifecycle.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/b$a.class */
    public static final class C1244a {

        /* renamed from: a */
        final Map<AbstractC1253j.EnumC1255a, List<C1245b>> f4823a = new HashMap();

        /* renamed from: b */
        final Map<C1245b, AbstractC1253j.EnumC1255a> f4824b;

        C1244a(Map<C1245b, AbstractC1253j.EnumC1255a> map) {
            this.f4824b = map;
            for (Map.Entry<C1245b, AbstractC1253j.EnumC1255a> entry : map.entrySet()) {
                AbstractC1253j.EnumC1255a value = entry.getValue();
                List<C1245b> list = this.f4823a.get(value);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                    this.f4823a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        /* renamed from: a */
        public static void m43298a(List<C1245b> list, AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    C1245b c1245b = list.get(size);
                    try {
                        int i = c1245b.f4825a;
                        if (i == 0) {
                            c1245b.f4826b.invoke(obj, new Object[0]);
                        } else if (i == 1) {
                            c1245b.f4826b.invoke(obj, abstractC1263p);
                        } else if (i == 2) {
                            c1245b.f4826b.invoke(obj, abstractC1263p, enumC1255a);
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

    /* renamed from: androidx.lifecycle.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/b$b.class */
    public static final class C1245b {

        /* renamed from: a */
        final int f4825a;

        /* renamed from: b */
        final Method f4826b;

        C1245b(int i, Method method) {
            this.f4825a = i;
            this.f4826b = method;
            method.setAccessible(true);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C1245b)) {
                return false;
            }
            C1245b c1245b = (C1245b) obj;
            return this.f4825a == c1245b.f4825a && this.f4826b.getName().equals(c1245b.f4826b.getName());
        }

        public final int hashCode() {
            return (this.f4825a * 31) + this.f4826b.getName().hashCode();
        }
    }

    C1243b() {
    }

    /* renamed from: a */
    private C1244a m43302a(Class<?> cls, Method[] methodArr) {
        int i;
        C1244a m43300b;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (m43300b = m43300b(superclass)) != null) {
            hashMap.putAll(m43300b.f4824b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C1245b, AbstractC1253j.EnumC1255a> entry : m43300b(cls2).f4824b.entrySet()) {
                m43301a(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m43299c(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            AbstractC1269v abstractC1269v = (AbstractC1269v) method.getAnnotation(AbstractC1269v.class);
            if (abstractC1269v != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (!parameterTypes[0].isAssignableFrom(AbstractC1263p.class)) {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                } else {
                    i = 1;
                }
                AbstractC1253j.EnumC1255a m43285a = abstractC1269v.m43285a();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(AbstractC1253j.EnumC1255a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (m43285a != AbstractC1253j.EnumC1255a.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m43301a(hashMap, new C1245b(i, method), m43285a, cls);
                z = true;
            }
        }
        C1244a c1244a = new C1244a(hashMap);
        this.f4821b.put(cls, c1244a);
        this.f4822c.put(cls, Boolean.valueOf(z));
        return c1244a;
    }

    /* renamed from: a */
    private static void m43301a(Map<C1245b, AbstractC1253j.EnumC1255a> map, C1245b c1245b, AbstractC1253j.EnumC1255a enumC1255a, Class<?> cls) {
        AbstractC1253j.EnumC1255a enumC1255a2 = map.get(c1245b);
        if (enumC1255a2 == null || enumC1255a == enumC1255a2) {
            if (enumC1255a2 != null) {
                return;
            }
            map.put(c1245b, enumC1255a);
            return;
        }
        Method method = c1245b.f4826b;
        throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + enumC1255a2 + ", new value " + enumC1255a);
    }

    /* renamed from: c */
    private static Method[] m43299c(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* renamed from: a */
    public final boolean m43303a(Class<?> cls) {
        Boolean bool = this.f4822c.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] m43299c = m43299c(cls);
        for (Method method : m43299c) {
            if (((AbstractC1269v) method.getAnnotation(AbstractC1269v.class)) != null) {
                m43302a(cls, m43299c);
                return true;
            }
        }
        this.f4822c.put(cls, Boolean.FALSE);
        return false;
    }

    /* renamed from: b */
    public final C1244a m43300b(Class<?> cls) {
        C1244a c1244a = this.f4821b.get(cls);
        return c1244a != null ? c1244a : m43302a(cls, null);
    }
}
