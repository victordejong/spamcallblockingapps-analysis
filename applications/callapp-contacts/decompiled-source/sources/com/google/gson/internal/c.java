package com.google.gson.internal;

import com.google.gson.JsonIOException;
import com.google.gson.a.a;
import com.google.gson.h;
import com.google.gson.internal.a.b;
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
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Type, h<?>> f32759a;

    /* renamed from: b  reason: collision with root package name */
    private final b f32760b = b.a();

    public c(Map<Type, h<?>> map) {
        this.f32759a = map;
    }

    private <T> h<T> a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f32760b.a(declaredConstructor);
            }
            return new h<T>() { // from class: com.google.gson.internal.c.8
                /* JADX WARN: Type inference failed for: r0v15, types: [T, java.lang.Object] */
                @Override // com.google.gson.internal.h
                public final T a() {
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

    public final <T> h<T> a(a<T> aVar) {
        final Type type = aVar.getType();
        final Class<? super T> rawType = aVar.getRawType();
        final h<?> hVar = this.f32759a.get(type);
        if (hVar != null) {
            return new h<T>() { // from class: com.google.gson.internal.c.1
                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.google.gson.internal.h
                public final T a() {
                    return hVar.a();
                }
            };
        }
        final h<?> hVar2 = this.f32759a.get(rawType);
        if (hVar2 != null) {
            return new h<T>() { // from class: com.google.gson.internal.c.7
                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.google.gson.internal.h
                public final T a() {
                    return hVar2.a();
                }
            };
        }
        h<T> a2 = a(rawType);
        if (a2 != null) {
            return a2;
        }
        h<T> hVar3 = Collection.class.isAssignableFrom(rawType) ? SortedSet.class.isAssignableFrom(rawType) ? new h<T>() { // from class: com.google.gson.internal.c.9
            /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.TreeSet] */
            @Override // com.google.gson.internal.h
            public final T a() {
                return new TreeSet();
            }
        } : EnumSet.class.isAssignableFrom(rawType) ? new h<T>() { // from class: com.google.gson.internal.c.10
            /* JADX WARN: Type inference failed for: r0v20, types: [T, java.util.EnumSet] */
            @Override // com.google.gson.internal.h
            public final T a() {
                Type type2 = type;
                if (type2 instanceof ParameterizedType) {
                    Type type3 = ((ParameterizedType) type2).getActualTypeArguments()[0];
                    if (type3 instanceof Class) {
                        return EnumSet.noneOf((Class) type3);
                    }
                    throw new JsonIOException("Invalid EnumSet type: " + type.toString());
                }
                throw new JsonIOException("Invalid EnumSet type: " + type.toString());
            }
        } : Set.class.isAssignableFrom(rawType) ? new h<T>() { // from class: com.google.gson.internal.c.11
            /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.LinkedHashSet] */
            @Override // com.google.gson.internal.h
            public final T a() {
                return new LinkedHashSet();
            }
        } : Queue.class.isAssignableFrom(rawType) ? new h<T>() { // from class: com.google.gson.internal.c.12
            /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayDeque] */
            @Override // com.google.gson.internal.h
            public final T a() {
                return new ArrayDeque();
            }
        } : new h<T>() { // from class: com.google.gson.internal.c.13
            /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayList] */
            @Override // com.google.gson.internal.h
            public final T a() {
                return new ArrayList();
            }
        } : Map.class.isAssignableFrom(rawType) ? ConcurrentNavigableMap.class.isAssignableFrom(rawType) ? new h<T>() { // from class: com.google.gson.internal.c.14
            /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.ConcurrentSkipListMap, T] */
            @Override // com.google.gson.internal.h
            public final T a() {
                return new ConcurrentSkipListMap();
            }
        } : ConcurrentMap.class.isAssignableFrom(rawType) ? new h<T>() { // from class: com.google.gson.internal.c.2
            /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.concurrent.ConcurrentHashMap] */
            @Override // com.google.gson.internal.h
            public final T a() {
                return new ConcurrentHashMap();
            }
        } : SortedMap.class.isAssignableFrom(rawType) ? new h<T>() { // from class: com.google.gson.internal.c.3
            /* JADX WARN: Type inference failed for: r0v0, types: [java.util.TreeMap, T] */
            @Override // com.google.gson.internal.h
            public final T a() {
                return new TreeMap();
            }
        } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(a.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new h<T>() { // from class: com.google.gson.internal.c.5
            /* JADX WARN: Type inference failed for: r0v0, types: [T, com.google.gson.internal.g] */
            @Override // com.google.gson.internal.h
            public final T a() {
                return new g();
            }
        } : new h<T>() { // from class: com.google.gson.internal.c.4
            /* JADX WARN: Type inference failed for: r0v0, types: [java.util.LinkedHashMap, T] */
            @Override // com.google.gson.internal.h
            public final T a() {
                return new LinkedHashMap();
            }
        } : null;
        return hVar3 != null ? hVar3 : new h<T>() { // from class: com.google.gson.internal.c.6

            /* renamed from: d  reason: collision with root package name */
            private final l f32777d = l.a();

            /* JADX WARN: Type inference failed for: r0v8, types: [T, java.lang.Object] */
            @Override // com.google.gson.internal.h
            public final T a() {
                try {
                    return this.f32777d.a(rawType);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e);
                }
            }
        };
    }

    public final String toString() {
        return this.f32759a.toString();
    }
}
