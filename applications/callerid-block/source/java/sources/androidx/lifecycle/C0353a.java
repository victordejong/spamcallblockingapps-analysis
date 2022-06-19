package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.a */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/a.class */
class C0353a {

    /* renamed from: c */
    static C0353a f2049c = new C0353a();

    /* renamed from: a */
    private final Map<Class<?>, C0354a> f2050a = new HashMap();

    /* renamed from: b */
    private final Map<Class<?>, Boolean> f2051b = new HashMap();

    /* renamed from: androidx.lifecycle.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/a$a.class */
    public static class C0354a {

        /* renamed from: a */
        final Map<Lifecycle.Event, List<C0355b>> f2052a = new HashMap();

        /* renamed from: b */
        final Map<C0355b, Lifecycle.Event> f2053b;

        C0354a(Map<C0355b, Lifecycle.Event> map) {
            this.f2053b = map;
            for (Map.Entry<C0355b, Lifecycle.Event> entry : map.entrySet()) {
                Lifecycle.Event value = entry.getValue();
                List<C0355b> list = this.f2052a.get(value);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                    this.f2052a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        /* renamed from: b */
        private static void m12988b(List<C0355b> list, AbstractC0360h abstractC0360h, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).m12987a(abstractC0360h, event, obj);
                }
            }
        }

        /* renamed from: a */
        void m12989a(AbstractC0360h abstractC0360h, Lifecycle.Event event, Object obj) {
            m12988b(this.f2052a.get(event), abstractC0360h, event, obj);
            m12988b(this.f2052a.get(Lifecycle.Event.ON_ANY), abstractC0360h, event, obj);
        }
    }

    /* renamed from: androidx.lifecycle.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/a$b.class */
    public static class C0355b {

        /* renamed from: a */
        final int f2054a;

        /* renamed from: b */
        final Method f2055b;

        C0355b(int i, Method method) {
            this.f2054a = i;
            this.f2055b = method;
            method.setAccessible(true);
        }

        /* renamed from: a */
        void m12987a(AbstractC0360h abstractC0360h, Lifecycle.Event event, Object obj) {
            try {
                int i = this.f2054a;
                if (i == 0) {
                    this.f2055b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.f2055b.invoke(obj, abstractC0360h);
                } else if (i != 2) {
                } else {
                    this.f2055b.invoke(obj, abstractC0360h, event);
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
            if (obj == null || C0355b.class != obj.getClass()) {
                return false;
            }
            C0355b c0355b = (C0355b) obj;
            if (this.f2054a != c0355b.f2054a || !this.f2055b.getName().equals(c0355b.f2055b.getName())) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f2054a * 31) + this.f2055b.getName().hashCode();
        }
    }

    C0353a() {
    }

    /* renamed from: a */
    private C0354a m12994a(Class<?> cls, Method[] methodArr) {
        int i;
        C0354a m12992c;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (m12992c = m12992c(superclass)) != null) {
            hashMap.putAll(m12992c.f2053b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C0355b, Lifecycle.Event> entry : m12992c(cls2).f2053b.entrySet()) {
                m12990e(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m12993b(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            AbstractC0364o abstractC0364o = (AbstractC0364o) method.getAnnotation(AbstractC0364o.class);
            if (abstractC0364o != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (!parameterTypes[0].isAssignableFrom(AbstractC0360h.class)) {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                } else {
                    i = 1;
                }
                Lifecycle.Event value = abstractC0364o.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(Lifecycle.Event.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (value != Lifecycle.Event.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m12990e(hashMap, new C0355b(i, method), value, cls);
                z = true;
            }
        }
        C0354a c0354a = new C0354a(hashMap);
        this.f2050a.put(cls, c0354a);
        this.f2051b.put(cls, Boolean.valueOf(z));
        return c0354a;
    }

    /* renamed from: b */
    private Method[] m12993b(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* renamed from: e */
    private void m12990e(Map<C0355b, Lifecycle.Event> map, C0355b c0355b, Lifecycle.Event event, Class<?> cls) {
        Lifecycle.Event event2 = map.get(c0355b);
        if (event2 == null || event == event2) {
            if (event2 != null) {
                return;
            }
            map.put(c0355b, event);
            return;
        }
        Method method = c0355b.f2055b;
        throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
    }

    /* renamed from: c */
    C0354a m12992c(Class<?> cls) {
        C0354a c0354a = this.f2050a.get(cls);
        return c0354a != null ? c0354a : m12994a(cls, null);
    }

    /* renamed from: d */
    public boolean m12991d(Class<?> cls) {
        Boolean bool = this.f2051b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] m12993b = m12993b(cls);
        for (Method method : m12993b) {
            if (((AbstractC0364o) method.getAnnotation(AbstractC0364o.class)) != null) {
                m12994a(cls, m12993b);
                return true;
            }
        }
        this.f2051b.put(cls, Boolean.FALSE);
        return false;
    }
}
