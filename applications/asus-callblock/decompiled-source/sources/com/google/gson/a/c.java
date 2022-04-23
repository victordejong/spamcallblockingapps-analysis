package com.google.gson.a;

import com.google.gson.b.a;
import com.google.gson.h;
import com.google.gson.m;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Type, h<?>> f4491a;

    public c(Map<Type, h<?>> map) {
        this.f4491a = map;
    }

    private <T> h<T> a(Class<? super T> cls) {
        h<T> hVar;
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            hVar = new h<T>() { // from class: com.google.gson.a.c.6
                /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
                @Override // com.google.gson.a.h
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
            hVar = null;
        }
        return hVar;
    }

    public final <T> h<T> a(a<T> aVar) {
        h<T> hVar;
        final Type type = aVar.f4532b;
        final Class<? super T> cls = aVar.f4531a;
        final h<?> hVar2 = this.f4491a.get(type);
        if (hVar2 != null) {
            hVar = new h<T>() { // from class: com.google.gson.a.c.1
                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.google.gson.a.h
                public final T a() {
                    return hVar2.a();
                }
            };
        } else {
            final h<?> hVar3 = this.f4491a.get(cls);
            if (hVar3 != null) {
                hVar = new h<T>() { // from class: com.google.gson.a.c.5
                    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                    @Override // com.google.gson.a.h
                    public final T a() {
                        return hVar3.a();
                    }
                };
            } else {
                h<T> a2 = a(cls);
                hVar = a2;
                if (a2 == null) {
                    h<T> hVar4 = Collection.class.isAssignableFrom(cls) ? SortedSet.class.isAssignableFrom(cls) ? new h<T>() { // from class: com.google.gson.a.c.7
                        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.TreeSet] */
                        @Override // com.google.gson.a.h
                        public final T a() {
                            return new TreeSet();
                        }
                    } : EnumSet.class.isAssignableFrom(cls) ? new h<T>() { // from class: com.google.gson.a.c.8
                        /* JADX WARN: Type inference failed for: r0v14, types: [T, java.util.EnumSet] */
                        @Override // com.google.gson.a.h
                        public final T a() {
                            if (type instanceof ParameterizedType) {
                                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                                if (type2 instanceof Class) {
                                    return EnumSet.noneOf((Class) type2);
                                }
                                throw new m("Invalid EnumSet type: " + type.toString());
                            }
                            throw new m("Invalid EnumSet type: " + type.toString());
                        }
                    } : Set.class.isAssignableFrom(cls) ? new h<T>() { // from class: com.google.gson.a.c.9
                        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.LinkedHashSet] */
                        @Override // com.google.gson.a.h
                        public final T a() {
                            return new LinkedHashSet();
                        }
                    } : Queue.class.isAssignableFrom(cls) ? new h<T>() { // from class: com.google.gson.a.c.10
                        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.LinkedList] */
                        @Override // com.google.gson.a.h
                        public final T a() {
                            return new LinkedList();
                        }
                    } : new h<T>() { // from class: com.google.gson.a.c.11
                        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayList] */
                        @Override // com.google.gson.a.h
                        public final T a() {
                            return new ArrayList();
                        }
                    } : Map.class.isAssignableFrom(cls) ? SortedMap.class.isAssignableFrom(cls) ? new h<T>() { // from class: com.google.gson.a.c.12
                        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.TreeMap, T] */
                        @Override // com.google.gson.a.h
                        public final T a() {
                            return new TreeMap();
                        }
                    } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(a.a(((ParameterizedType) type).getActualTypeArguments()[0]).f4531a)) ? new h<T>() { // from class: com.google.gson.a.c.3
                        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.gson.a.g, T] */
                        @Override // com.google.gson.a.h
                        public final T a() {
                            return new g();
                        }
                    } : new h<T>() { // from class: com.google.gson.a.c.2
                        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.LinkedHashMap, T] */
                        @Override // com.google.gson.a.h
                        public final T a() {
                            return new LinkedHashMap();
                        }
                    } : null;
                    hVar = hVar4;
                    if (hVar4 == null) {
                        hVar = new h<T>() { // from class: com.google.gson.a.c.4
                            private final k d = k.a();

                            /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
                            @Override // com.google.gson.a.h
                            public final T a() {
                                try {
                                    return this.d.a(cls);
                                } catch (Exception e) {
                                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Register an InstanceCreator with Gson for this type may fix this problem.", e);
                                }
                            }
                        };
                    }
                }
            }
        }
        return hVar;
    }

    public final String toString() {
        return this.f4491a.toString();
    }
}
