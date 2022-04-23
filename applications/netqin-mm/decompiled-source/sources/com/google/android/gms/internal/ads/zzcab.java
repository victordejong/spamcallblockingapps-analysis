package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcab.class */
public final class zzcab<T> {

    /* renamed from: a */
    public T f25644a;

    /* renamed from: b */
    public Executor f25645b;

    public zzcab(T t, Executor executor) {
        this.f25644a = t;
        this.f25645b = executor;
    }

    /* renamed from: a */
    public static <T> zzcab<T> m14868a(T t, Executor executor) {
        return new zzcab<>(t, executor);
    }
}
