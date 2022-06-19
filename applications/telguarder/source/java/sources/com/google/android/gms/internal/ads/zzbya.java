package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbya.class */
public final class zzbya<T> {
    public Executor executor;
    public T zzgba;

    public zzbya(T t, Executor executor) {
        this.zzgba = t;
        this.executor = executor;
    }

    public static <T> zzbya<T> zzb(T t, Executor executor) {
        return new zzbya<>(t, executor);
    }
}
