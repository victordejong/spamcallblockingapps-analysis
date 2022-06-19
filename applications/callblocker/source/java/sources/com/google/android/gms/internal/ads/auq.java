package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/auq.class */
public final class auq<T> {

    /* renamed from: a */
    public T f10394a;

    /* renamed from: b */
    public Executor f10395b;

    public auq(T t, Executor executor) {
        this.f10394a = t;
        this.f10395b = executor;
    }

    /* renamed from: a */
    public static <T> auq<T> m12418a(T t, Executor executor) {
        return new auq<>(t, executor);
    }
}
