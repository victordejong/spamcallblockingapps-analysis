package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhe.class */
public final class zzhe implements Runnable {
    public final /* synthetic */ AtomicReference zza;
    public final /* synthetic */ boolean zzb;
    public final /* synthetic */ zzhw zzc;

    public zzhe(zzhw zzhwVar, AtomicReference atomicReference, boolean z) {
        this.zzc = zzhwVar;
        this.zza = atomicReference;
        this.zzb = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzs.zzy().zzt(this.zza, this.zzb);
    }
}
