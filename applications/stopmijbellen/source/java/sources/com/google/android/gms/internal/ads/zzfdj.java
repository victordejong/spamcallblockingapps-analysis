package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfdj.class */
final class zzfdj extends zzfmb {
    public final /* synthetic */ zzbho zza;
    public final /* synthetic */ zzfdk zzb;

    public zzfdj(zzfdk zzfdkVar, zzbho zzbhoVar) {
        this.zzb = zzfdkVar;
        this.zza = zzbhoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfmb
    public final void zzv() {
        zzdvn zzdvnVar;
        zzdvnVar = this.zzb.zzd;
        if (zzdvnVar != null) {
            try {
                this.zza.zze();
            } catch (RemoteException e) {
                zzciz.zzl("#007 Could not call remote method.", e);
            }
        }
    }
}
