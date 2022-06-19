package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhn.class */
public final class zzhn implements Runnable {
    public final /* synthetic */ AtomicReference zza;
    public final /* synthetic */ zzhw zzb;

    public zzhn(zzhw zzhwVar, AtomicReference atomicReference) {
        this.zzb = zzhwVar;
        this.zza = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            this.zza.set(Long.valueOf(this.zzb.zzs.zzc().zzj(this.zzb.zzs.zzA().zzi(), zzea.zzL)));
            this.zza.notify();
        }
    }
}
