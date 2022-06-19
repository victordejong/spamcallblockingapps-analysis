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
final class C0787a {

    /* renamed from: a */
    static C0787a f3695a = new C0787a();

    /* renamed from: b */
    private final Map<Class<?>, C0788a> f3696b = new HashMap();

    /* renamed from: c */
    private final Map<Class<?>, Boolean> f3697c = new HashMap();

    /* renamed from: androidx.lifecycle.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/a$a.class */
    public static class C0788a {

        /* renamed from: a */
        final Map<Lifecycle.Event, List<C0789b>> f3698a = new HashMap();

        /* renamed from: b */
        final Map<C0789b, Lifecycle.Event> f3699b;

        C0788a(Map<C0789b, Lifecycle.Event> map) {
            this.f3699b = map;
            for (Map.Entry<C0789b, Lifecycle.Event> entry : map.entrySet()) {
                Lifecycle.Event value = entry.getValue();
                List<C0789b> list = this.f3698a.get(value);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                    this.f3698a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        /* renamed from: b */
        private static void m32407b(List<C0789b> list, AbstractC0797h abstractC0797h, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).m32406a(abstractC0797h, event, obj);
                }
            }
        }

        /* renamed from: a */
        public void m32408a(AbstractC0797h abstractC0797h, Lifecycle.Event event, Object obj) {
            m32407b(this.f3698a.get(event), abstractC0797h, event, obj);
            m32407b(this.f3698a.get(Lifecycle.Event.ON_ANY), abstractC0797h, event, obj);
        }
    }

    /* renamed from: androidx.lifecycle.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/a$b.class */
    public static final class C0789b {

        /* renamed from: a */
        final int f3700a;

        /* renamed from: b */
        final Method f3701b;

        C0789b(int i, Method method) {
            this.f3700a = i;
            this.f3701b = method;
            method.setAccessible(true);
        }

        /* renamed from: a */
        void m32406a(AbstractC0797h abstractC0797h, Lifecycle.Event event, Object obj) {
            try {
                int i = this.f3700a;
                if (i == 0) {
                    this.f3701b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.f3701b.invoke(obj, abstractC0797h);
                } else if (i != 2) {
                } else {
                    this.f3701b.invoke(obj, abstractC0797h, event);
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
            if (!(obj instanceof C0789b)) {
                return false;
            }
            C0789b c0789b = (C0789b) obj;
            if (this.f3700a != c0789b.f3700a || !this.f3701b.getName().equals(c0789b.f3701b.getName())) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f3700a * 31) + this.f3701b.getName().hashCode();
        }
    }

    C0787a() {
    }

    /* renamed from: a */
    private C0788a m32413a(Class<?> cls, Method[] methodArr) {
        int i;
        C0788a m32411c;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (m32411c = m32411c(superclass)) != null) {
            hashMap.putAll(m32411c.f3699b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C0789b, Lifecycle.Event> entry : m32411c(cls2).f3699b.entrySet()) {
                m32409e(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m32412b(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            AbstractC0805o abstractC0805o = (AbstractC0805o) method.getAnnotation(AbstractC0805o.class);
            if (abstractC0805o != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (!parameterTypes[0].isAssignableFrom(AbstractC0797h.class)) {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                } else {
                    i = 1;
                }
                Lifecycle.Event value = abstractC0805o.value();
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
                m32409e(hashMap, new C0789b(i, method), value, cls);
                z = true;
            }
        }
        C0788a c0788a = new C0788a(hashMap);
        this.f3696b.put(cls, c0788a);
        this.f3697c.put(cls, Boolean.valueOf(z));
        return c0788a;
    }

    /* renamed from: b */
    private Method[] m32412b(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* renamed from: e */
    private void m32409e(Map<C0789b, Lifecycle.Event> map, C0789b c0789b, Lifecycle.Event event, Class<?> cls) {
        Lifecycle.Event event2 = map.get(c0789b);
        if (event2 == null || event == event2) {
            if (event2 != null) {
                return;
            }
            map.put(c0789b, event);
            return;
        }
        Method method = c0789b.f3701b;
        throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
    }

    /* renamed from: c */
    public C0788a m32411c(Class<?> cls) {
        C0788a c0788a = this.f3696b.get(cls);
        return c0788a != null ? c0788a : m32413a(cls, null);
    }

    /* renamed from: d */
    public boolean m32410d(Class<?> cls) {
        Boolean bool = this.f3697c.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] m32412b = m32412b(cls);
        for (Method method : m32412b) {
            if (((AbstractC0805o) method.getAnnotation(AbstractC0805o.class)) != null) {
                m32413a(cls, m32412b);
                return true;
            }
        }
        this.f3697c.put(cls, Boolean.FALSE);
        return false;
    }
}
