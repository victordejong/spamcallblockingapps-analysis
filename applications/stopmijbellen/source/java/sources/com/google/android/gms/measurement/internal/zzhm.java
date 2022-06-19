package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhm.class */
public final class zzhm implements Runnable {
    public final /* synthetic */ AtomicReference zza;
    public final /* synthetic */ zzhw zzb;

    public zzhm(zzhw zzhwVar, AtomicReference atomicReference) {
        this.zzb = zzhwVar;
        this.zza = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            this.zza.set(this.zzb.zzs.zzc().zzi(this.zzb.zzs.zzA().zzi(), zzea.zzK));
            this.zza.notify();
        }
    }
}
