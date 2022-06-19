package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzlc;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzig.class */
public final class zzig implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ zzp zzb;
    final /* synthetic */ zzjb zzc;

    public zzig(zzjb zzjbVar, AtomicReference atomicReference, zzp zzpVar) {
        this.zzc = zzjbVar;
        this.zza = atomicReference;
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzdz zzdzVar;
        synchronized (this.zza) {
            try {
                zzlc.zzb();
            } catch (RemoteException e) {
                this.zzc.zzx.zzat().zzb().zzb("Failed to get app instance id", e);
                atomicReference = this.zza;
            }
            if (this.zzc.zzx.zzc().zzn(null, zzdw.zzaw) && !this.zzc.zzx.zzd().zzi().zzh()) {
                this.zzc.zzx.zzat().zzh().zza("Analytics storage consent denied; will not get app instance id");
                this.zzc.zzx.zzk().zzE(null);
                this.zzc.zzx.zzd().zzj.zzb(null);
                this.zza.set(null);
                this.zza.notify();
                return;
            }
            zzdzVar = this.zzc.zzb;
            if (zzdzVar == null) {
                this.zzc.zzx.zzat().zzb().zza("Failed to get app instance id");
                this.zza.notify();
                return;
            }
            Preconditions.checkNotNull(this.zzb);
            this.zza.set(zzdzVar.zzl(this.zzb));
            String str = (String) this.zza.get();
            if (str != null) {
                this.zzc.zzx.zzk().zzE(str);
                this.zzc.zzx.zzd().zzj.zzb(str);
            }
            this.zzc.zzP();
            atomicReference = this.zza;
            atomicReference.notify();
        }
    }
}
