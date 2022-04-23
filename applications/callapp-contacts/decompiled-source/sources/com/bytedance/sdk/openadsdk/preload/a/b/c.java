package com.bytedance.sdk.openadsdk.preload.a.b;

import com.bytedance.sdk.openadsdk.preload.a.b.b.b;
import com.bytedance.sdk.openadsdk.preload.a.c.a;
import com.bytedance.sdk.openadsdk.preload.a.h;
import com.bytedance.sdk.openadsdk.preload.a.m;
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
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Type, h<?>> f9996a;

    /* renamed from: b  reason: collision with root package name */
    private final b f9997b = b.a();

    public c(Map<Type, h<?>> map) {
        this.f9996a = map;
    }

    private <T> i<T> a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f9997b.a(declaredConstructor);
            }
            return new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.8
                /* JADX WARN: Type inference failed for: r0v15, types: [T, java.lang.Object] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
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

    private <T> i<T> a(final Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.9
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.TreeSet] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
                    return new TreeSet();
                }
            } : EnumSet.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.10
                /* JADX WARN: Type inference failed for: r0v20, types: [T, java.util.EnumSet] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
                    Type type2 = type;
                    if (type2 instanceof ParameterizedType) {
                        Type type3 = ((ParameterizedType) type2).getActualTypeArguments()[0];
                        if (type3 instanceof Class) {
                            return EnumSet.noneOf((Class) type3);
                        }
                        throw new m("Invalid EnumSet type: " + type.toString());
                    }
                    throw new m("Invalid EnumSet type: " + type.toString());
                }
            } : Set.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.11
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.LinkedHashSet] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
                    return new LinkedHashSet();
                }
            } : Queue.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.12
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayDeque] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
                    return new ArrayDeque();
                }
            } : new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.13
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayList] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
                    return new ArrayList();
                }
            };
        }
        if (Map.class.isAssignableFrom(cls)) {
            return ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.14
                /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.ConcurrentSkipListMap, T] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
                    return new ConcurrentSkipListMap();
                }
            } : ConcurrentMap.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.2
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.concurrent.ConcurrentHashMap] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
                    return new ConcurrentHashMap();
                }
            } : SortedMap.class.isAssignableFrom(cls) ? new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.3
                /* JADX WARN: Type inference failed for: r0v0, types: [java.util.TreeMap, T] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
                    return new TreeMap();
                }
            } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(a.a(((ParameterizedType) type).getActualTypeArguments()[0]).a())) ? new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.5
                /* JADX WARN: Type inference failed for: r0v0, types: [T, com.bytedance.sdk.openadsdk.preload.a.b.h] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
                    return new h();
                }
            } : new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.4
                /* JADX WARN: Type inference failed for: r0v0, types: [java.util.LinkedHashMap, T] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
                    return new LinkedHashMap();
                }
            };
        }
        return null;
    }

    private <T> i<T> b(final Type type, final Class<? super T> cls) {
        return new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.6

            /* renamed from: d  reason: collision with root package name */
            private final m f10014d = m.a();

            /* JADX WARN: Type inference failed for: r0v8, types: [T, java.lang.Object] */
            @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
            public T a() {
                try {
                    return this.f10014d.a(cls);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e);
                }
            }
        };
    }

    public final <T> i<T> a(a<T> aVar) {
        final Type b2 = aVar.b();
        Class<? super T> a2 = aVar.a();
        final h<?> hVar = this.f9996a.get(b2);
        if (hVar != null) {
            return new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.1
                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
                    return hVar.a(b2);
                }
            };
        }
        final h<?> hVar2 = this.f9996a.get(a2);
        if (hVar2 != null) {
            return new i<T>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.c.7
                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.bytedance.sdk.openadsdk.preload.a.b.i
                public T a() {
                    return hVar2.a(b2);
                }
            };
        }
        i<T> a3 = a(a2);
        if (a3 != null) {
            return a3;
        }
        i<T> a4 = a(b2, a2);
        return a4 != null ? a4 : b(b2, a2);
    }

    public final String toString() {
        return this.f9996a.toString();
    }
}
