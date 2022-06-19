package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbag.class */
public final class zzbag implements zzdzl<T> {
    private final /* synthetic */ zzbad zzeis;

    public zzbag(zzbad zzbadVar) {
        this.zzeis = zzbadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void onSuccess(T t) {
        AtomicInteger atomicInteger;
        atomicInteger = this.zzeis.zzeip;
        atomicInteger.set(1);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        AtomicInteger atomicInteger;
        atomicInteger = this.zzeis.zzeip;
        atomicInteger.set(-1);
    }
}
