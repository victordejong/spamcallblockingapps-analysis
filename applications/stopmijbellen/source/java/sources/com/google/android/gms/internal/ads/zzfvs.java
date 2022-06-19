package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvs.class */
final class zzfvs extends zzfvr {
    public final AtomicReferenceFieldUpdater<zzfvv<?>, Set<Throwable>> zza;
    public final AtomicIntegerFieldUpdater<zzfvv<?>> zzb;

    public zzfvs(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        super(null);
        this.zza = atomicReferenceFieldUpdater;
        this.zzb = atomicIntegerFieldUpdater;
    }

    @Override // com.google.android.gms.internal.ads.zzfvr
    public final int zza(zzfvv<?> zzfvvVar) {
        return this.zzb.decrementAndGet(zzfvvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfvr
    public final void zzb(zzfvv<?> zzfvvVar, @CheckForNull Set<Throwable> set, Set<Throwable> set2) {
        AtomicReferenceFieldUpdater<zzfvv<?>, Set<Throwable>> atomicReferenceFieldUpdater = this.zza;
        while (!atomicReferenceFieldUpdater.compareAndSet(zzfvvVar, null, set2) && atomicReferenceFieldUpdater.get(zzfvvVar) == null) {
        }
    }
}
