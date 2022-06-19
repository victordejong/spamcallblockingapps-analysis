package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziq.class */
public final class zziq implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ zzm zzb;
    private final /* synthetic */ zzij zzc;

    public zziq(zzij zzijVar, AtomicReference atomicReference, zzm zzmVar) {
        this.zzc = zzijVar;
        this.zza = atomicReference;
        this.zzb = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        synchronized (this.zza) {
            try {
                zzeoVar = this.zzc.zzb;
            } catch (RemoteException e) {
                this.zzc.zzr().zzf().zza("Failed to get app instance id", e);
                this.zza.notify();
            }
            if (zzeoVar == null) {
                this.zzc.zzr().zzf().zza("Failed to get app instance id");
                this.zza.notify();
                return;
            }
            this.zza.set(zzeoVar.zzc(this.zzb));
            String str = (String) this.zza.get();
            if (str != null) {
                this.zzc.zzf().zza(str);
                this.zzc.zzs().zzj.zza(str);
            }
            this.zzc.zzaj();
            this.zza.notify();
        }
    }
}
