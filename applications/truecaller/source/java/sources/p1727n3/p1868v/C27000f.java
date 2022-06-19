package p1727n3.p1868v;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Deprecated
/* renamed from: n3.v.f */
/* loaded from: classes-dex2jar.jar:n3/v/f.class */
public final class C27000f {

    /* renamed from: c */
    public static C27000f f75518c = new C27000f();

    /* renamed from: a */
    public final Map<Class<?>, C27001a> f75519a = new HashMap();

    /* renamed from: b */
    public final Map<Class<?>, Boolean> f75520b = new HashMap();

    @Deprecated
    /* renamed from: n3.v.f$a */
    /* loaded from: classes-dex2jar.jar:n3/v/f$a.class */
    public static class C27001a {

        /* renamed from: a */
        public final Map<AbstractC27028u.EnumC27029a, List<C27002b>> f75521a = new HashMap();

        /* renamed from: b */
        public final Map<C27002b, AbstractC27028u.EnumC27029a> f75522b;

        public C27001a(Map<C27002b, AbstractC27028u.EnumC27029a> map) {
            this.f75522b = map;
            for (Map.Entry<C27002b, AbstractC27028u.EnumC27029a> entry : map.entrySet()) {
                AbstractC27028u.EnumC27029a value = entry.getValue();
                List<C27002b> list = this.f75521a.get(value);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                    this.f75521a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        /* renamed from: a */
        public static void m1010a(List<C27002b> list, AbstractC26992b0 abstractC26992b0, AbstractC27028u.EnumC27029a enumC27029a, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    C27002b c27002b = list.get(size);
                    Objects.requireNonNull(c27002b);
                    try {
                        int i = c27002b.f75523a;
                        if (i == 0) {
                            c27002b.f75524b.invoke(obj, new Object[0]);
                        } else if (i == 1) {
                            c27002b.f75524b.invoke(obj, abstractC26992b0);
                        } else if (i == 2) {
                            c27002b.f75524b.invoke(obj, abstractC26992b0, enumC27029a);
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

    @Deprecated
    /* renamed from: n3.v.f$b */
    /* loaded from: classes-dex2jar.jar:n3/v/f$b.class */
    public static final class C27002b {

        /* renamed from: a */
        public final int f75523a;

        /* renamed from: b */
        public final Method f75524b;

        public C27002b(int i, Method method) {
            this.f75523a = i;
            this.f75524b = method;
            method.setAccessible(true);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C27002b)) {
                return false;
            }
            C27002b c27002b = (C27002b) obj;
            if (this.f75523a != c27002b.f75523a || !this.f75524b.getName().equals(c27002b.f75524b.getName())) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return this.f75524b.getName().hashCode() + (this.f75523a * 31);
        }
    }

    /* renamed from: a */
    public final C27001a m1013a(Class<?> cls, Method[] methodArr) {
        int i;
        C27001a m1012b;
        Class<?> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (m1012b = m1012b(superclass)) != null) {
            hashMap.putAll(m1012b.f75522b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C27002b, AbstractC27028u.EnumC27029a> entry : m1012b(cls2).f75522b.entrySet()) {
                m1011c(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            AbstractC27013m0 abstractC27013m0 = (AbstractC27013m0) method.getAnnotation(AbstractC27013m0.class);
            if (abstractC27013m0 != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (!parameterTypes[0].isAssignableFrom(AbstractC26992b0.class)) {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                } else {
                    i = 1;
                }
                AbstractC27028u.EnumC27029a value = abstractC27013m0.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(AbstractC27028u.EnumC27029a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (value != AbstractC27028u.EnumC27029a.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m1011c(hashMap, new C27002b(i, method), value, cls);
                z = true;
            }
        }
        C27001a c27001a = new C27001a(hashMap);
        this.f75519a.put(cls, c27001a);
        this.f75520b.put(cls, Boolean.valueOf(z));
        return c27001a;
    }

    /* renamed from: b */
    public C27001a m1012b(Class<?> cls) {
        C27001a c27001a = this.f75519a.get(cls);
        return c27001a != null ? c27001a : m1013a(cls, null);
    }

    /* renamed from: c */
    public final void m1011c(Map<C27002b, AbstractC27028u.EnumC27029a> map, C27002b c27002b, AbstractC27028u.EnumC27029a enumC27029a, Class<?> cls) {
        AbstractC27028u.EnumC27029a enumC27029a2 = map.get(c27002b);
        if (enumC27029a2 == null || enumC27029a == enumC27029a2) {
            if (enumC27029a2 != null) {
                return;
            }
            map.put(c27002b, enumC27029a);
            return;
        }
        Method method = c27002b.f75524b;
        StringBuilder m8728C = C22128a.m8728C("Method ");
        m8728C.append(method.getName());
        m8728C.append(" in ");
        m8728C.append(cls.getName());
        m8728C.append(" already declared with different @OnLifecycleEvent value: previous value ");
        m8728C.append(enumC27029a2);
        m8728C.append(", new value ");
        m8728C.append(enumC27029a);
        throw new IllegalArgumentException(m8728C.toString());
    }
}
