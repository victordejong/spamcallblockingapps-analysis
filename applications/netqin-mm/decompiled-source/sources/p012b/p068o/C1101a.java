package p012b.p068o;

import androidx.lifecycle.Lifecycle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: b.o.a */
/* loaded from: classes-dex2jar.jar:b/o/a.class */
public class C1101a {

    /* renamed from: c */
    public static C1101a f4602c = new C1101a();

    /* renamed from: a */
    public final Map<Class, C1102a> f4603a = new HashMap();

    /* renamed from: b */
    public final Map<Class, Boolean> f4604b = new HashMap();

    /* renamed from: b.o.a$a */
    /* loaded from: classes-dex2jar.jar:b/o/a$a.class */
    public static class C1102a {

        /* renamed from: a */
        public final Map<Lifecycle.Event, List<C1103b>> f4605a = new HashMap();

        /* renamed from: b */
        public final Map<C1103b, Lifecycle.Event> f4606b;

        public C1102a(Map<C1103b, Lifecycle.Event> map) {
            this.f4606b = map;
            for (Map.Entry<C1103b, Lifecycle.Event> entry : map.entrySet()) {
                Lifecycle.Event value = entry.getValue();
                List<C1103b> list = this.f4605a.get(value);
                List<C1103b> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                    this.f4605a.put(value, list2);
                }
                list2.add(entry.getKey());
            }
        }

        /* renamed from: a */
        public static void m34673a(List<C1103b> list, AbstractC1109g gVar, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).m34672a(gVar, event, obj);
                }
            }
        }

        /* renamed from: a */
        public void m34674a(AbstractC1109g gVar, Lifecycle.Event event, Object obj) {
            m34673a(this.f4605a.get(event), gVar, event, obj);
            m34673a(this.f4605a.get(Lifecycle.Event.ON_ANY), gVar, event, obj);
        }
    }

    /* renamed from: b.o.a$b */
    /* loaded from: classes-dex2jar.jar:b/o/a$b.class */
    public static class C1103b {

        /* renamed from: a */
        public final int f4607a;

        /* renamed from: b */
        public final Method f4608b;

        public C1103b(int i, Method method) {
            this.f4607a = i;
            this.f4608b = method;
            method.setAccessible(true);
        }

        /* renamed from: a */
        public void m34672a(AbstractC1109g gVar, Lifecycle.Event event, Object obj) {
            try {
                int i = this.f4607a;
                if (i == 0) {
                    this.f4608b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.f4608b.invoke(obj, gVar);
                } else if (i == 2) {
                    this.f4608b.invoke(obj, gVar, event);
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
            if (obj == null || C1103b.class != obj.getClass()) {
                return false;
            }
            C1103b bVar = (C1103b) obj;
            if (this.f4607a != bVar.f4607a || !this.f4608b.getName().equals(bVar.f4608b.getName())) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f4607a * 31) + this.f4608b.getName().hashCode();
        }
    }

    /* renamed from: a */
    public final C1102a m34678a(Class cls, Method[] methodArr) {
        int i;
        C1102a b;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (!(superclass == null || (b = m34676b(superclass)) == null)) {
            hashMap.putAll(b.f4606b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C1103b, Lifecycle.Event> entry : m34676b(cls2).f4606b.entrySet()) {
                m34677a(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m34679a(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            AbstractC1118n nVar = (AbstractC1118n) method.getAnnotation(AbstractC1118n.class);
            if (nVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (parameterTypes[0].isAssignableFrom(AbstractC1109g.class)) {
                    i = 1;
                } else {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                }
                Lifecycle.Event value = nVar.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(Lifecycle.Event.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    } else if (value == Lifecycle.Event.ON_ANY) {
                        i = 2;
                    } else {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                }
                if (parameterTypes.length <= 2) {
                    m34677a(hashMap, new C1103b(i, method), value, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        C1102a aVar = new C1102a(hashMap);
        this.f4603a.put(cls, aVar);
        this.f4604b.put(cls, Boolean.valueOf(z));
        return aVar;
    }

    /* renamed from: a */
    public final void m34677a(Map<C1103b, Lifecycle.Event> map, C1103b bVar, Lifecycle.Event event, Class cls) {
        Lifecycle.Event event2 = map.get(bVar);
        if (event2 != null && event != event2) {
            Method method = bVar.f4608b;
            throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
        } else if (event2 == null) {
            map.put(bVar, event);
        }
    }

    /* renamed from: a */
    public final Method[] m34679a(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* renamed from: b */
    public C1102a m34676b(Class cls) {
        C1102a aVar = this.f4603a.get(cls);
        return aVar != null ? aVar : m34678a(cls, null);
    }

    /* renamed from: c */
    public boolean m34675c(Class cls) {
        Boolean bool = this.f4604b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] a = m34679a(cls);
        for (Method method : a) {
            if (((AbstractC1118n) method.getAnnotation(AbstractC1118n.class)) != null) {
                m34678a(cls, a);
                return true;
            }
        }
        this.f4604b.put(cls, false);
        return false;
    }
}
