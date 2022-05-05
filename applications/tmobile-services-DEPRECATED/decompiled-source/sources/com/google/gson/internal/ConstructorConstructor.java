package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import com.google.gson.JsonIOException;
import com.google.gson.internal.reflect.ReflectionAccessor;
import com.google.gson.reflect.TypeToken;
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
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/ConstructorConstructor.class */
public final class ConstructorConstructor {

    /* renamed from: a */
    private final Map<Type, InstanceCreator<?>> f11969a;

    /* renamed from: b */
    private final ReflectionAccessor f11970b = ReflectionAccessor.m8167a();

    public ConstructorConstructor(Map<Type, InstanceCreator<?>> map) {
        this.f11969a = map;
    }

    /* renamed from: b */
    private <T> ObjectConstructor<T> m8343b(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f11970b.mo8166b(declaredConstructor);
            }
            return new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.3
                /* JADX WARN: Type inference failed for: r0v19, types: [T, java.lang.Object] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
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

    /* renamed from: c */
    private <T> ObjectConstructor<T> m8342c(final Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.4
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.TreeSet] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
                    return new TreeSet();
                }
            } : EnumSet.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.5
                /* JADX WARN: Type inference failed for: r0v24, types: [T, java.util.EnumSet] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
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
            } : Set.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.6
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.LinkedHashSet] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
                    return new LinkedHashSet();
                }
            } : Queue.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.7
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayDeque] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
                    return new ArrayDeque();
                }
            } : new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.8
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayList] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
                    return new ArrayList();
                }
            };
        }
        if (Map.class.isAssignableFrom(cls)) {
            return ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.9
                /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.ConcurrentSkipListMap, T] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
                    return new ConcurrentSkipListMap();
                }
            } : ConcurrentMap.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.10
                /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.concurrent.ConcurrentHashMap] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
                    return new ConcurrentHashMap();
                }
            } : SortedMap.class.isAssignableFrom(cls) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.11
                /* JADX WARN: Type inference failed for: r0v0, types: [java.util.TreeMap, T] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
                    return new TreeMap();
                }
            } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(TypeToken.m8161b(((ParameterizedType) type).getActualTypeArguments()[0]).m8160c())) ? new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.13
                /* JADX WARN: Type inference failed for: r0v0, types: [T, com.google.gson.internal.LinkedTreeMap] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
                    return new LinkedTreeMap();
                }
            } : new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.12
                /* JADX WARN: Type inference failed for: r0v0, types: [java.util.LinkedHashMap, T] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
                    return new LinkedHashMap();
                }
            };
        }
        return null;
    }

    /* renamed from: d */
    private <T> ObjectConstructor<T> m8341d(final Type type, final Class<? super T> cls) {
        return new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.14

            /* renamed from: a */
            private final UnsafeAllocator f11973a = UnsafeAllocator.m8273b();

            /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object] */
            @Override // com.google.gson.internal.ObjectConstructor
            /* renamed from: a */
            public T mo8284a() {
                try {
                    return this.f11973a.mo8272c(cls);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e);
                }
            }
        };
    }

    /* renamed from: a */
    public <T> ObjectConstructor<T> m8344a(TypeToken<T> typeToken) {
        final Type e = typeToken.m8158e();
        Class<? super T> c = typeToken.m8160c();
        final InstanceCreator<?> instanceCreator = this.f11969a.get(e);
        if (instanceCreator != null) {
            return new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.1
                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
                    return instanceCreator.m8396a(e);
                }
            };
        }
        final InstanceCreator<?> instanceCreator2 = this.f11969a.get(c);
        if (instanceCreator2 != null) {
            return new ObjectConstructor<T>(this) { // from class: com.google.gson.internal.ConstructorConstructor.2
                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.google.gson.internal.ObjectConstructor
                /* renamed from: a */
                public T mo8284a() {
                    return instanceCreator2.m8396a(e);
                }
            };
        }
        ObjectConstructor<T> b = m8343b(c);
        if (b != null) {
            return b;
        }
        ObjectConstructor<T> c2 = m8342c(e, c);
        return c2 != null ? c2 : m8341d(e, c);
    }

    public String toString() {
        return this.f11969a.toString();
    }
}
