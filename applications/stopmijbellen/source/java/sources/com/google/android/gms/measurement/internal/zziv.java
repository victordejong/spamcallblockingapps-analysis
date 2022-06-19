package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziv.class */
public final class zziv implements Runnable {
    public final /* synthetic */ zzas zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzcf zzc;
    public final /* synthetic */ zzjk zzd;

    public zziv(zzjk zzjkVar, zzas zzasVar, String str, zzcf zzcfVar) {
        this.zzd = zzjkVar;
        this.zza = zzasVar;
        this.zzb = str;
        this.zzc = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzed zzedVar;
        zzfu zzfuVar = null;
        byte[] bArr = null;
        try {
            try {
                zzedVar = this.zzd.zzb;
                if (zzedVar == null) {
                    this.zzd.zzs.zzau().zzb().zza("Discarding data. Failed to send event to service to bundle");
                    zzfuVar = this.zzd.zzs;
                    bArr = null;
                } else {
                    byte[] zzj = zzedVar.zzj(this.zza, this.zzb);
                    this.zzd.zzP();
                    zzfuVar = this.zzd.zzs;
                    bArr = zzj;
                }
            } catch (RemoteException e) {
                zzfuVar = bArr;
                this.zzd.zzs.zzau().zzb().zzb("Failed to send event to the service to bundle", e);
                zzfuVar = this.zzd.zzs;
            }
            zzfuVar.zzl().zzag(this.zzc, bArr);
        } catch (Throwable th) {
            this.zzd.zzs.zzl().zzag(this.zzc, zzfuVar);
            throw th;
        }
    }
}
