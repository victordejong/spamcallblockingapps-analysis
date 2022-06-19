package androidx.lifecycle;

import androidx.lifecycle.AbstractC0864e;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.a */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/a.class */
class C0858a {

    /* renamed from: a */
    static C0858a f2967a = new C0858a();

    /* renamed from: b */
    private final Map<Class, C0859a> f2968b = new HashMap();

    /* renamed from: c */
    private final Map<Class, Boolean> f2969c = new HashMap();

    /* renamed from: androidx.lifecycle.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/a$a.class */
    public static class C0859a {

        /* renamed from: a */
        final Map<AbstractC0864e.EnumC0865a, List<C0860b>> f2970a = new HashMap();

        /* renamed from: b */
        final Map<C0860b, AbstractC0864e.EnumC0865a> f2971b;

        C0859a(Map<C0860b, AbstractC0864e.EnumC0865a> map) {
            this.f2971b = map;
            for (Map.Entry<C0860b, AbstractC0864e.EnumC0865a> entry : map.entrySet()) {
                AbstractC0864e.EnumC0865a value = entry.getValue();
                List<C0860b> list = this.f2970a.get(value);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                    this.f2970a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        /* renamed from: a */
        private static void m19233a(List<C0860b> list, AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).m19232a(abstractC0869h, enumC0865a, obj);
                }
            }
        }

        /* renamed from: a */
        public void m19234a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a, Object obj) {
            m19233a(this.f2970a.get(enumC0865a), abstractC0869h, enumC0865a, obj);
            m19233a(this.f2970a.get(AbstractC0864e.EnumC0865a.ON_ANY), abstractC0869h, enumC0865a, obj);
        }
    }

    /* renamed from: androidx.lifecycle.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/a$b.class */
    public static class C0860b {

        /* renamed from: a */
        final int f2972a;

        /* renamed from: b */
        final Method f2973b;

        C0860b(int i, Method method) {
            this.f2972a = i;
            this.f2973b = method;
            this.f2973b.setAccessible(true);
        }

        /* renamed from: a */
        void m19232a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a, Object obj) {
            try {
                switch (this.f2972a) {
                    case 0:
                        this.f2973b.invoke(obj, new Object[0]);
                        return;
                    case 1:
                        this.f2973b.invoke(obj, abstractC0869h);
                        return;
                    case 2:
                        this.f2973b.invoke(obj, abstractC0869h, enumC0865a);
                        return;
                    default:
                        return;
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (obj == null || getClass() != obj.getClass()) {
                    z = false;
                } else {
                    C0860b c0860b = (C0860b) obj;
                    if (this.f2972a != c0860b.f2972a || !this.f2973b.getName().equals(c0860b.f2973b.getName())) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (this.f2972a * 31) + this.f2973b.getName().hashCode();
        }
    }

    C0858a() {
    }

    /* renamed from: a */
    private C0859a m19238a(Class cls, Method[] methodArr) {
        int i;
        C0859a m19236b;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (m19236b = m19236b(superclass)) != null) {
            hashMap.putAll(m19236b.f2971b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C0860b, AbstractC0864e.EnumC0865a> entry : m19236b(cls2).f2971b.entrySet()) {
                m19237a(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m19235c(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            AbstractC0879p abstractC0879p = (AbstractC0879p) method.getAnnotation(AbstractC0879p.class);
            if (abstractC0879p != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (!parameterTypes[0].isAssignableFrom(AbstractC0869h.class)) {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                } else {
                    i = 1;
                }
                AbstractC0864e.EnumC0865a m19192a = abstractC0879p.m19192a();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(AbstractC0864e.EnumC0865a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (m19192a != AbstractC0864e.EnumC0865a.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m19237a(hashMap, new C0860b(i, method), m19192a, cls);
                z = true;
            }
        }
        C0859a c0859a = new C0859a(hashMap);
        this.f2968b.put(cls, c0859a);
        this.f2969c.put(cls, Boolean.valueOf(z));
        return c0859a;
    }

    /* renamed from: a */
    private void m19237a(Map<C0860b, AbstractC0864e.EnumC0865a> map, C0860b c0860b, AbstractC0864e.EnumC0865a enumC0865a, Class cls) {
        AbstractC0864e.EnumC0865a enumC0865a2 = map.get(c0860b);
        if (enumC0865a2 != null && enumC0865a != enumC0865a2) {
            throw new IllegalArgumentException("Method " + c0860b.f2973b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + enumC0865a2 + ", new value " + enumC0865a);
        } else if (enumC0865a2 != null) {
        } else {
            map.put(c0860b, enumC0865a);
        }
    }

    /* renamed from: c */
    private Method[] m19235c(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* renamed from: a */
    public boolean m19239a(Class cls) {
        boolean z;
        Boolean bool = this.f2969c.get(cls);
        if (bool == null) {
            Method[] m19235c = m19235c(cls);
            int length = m19235c.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    this.f2969c.put(cls, false);
                    z = false;
                    break;
                } else if (((AbstractC0879p) m19235c[i].getAnnotation(AbstractC0879p.class)) != null) {
                    m19238a(cls, m19235c);
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        } else {
            z = bool.booleanValue();
        }
        return z;
    }

    /* renamed from: b */
    public C0859a m19236b(Class cls) {
        C0859a c0859a = this.f2968b.get(cls);
        return c0859a != null ? c0859a : m19238a(cls, null);
    }
}
