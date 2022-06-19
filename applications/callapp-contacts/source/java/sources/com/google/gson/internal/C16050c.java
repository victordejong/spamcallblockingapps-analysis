package com.google.gson.internal;

import com.google.gson.AbstractC15973h;
import com.google.gson.JsonIOException;
import com.google.gson.internal.p400a.AbstractC15979b;
import com.google.gson.p399a.C15950a;
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
/* renamed from: com.google.gson.internal.c */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/c.class */
public final class C16050c {

    /* renamed from: a */
    private final Map<Type, AbstractC15973h<?>> f56774a;

    /* renamed from: b */
    private final AbstractC15979b f56775b = AbstractC15979b.m7953a();

    public C16050c(Map<Type, AbstractC15973h<?>> map) {
        this.f56774a = map;
    }

    /* renamed from: a */
    private <T> AbstractC16077h<T> m7899a(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f56775b.mo7952a(declaredConstructor);
            }
            return new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.8
                /* JADX WARN: Type inference failed for: r0v15, types: [T, java.lang.Object] */
                @Override // com.google.gson.internal.AbstractC16077h
                /* renamed from: a */
                public final T mo7874a() {
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
    public final <T> AbstractC16077h<T> m7900a(C15950a<T> c15950a) {
        final Type type = c15950a.getType();
        final Class<? super T> rawType = c15950a.getRawType();
        final AbstractC15973h<?> abstractC15973h = this.f56774a.get(type);
        if (abstractC15973h != null) {
            return new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.1
                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.google.gson.internal.AbstractC16077h
                /* renamed from: a */
                public final T mo7874a() {
                    return abstractC15973h.m7956a();
                }
            };
        }
        final AbstractC15973h<?> abstractC15973h2 = this.f56774a.get(rawType);
        if (abstractC15973h2 != null) {
            return new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.7
                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.google.gson.internal.AbstractC16077h
                /* renamed from: a */
                public final T mo7874a() {
                    return abstractC15973h2.m7956a();
                }
            };
        }
        AbstractC16077h<T> m7899a = m7899a(rawType);
        if (m7899a != null) {
            return m7899a;
        }
        AbstractC16077h<T> abstractC16077h = Collection.class.isAssignableFrom(rawType) ? SortedSet.class.isAssignableFrom(rawType) ? new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.9
            /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.TreeSet] */
            @Override // com.google.gson.internal.AbstractC16077h
            /* renamed from: a */
            public final T mo7874a() {
                return new TreeSet();
            }
        } : EnumSet.class.isAssignableFrom(rawType) ? new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.10
            /* JADX WARN: Type inference failed for: r0v20, types: [T, java.util.EnumSet] */
            @Override // com.google.gson.internal.AbstractC16077h
            /* renamed from: a */
            public final T mo7874a() {
                Type type2 = type;
                if (!(type2 instanceof ParameterizedType)) {
                    throw new JsonIOException("Invalid EnumSet type: " + type.toString());
                }
                Type type3 = ((ParameterizedType) type2).getActualTypeArguments()[0];
                if (type3 instanceof Class) {
                    return EnumSet.noneOf((Class) type3);
                }
                throw new JsonIOException("Invalid EnumSet type: " + type.toString());
            }
        } : Set.class.isAssignableFrom(rawType) ? new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.11
            /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.LinkedHashSet] */
            @Override // com.google.gson.internal.AbstractC16077h
            /* renamed from: a */
            public final T mo7874a() {
                return new LinkedHashSet();
            }
        } : Queue.class.isAssignableFrom(rawType) ? new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.12
            /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayDeque] */
            @Override // com.google.gson.internal.AbstractC16077h
            /* renamed from: a */
            public final T mo7874a() {
                return new ArrayDeque();
            }
        } : new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.13
            /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayList] */
            @Override // com.google.gson.internal.AbstractC16077h
            /* renamed from: a */
            public final T mo7874a() {
                return new ArrayList();
            }
        } : Map.class.isAssignableFrom(rawType) ? ConcurrentNavigableMap.class.isAssignableFrom(rawType) ? new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.14
            /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.ConcurrentSkipListMap, T] */
            @Override // com.google.gson.internal.AbstractC16077h
            /* renamed from: a */
            public final T mo7874a() {
                return new ConcurrentSkipListMap();
            }
        } : ConcurrentMap.class.isAssignableFrom(rawType) ? new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.2
            /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.concurrent.ConcurrentHashMap] */
            @Override // com.google.gson.internal.AbstractC16077h
            /* renamed from: a */
            public final T mo7874a() {
                return new ConcurrentHashMap();
            }
        } : SortedMap.class.isAssignableFrom(rawType) ? new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.3
            /* JADX WARN: Type inference failed for: r0v0, types: [java.util.TreeMap, T] */
            @Override // com.google.gson.internal.AbstractC16077h
            /* renamed from: a */
            public final T mo7874a() {
                return new TreeMap();
            }
        } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(C15950a.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.5
            /* JADX WARN: Type inference failed for: r0v0, types: [T, com.google.gson.internal.g] */
            @Override // com.google.gson.internal.AbstractC16077h
            /* renamed from: a */
            public final T mo7874a() {
                return new C16069g();
            }
        } : new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.4
            /* JADX WARN: Type inference failed for: r0v0, types: [java.util.LinkedHashMap, T] */
            @Override // com.google.gson.internal.AbstractC16077h
            /* renamed from: a */
            public final T mo7874a() {
                return new LinkedHashMap();
            }
        } : null;
        return abstractC16077h != null ? abstractC16077h : new AbstractC16077h<T>() { // from class: com.google.gson.internal.c.6

            /* renamed from: d */
            private final AbstractC16083l f56792d = AbstractC16083l.m7866a();

            /* JADX WARN: Type inference failed for: r0v8, types: [T, java.lang.Object] */
            @Override // com.google.gson.internal.AbstractC16077h
            /* renamed from: a */
            public final T mo7874a() {
                try {
                    return this.f56792d.mo7864a(rawType);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e);
                }
            }
        };
    }

    public final String toString() {
        return this.f56774a.toString();
    }
}
