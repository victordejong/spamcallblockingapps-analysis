package androidx.lifecycle;

import android.support.p012v4.media.C0082b;
import androidx.lifecycle.AbstractC0516f;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
@Deprecated
/* renamed from: androidx.lifecycle.b */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/b.class */
public final class C0507b {

    /* renamed from: c */
    public static C0507b f2020c = new C0507b();

    /* renamed from: a */
    public final Map<Class<?>, C0508a> f2021a = new HashMap();

    /* renamed from: b */
    public final Map<Class<?>, Boolean> f2022b = new HashMap();

    @Deprecated
    /* renamed from: androidx.lifecycle.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/b$a.class */
    public static class C0508a {

        /* renamed from: a */
        public final Map<AbstractC0516f.EnumC0518b, List<C0509b>> f2023a = new HashMap();

        /* renamed from: b */
        public final Map<C0509b, AbstractC0516f.EnumC0518b> f2024b;

        public C0508a(Map<C0509b, AbstractC0516f.EnumC0518b> map) {
            this.f2024b = map;
            for (Map.Entry<C0509b, AbstractC0516f.EnumC0518b> entry : map.entrySet()) {
                AbstractC0516f.EnumC0518b value = entry.getValue();
                List<C0509b> list = this.f2023a.get(value);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                    this.f2023a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        /* renamed from: a */
        public static void m8003a(List<C0509b> list, AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    C0509b c0509b = list.get(size);
                    Objects.requireNonNull(c0509b);
                    try {
                        int i = c0509b.f2025a;
                        if (i == 0) {
                            c0509b.f2026b.invoke(obj, new Object[0]);
                        } else if (i == 1) {
                            c0509b.f2026b.invoke(obj, abstractC0524j);
                        } else if (i == 2) {
                            c0509b.f2026b.invoke(obj, abstractC0524j, enumC0518b);
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
    /* renamed from: androidx.lifecycle.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/b$b.class */
    public static final class C0509b {

        /* renamed from: a */
        public final int f2025a;

        /* renamed from: b */
        public final Method f2026b;

        public C0509b(int i, Method method) {
            this.f2025a = i;
            this.f2026b = method;
            method.setAccessible(true);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0509b)) {
                return false;
            }
            C0509b c0509b = (C0509b) obj;
            if (this.f2025a != c0509b.f2025a || !this.f2026b.getName().equals(c0509b.f2026b.getName())) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return this.f2026b.getName().hashCode() + (this.f2025a * 31);
        }
    }

    /* renamed from: a */
    public final C0508a m8006a(Class<?> cls, Method[] methodArr) {
        int i;
        C0508a m8005b;
        Class<?> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (m8005b = m8005b(superclass)) != null) {
            hashMap.putAll(m8005b.f2024b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C0509b, AbstractC0516f.EnumC0518b> entry : m8005b(cls2).f2024b.entrySet()) {
                m8004c(hashMap, entry.getKey(), entry.getValue(), cls);
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
            AbstractC0532q abstractC0532q = (AbstractC0532q) method.getAnnotation(AbstractC0532q.class);
            if (abstractC0532q != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (!parameterTypes[0].isAssignableFrom(AbstractC0524j.class)) {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                } else {
                    i = 1;
                }
                AbstractC0516f.EnumC0518b value = abstractC0532q.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(AbstractC0516f.EnumC0518b.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (value != AbstractC0516f.EnumC0518b.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m8004c(hashMap, new C0509b(i, method), value, cls);
                z = true;
            }
        }
        C0508a c0508a = new C0508a(hashMap);
        this.f2021a.put(cls, c0508a);
        this.f2022b.put(cls, Boolean.valueOf(z));
        return c0508a;
    }

    /* renamed from: b */
    public C0508a m8005b(Class<?> cls) {
        C0508a c0508a = this.f2021a.get(cls);
        return c0508a != null ? c0508a : m8006a(cls, null);
    }

    /* renamed from: c */
    public final void m8004c(Map<C0509b, AbstractC0516f.EnumC0518b> map, C0509b c0509b, AbstractC0516f.EnumC0518b enumC0518b, Class<?> cls) {
        AbstractC0516f.EnumC0518b enumC0518b2 = map.get(c0509b);
        if (enumC0518b2 == null || enumC0518b == enumC0518b2) {
            if (enumC0518b2 != null) {
                return;
            }
            map.put(c0509b, enumC0518b);
            return;
        }
        Method method = c0509b.f2026b;
        StringBuilder m8752j = C0082b.m8752j("Method ");
        m8752j.append(method.getName());
        m8752j.append(" in ");
        m8752j.append(cls.getName());
        m8752j.append(" already declared with different @OnLifecycleEvent value: previous value ");
        m8752j.append(enumC0518b2);
        m8752j.append(", new value ");
        m8752j.append(enumC0518b);
        throw new IllegalArgumentException(m8752j.toString());
    }
}
