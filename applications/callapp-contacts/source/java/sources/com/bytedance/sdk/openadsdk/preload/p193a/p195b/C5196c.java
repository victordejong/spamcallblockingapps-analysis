package com.bytedance.sdk.openadsdk.preload.p193a.p195b;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5258h;
import com.bytedance.sdk.openadsdk.preload.p193a.C5263m;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p198b.AbstractC5194b;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/c.class */
public final class C5196c {

    /* renamed from: a */
    private final Map<Type, AbstractC5258h<?>> f18533a;

    /* renamed from: b */
    private final AbstractC5194b f18534b = AbstractC5194b.m32861a();

    public C5196c(Map<Type, AbstractC5258h<?>> map) {
        this.f18533a = map;
    }

    /* renamed from: a */
    private <T> AbstractC5224i<T> m32855a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f18534b.mo32860a(declaredConstructor);
            }
            return new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.8
                /* JADX WARN: Type inference failed for: r0v15, types: [T, java.lang.Object] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    try {
                        return declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    } catch (InstantiationException e2) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e2);
                    } catch (InvocationTargetException e3) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e3.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    /* renamed from: a */
    private <T> AbstractC5224i<T> m32854a(final Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.9
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.TreeSet] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    return new TreeSet();
                }
            } : EnumSet.class.isAssignableFrom(cls) ? new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.10
                /* JADX WARN: Type inference failed for: r0v20, types: [T, java.util.EnumSet] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    Type type2 = type;
                    if (!(type2 instanceof ParameterizedType)) {
                        throw new C5263m("Invalid EnumSet type: " + type.toString());
                    }
                    Type type3 = ((ParameterizedType) type2).getActualTypeArguments()[0];
                    if (type3 instanceof Class) {
                        return EnumSet.noneOf((Class) type3);
                    }
                    throw new C5263m("Invalid EnumSet type: " + type.toString());
                }
            } : Set.class.isAssignableFrom(cls) ? new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.11
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.LinkedHashSet] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    return new LinkedHashSet();
                }
            } : Queue.class.isAssignableFrom(cls) ? new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.12
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayDeque] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    return new ArrayDeque();
                }
            } : new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.13
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayList] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    return new ArrayList();
                }
            };
        } else if (!Map.class.isAssignableFrom(cls)) {
            return null;
        } else {
            return ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.14
                /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.ConcurrentSkipListMap, T] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    return new ConcurrentSkipListMap();
                }
            } : ConcurrentMap.class.isAssignableFrom(cls) ? new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.2
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.concurrent.ConcurrentHashMap] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    return new ConcurrentHashMap();
                }
            } : SortedMap.class.isAssignableFrom(cls) ? new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.3
                /* JADX WARN: Type inference failed for: r0v0, types: [java.util.TreeMap, T] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    return new TreeMap();
                }
            } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(C5236a.m32806a(((ParameterizedType) type).getActualTypeArguments()[0]).m32808a())) ? new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.5
                /* JADX WARN: Type inference failed for: r0v0, types: [T, com.bytedance.sdk.openadsdk.preload.a.b.h] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    return new C5216h();
                }
            } : new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.4
                /* JADX WARN: Type inference failed for: r0v0, types: [java.util.LinkedHashMap, T] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    return new LinkedHashMap();
                }
            };
        }
    }

    /* renamed from: b */
    private <T> AbstractC5224i<T> m32853b(final Type type, final Class<? super T> cls) {
        return new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.6

            /* renamed from: d */
            private final AbstractC5230m f18551d = AbstractC5230m.m32811a();

            /* JADX WARN: Type inference failed for: r0v8, types: [T, java.lang.Object] */
            @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
            /* renamed from: a */
            public T mo32819a() {
                try {
                    return this.f18551d.mo32809a(cls);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e);
                }
            }
        };
    }

    /* renamed from: a */
    public final <T> AbstractC5224i<T> m32856a(C5236a<T> c5236a) {
        final Type m32805b = c5236a.m32805b();
        Class<? super T> m32808a = c5236a.m32808a();
        final AbstractC5258h<?> abstractC5258h = this.f18533a.get(m32805b);
        if (abstractC5258h != null) {
            return new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.1
                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    return abstractC5258h.m32700a(m32805b);
                }
            };
        }
        final AbstractC5258h<?> abstractC5258h2 = this.f18533a.get(m32808a);
        if (abstractC5258h2 != null) {
            return new AbstractC5224i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.7
                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i
                /* renamed from: a */
                public T mo32819a() {
                    return abstractC5258h2.m32700a(m32805b);
                }
            };
        }
        AbstractC5224i<T> m32855a = m32855a(m32808a);
        if (m32855a != null) {
            return m32855a;
        }
        AbstractC5224i<T> m32854a = m32854a(m32805b, m32808a);
        return m32854a != null ? m32854a : m32853b(m32805b, m32808a);
    }

    public final String toString() {
        return this.f18533a.toString();
    }
}
