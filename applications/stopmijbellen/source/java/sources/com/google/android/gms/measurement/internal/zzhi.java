package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhi.class */
public final class zzhi implements Runnable {
    public final /* synthetic */ AtomicReference zza;
    public final /* synthetic */ zzhw zzb;

    public zzhi(zzhw zzhwVar, AtomicReference atomicReference) {
        this.zzb = zzhwVar;
        this.zza = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            this.zza.set(Boolean.valueOf(this.zzb.zzs.zzc().zzn(this.zzb.zzs.zzA().zzi(), zzea.zzJ)));
            this.zza.notify();
        }
    }
}
