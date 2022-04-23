package io.reactivex.internal.functions;

import io.reactivex.functions.BiPredicate;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/ObjectHelper.class */
public final class ObjectHelper {

    /* renamed from: a */
    static final BiPredicate<Object, Object> f15167a = new BiObjectPredicate();

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/functions/ObjectHelper$BiObjectPredicate.class */
    static final class BiObjectPredicate implements BiPredicate<Object, Object> {
        BiObjectPredicate() {
        }

        @Override // io.reactivex.functions.BiPredicate
        /* renamed from: a */
        public boolean mo4360a(Object obj, Object obj2) {
            return ObjectHelper.m4365c(obj, obj2);
        }
    }

    private ObjectHelper() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: a */
    public static int m4367a(int i, int i2) {
        return i < i2 ? -1 : i > i2 ? 1 : 0;
    }

    /* renamed from: b */
    public static int m4366b(long j, long j2) {
        int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        return i < 0 ? -1 : i > 0 ? 1 : 0;
    }

    /* renamed from: c */
    public static boolean m4365c(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: d */
    public static <T> BiPredicate<T, T> m4364d() {
        return (BiPredicate<T, T>) f15167a;
    }

    /* renamed from: e */
    public static <T> T m4363e(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: f */
    public static int m4362f(int i, String str) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i);
    }

    /* renamed from: g */
    public static long m4361g(long j, String str) {
        if (j > 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + j);
    }
}
