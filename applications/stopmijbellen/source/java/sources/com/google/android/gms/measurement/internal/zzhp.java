package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhp.class */
public final class zzhp implements Runnable {
    public final /* synthetic */ AtomicReference zza;
    public final /* synthetic */ zzhw zzb;

    public zzhp(zzhw zzhwVar, AtomicReference atomicReference) {
        this.zzb = zzhwVar;
        this.zza = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            this.zza.set(Double.valueOf(this.zzb.zzs.zzc().zzm(this.zzb.zzs.zzA().zzi(), zzea.zzN)));
            this.zza.notify();
        }
    }
}
