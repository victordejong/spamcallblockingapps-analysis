package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzj.class */
public abstract class zzdzj<V> extends zzdzg<V> implements zzdzw<V> {
    @Override // com.google.android.gms.internal.ads.zzdzw
    public void addListener(Runnable runnable, Executor executor) {
        zzbad().addListener(runnable, executor);
    }

    /* renamed from: zzbae */
    public abstract zzdzw<? extends V> zzbad();
}
