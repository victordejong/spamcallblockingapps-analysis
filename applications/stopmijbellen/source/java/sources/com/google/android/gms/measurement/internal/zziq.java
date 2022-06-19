package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziq.class */
public final class zziq implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ zzcf zzb;
    public final /* synthetic */ zzjk zzc;

    public zziq(zzjk zzjkVar, zzp zzpVar, zzcf zzcfVar) {
        this.zzc = zzjkVar;
        this.zza = zzpVar;
        this.zzb = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfu zzfuVar;
        zzed zzedVar;
        String str = null;
        try {
            try {
                if (!this.zzc.zzs.zzd().zzi().zzh()) {
                    this.zzc.zzs.zzau().zzh().zza("Analytics storage consent denied; will not get app instance id");
                    this.zzc.zzs.zzk().zzE(null);
                    this.zzc.zzs.zzd().zze.zzb(null);
                    zzfuVar = this.zzc.zzs;
                    str = null;
                } else {
                    zzedVar = this.zzc.zzb;
                    if (zzedVar == null) {
                        this.zzc.zzs.zzau().zzb().zza("Failed to get app instance id");
                        zzfuVar = this.zzc.zzs;
                        str = null;
                    } else {
                        Preconditions.checkNotNull(this.zza);
                        String zzl = zzedVar.zzl(this.zza);
                        if (zzl != null) {
                            this.zzc.zzs.zzk().zzE(zzl);
                            this.zzc.zzs.zzd().zze.zzb(zzl);
                        }
                        this.zzc.zzP();
                        zzfuVar = this.zzc.zzs;
                        str = zzl;
                    }
                }
            } catch (RemoteException e) {
                this.zzc.zzs.zzau().zzb().zzb("Failed to get app instance id", e);
                zzfuVar = this.zzc.zzs;
            }
            zzfuVar.zzl().zzad(this.zzb, str);
        } catch (Throwable th) {
            this.zzc.zzs.zzl().zzad(this.zzb, null);
            throw th;
        }
    }
}
