package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayi.class */
public final class ayi<T> {

    /* renamed from: a */
    public T f43318a;

    /* renamed from: b */
    public Executor f43319b;

    public ayi(T t, Executor executor) {
        this.f43318a = t;
        this.f43319b = executor;
    }

    /* renamed from: a */
    public static <T> ayi<T> m18321a(T t, Executor executor) {
        return new ayi<>(t, executor);
    }
}
