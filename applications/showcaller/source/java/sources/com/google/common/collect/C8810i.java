package com.google.common.collect;

import java.util.Collection;
/* renamed from: com.google.common.collect.i */
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/i.class */
public final class C8810i {
    /* renamed from: a */
    private static <E> Collection<E> m2633a(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : C8813k.m2619g(iterable.iterator());
    }

    /* renamed from: b */
    public static Object[] m2632b(Iterable<?> iterable) {
        return m2633a(iterable).toArray();
    }

    /* renamed from: c */
    public static <T> T[] m2631c(Iterable<? extends T> iterable, T[] tArr) {
        return (T[]) m2633a(iterable).toArray(tArr);
    }
}
