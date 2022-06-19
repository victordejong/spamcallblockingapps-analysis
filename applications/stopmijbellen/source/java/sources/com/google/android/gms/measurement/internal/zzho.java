package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzho.class */
public final class zzho implements Runnable {
    public final /* synthetic */ AtomicReference zza;
    public final /* synthetic */ zzhw zzb;

    public zzho(zzhw zzhwVar, AtomicReference atomicReference) {
        this.zzb = zzhwVar;
        this.zza = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            this.zza.set(Integer.valueOf(this.zzb.zzs.zzc().zzk(this.zzb.zzs.zzA().zzi(), zzea.zzM)));
            this.zza.notify();
        }
    }
}
