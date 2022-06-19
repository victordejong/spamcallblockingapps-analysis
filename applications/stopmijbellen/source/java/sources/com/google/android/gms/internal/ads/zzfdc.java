package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfdc.class */
final class zzfdc extends zzfmb {
    public final /* synthetic */ zzbiq zza;
    public final /* synthetic */ zzfde zzb;

    public zzfdc(zzfde zzfdeVar, zzbiq zzbiqVar) {
        this.zzb = zzfdeVar;
        this.zza = zzbiqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfmb
    public final void zzv() {
        zzdvn zzdvnVar;
        zzdvnVar = this.zzb.zzf;
        if (zzdvnVar != null) {
            try {
                this.zza.zze();
            } catch (RemoteException e) {
                zzciz.zzl("#007 Could not call remote method.", e);
            }
        }
    }
}
