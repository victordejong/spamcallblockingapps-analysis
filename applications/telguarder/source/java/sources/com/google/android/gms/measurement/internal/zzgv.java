package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzgv.class */
public final class zzgv implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzhn zzc;

    public zzgv(zzhn zzhnVar, AtomicReference atomicReference, boolean z) {
        this.zzc = zzhnVar;
        this.zza = atomicReference;
        this.zzb = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzx.zzy().zzt(this.zza, this.zzb);
    }
}
