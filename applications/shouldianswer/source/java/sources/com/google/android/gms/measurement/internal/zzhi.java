package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhi.class */
public final class zzhi implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ boolean zzb;
    private final /* synthetic */ zzhb zzc;

    public zzhi(zzhb zzhbVar, AtomicReference atomicReference, boolean z) {
        this.zzc = zzhbVar;
        this.zza = atomicReference;
        this.zzb = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzh().zza(this.zza, this.zzb);
    }
}
