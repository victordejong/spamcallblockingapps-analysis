package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzchq.class */
public final class zzchq implements zzfrz {
    public final /* synthetic */ zzchs zza;

    public zzchq(zzchs zzchsVar) {
        this.zza = zzchsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        AtomicInteger atomicInteger;
        atomicInteger = this.zza.zzb;
        atomicInteger.set(-1);
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zzb(Object obj) {
        AtomicInteger atomicInteger;
        atomicInteger = this.zza.zzb;
        atomicInteger.set(1);
    }
}
