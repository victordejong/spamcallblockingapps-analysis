package androidx.lifecycle;

import androidx.lifecycle.AbstractC0896g;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.b */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/b.class */
class C0889b {

    /* renamed from: a */
    static C0889b f2834a = new C0889b();

    /* renamed from: b */
    private final Map<Class, C0890a> f2835b = new HashMap();

    /* renamed from: c */
    private final Map<Class, Boolean> f2836c = new HashMap();

    /* renamed from: androidx.lifecycle.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/b$a.class */
    public static class C0890a {

        /* renamed from: a */
        final Map<AbstractC0896g.EnumC0897a, List<C0891b>> f2837a = new HashMap();

        /* renamed from: b */
        final Map<C0891b, AbstractC0896g.EnumC0897a> f2838b;

        C0890a(Map<C0891b, AbstractC0896g.EnumC0897a> map) {
            this.f2838b = map;
            for (Map.Entry<C0891b, AbstractC0896g.EnumC0897a> entry : map.entrySet()) {
                AbstractC0896g.EnumC0897a value = entry.getValue();
                List<C0891b> list = this.f2837a.get(value);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                    this.f2837a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        /* renamed from: a */
        private static void m5122a(List<C0891b> list, AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).m5121a(abstractC0903k, enumC0897a, obj);
                }
            }
        }

        /* renamed from: a */
        public void m5123a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a, Object obj) {
            m5122a(this.f2837a.get(enumC0897a), abstractC0903k, enumC0897a, obj);
            m5122a(this.f2837a.get(AbstractC0896g.EnumC0897a.ON_ANY), abstractC0903k, enumC0897a, obj);
        }
    }

    /* renamed from: androidx.lifecycle.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/b$b.class */
    public static class C0891b {

        /* renamed from: a */
        final int f2839a;

        /* renamed from: b */
        final Method f2840b;

        C0891b(int i, Method method) {
            this.f2839a = i;
            this.f2840b = method;
            this.f2840b.setAccessible(true);
        }

        /* renamed from: a */
        void m5121a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a, Object obj) {
            try {
                int i = this.f2839a;
                if (i == 0) {
                    this.f2840b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.f2840b.invoke(obj, abstractC0903k);
                } else if (i != 2) {
                } else {
                    this.f2840b.invoke(obj, abstractC0903k, enumC0897a);
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0891b c0891b = (C0891b) obj;
            if (this.f2839a != c0891b.f2839a || !this.f2840b.getName().equals(c0891b.f2840b.getName())) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f2839a * 31) + this.f2840b.getName().hashCode();
        }
    }

    C0889b() {
    }

    /* renamed from: a */
    private C0890a m5127a(Class cls, Method[] methodArr) {
        int i;
        C0890a m5125b;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (m5125b = m5125b(superclass)) != null) {
            hashMap.putAll(m5125b.f2838b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C0891b, AbstractC0896g.EnumC0897a> entry : m5125b(cls2).f2838b.entrySet()) {
                m5126a(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m5124c(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            AbstractC0912r abstractC0912r = (AbstractC0912r) method.getAnnotation(AbstractC0912r.class);
            if (abstractC0912r != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (!parameterTypes[0].isAssignableFrom(AbstractC0903k.class)) {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                } else {
                    i = 1;
                }
                AbstractC0896g.EnumC0897a m5083a = abstractC0912r.m5083a();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(AbstractC0896g.EnumC0897a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (m5083a != AbstractC0896g.EnumC0897a.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m5126a(hashMap, new C0891b(i, method), m5083a, cls);
                z = true;
            }
        }
        C0890a c0890a = new C0890a(hashMap);
        this.f2835b.put(cls, c0890a);
        this.f2836c.put(cls, Boolean.valueOf(z));
        return c0890a;
    }

    /* renamed from: a */
    private void m5126a(Map<C0891b, AbstractC0896g.EnumC0897a> map, C0891b c0891b, AbstractC0896g.EnumC0897a enumC0897a, Class cls) {
        AbstractC0896g.EnumC0897a enumC0897a2 = map.get(c0891b);
        if (enumC0897a2 == null || enumC0897a == enumC0897a2) {
            if (enumC0897a2 != null) {
                return;
            }
            map.put(c0891b, enumC0897a);
            return;
        }
        Method method = c0891b.f2840b;
        throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + enumC0897a2 + ", new value " + enumC0897a);
    }

    /* renamed from: c */
    private Method[] m5124c(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* renamed from: a */
    public boolean m5128a(Class cls) {
        Boolean bool = this.f2836c.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] m5124c = m5124c(cls);
        for (Method method : m5124c) {
            if (((AbstractC0912r) method.getAnnotation(AbstractC0912r.class)) != null) {
                m5127a(cls, m5124c);
                return true;
            }
        }
        this.f2836c.put(cls, false);
        return false;
    }

    /* renamed from: b */
    public C0890a m5125b(Class cls) {
        C0890a c0890a = this.f2835b.get(cls);
        return c0890a != null ? c0890a : m5127a(cls, null);
    }
}
