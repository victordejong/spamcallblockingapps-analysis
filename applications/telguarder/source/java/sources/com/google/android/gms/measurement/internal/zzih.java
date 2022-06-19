package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzlc;
import com.google.android.gms.internal.measurement.zzs;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzih.class */
public final class zzih implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ zzs zzb;
    final /* synthetic */ zzjb zzc;

    public zzih(zzjb zzjbVar, zzp zzpVar, zzs zzsVar) {
        this.zzc = zzjbVar;
        this.zza = zzpVar;
        this.zzb = zzsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfl zzflVar;
        zzdz zzdzVar;
        String str = null;
        try {
            try {
                zzlc.zzb();
                if (!this.zzc.zzx.zzc().zzn(null, zzdw.zzaw) || this.zzc.zzx.zzd().zzi().zzh()) {
                    zzdzVar = this.zzc.zzb;
                    if (zzdzVar == null) {
                        this.zzc.zzx.zzat().zzb().zza("Failed to get app instance id");
                        zzflVar = this.zzc.zzx;
                        str = null;
                    } else {
                        Preconditions.checkNotNull(this.zza);
                        String zzl = zzdzVar.zzl(this.zza);
                        if (zzl != null) {
                            this.zzc.zzx.zzk().zzE(zzl);
                            this.zzc.zzx.zzd().zzj.zzb(zzl);
                        }
                        this.zzc.zzP();
                        zzflVar = this.zzc.zzx;
                        str = zzl;
                    }
                } else {
                    this.zzc.zzx.zzat().zzh().zza("Analytics storage consent denied; will not get app instance id");
                    this.zzc.zzx.zzk().zzE(null);
                    this.zzc.zzx.zzd().zzj.zzb(null);
                    zzflVar = this.zzc.zzx;
                    str = null;
                }
            } catch (RemoteException e) {
                this.zzc.zzx.zzat().zzb().zzb("Failed to get app instance id", e);
                zzflVar = this.zzc.zzx;
            }
            zzflVar.zzl().zzad(this.zzb, str);
        } catch (Throwable th) {
            this.zzc.zzx.zzl().zzad(this.zzb, null);
            throw th;
        }
    }
}
