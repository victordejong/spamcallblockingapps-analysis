package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfrg.class */
public final class zzfrg extends zzfre {
    public final AtomicReferenceFieldUpdater<zzfri<?>, Set<Throwable>> zza;
    public final AtomicIntegerFieldUpdater<zzfri<?>> zzb;

    public zzfrg(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        super(null);
        this.zza = atomicReferenceFieldUpdater;
        this.zzb = atomicIntegerFieldUpdater;
    }

    @Override // com.google.android.gms.internal.ads.zzfre
    public final void zza(zzfri<?> zzfriVar, Set<Throwable> set, Set<Throwable> set2) {
        this.zza.compareAndSet(zzfriVar, null, set2);
    }

    @Override // com.google.android.gms.internal.ads.zzfre
    public final int zzb(zzfri<?> zzfriVar) {
        return this.zzb.decrementAndGet(zzfriVar);
    }
}
