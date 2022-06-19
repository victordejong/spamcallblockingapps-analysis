package com.google.firebase.perf.util;

import java.util.NoSuchElementException;
/* renamed from: com.google.firebase.perf.util.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/util/c.class */
public final class C2448c<T> {

    /* renamed from: a */
    private final T f10707a;

    private C2448c() {
        this.f10707a = null;
    }

    private C2448c(T t) {
        if (t != null) {
            this.f10707a = t;
            return;
        }
        throw new NullPointerException("value for optional is empty.");
    }

    /* renamed from: a */
    public static <T> C2448c<T> m3575a() {
        return new C2448c<>();
    }

    /* renamed from: b */
    public static <T> C2448c<T> m3574b(T t) {
        return t == null ? m3575a() : m3571e(t);
    }

    /* renamed from: e */
    public static <T> C2448c<T> m3571e(T t) {
        return new C2448c<>(t);
    }

    /* renamed from: c */
    public T m3573c() {
        T t = this.f10707a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: d */
    public boolean m3572d() {
        return this.f10707a != null;
    }
}
