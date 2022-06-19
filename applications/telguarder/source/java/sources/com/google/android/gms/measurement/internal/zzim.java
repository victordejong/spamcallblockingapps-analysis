package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzs;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzim.class */
public final class zzim implements Runnable {
    final /* synthetic */ zzas zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzs zzc;
    final /* synthetic */ zzjb zzd;

    public zzim(zzjb zzjbVar, zzas zzasVar, String str, zzs zzsVar) {
        this.zzd = zzjbVar;
        this.zza = zzasVar;
        this.zzb = str;
        this.zzc = zzsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdz zzdzVar;
        zzfl zzflVar = null;
        byte[] bArr = null;
        try {
            try {
                zzdzVar = this.zzd.zzb;
                if (zzdzVar == null) {
                    this.zzd.zzx.zzat().zzb().zza("Discarding data. Failed to send event to service to bundle");
                    zzflVar = this.zzd.zzx;
                    bArr = null;
                } else {
                    byte[] zzj = zzdzVar.zzj(this.zza, this.zzb);
                    this.zzd.zzP();
                    zzflVar = this.zzd.zzx;
                    bArr = zzj;
                }
            } catch (RemoteException e) {
                zzflVar = bArr;
                this.zzd.zzx.zzat().zzb().zzb("Failed to send event to the service to bundle", e);
                zzflVar = this.zzd.zzx;
            }
            zzflVar.zzl().zzag(this.zzc, bArr);
        } catch (Throwable th) {
            this.zzd.zzx.zzl().zzag(this.zzc, zzflVar);
            throw th;
        }
    }
}
