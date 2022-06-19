package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhf.class */
public final class zzhf implements Runnable {
    public final /* synthetic */ long zza;
    public final /* synthetic */ zzhw zzb;

    public zzhf(zzhw zzhwVar, long j) {
        this.zzb = zzhwVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzG(this.zza, true);
        this.zzb.zzs.zzy().zzv(new AtomicReference<>());
    }
}
