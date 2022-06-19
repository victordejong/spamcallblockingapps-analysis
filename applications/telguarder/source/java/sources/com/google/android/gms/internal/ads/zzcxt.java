package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxt.class */
public final class zzcxt extends zzxg {
    private final zzcyy zzgxs;

    public zzcxt(Context context, zzbgc zzbgcVar, zzdnr zzdnrVar, zzcco zzccoVar, zzwx zzwxVar) {
        zzcza zzczaVar = new zzcza(zzccoVar, zzbgcVar.zzaez());
        zzczaVar.zzd(zzwxVar);
        this.zzgxs = new zzcyy(new zzczg(zzbgcVar, context, zzczaVar, zzdnrVar), zzdnrVar.zzavf());
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final String getMediationAdapterClassName() {
        String mediationAdapterClassName;
        synchronized (this) {
            mediationAdapterClassName = this.zzgxs.getMediationAdapterClassName();
        }
        return mediationAdapterClassName;
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final boolean isLoading() throws RemoteException {
        boolean isLoading;
        synchronized (this) {
            isLoading = this.zzgxs.isLoading();
        }
        return isLoading;
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final void zza(zzvl zzvlVar, int i) throws RemoteException {
        synchronized (this) {
            this.zzgxs.zza(zzvlVar, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final void zzb(zzvl zzvlVar) throws RemoteException {
        this.zzgxs.zza(zzvlVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final String zzkh() {
        String zzkh;
        synchronized (this) {
            zzkh = this.zzgxs.zzkh();
        }
        return zzkh;
    }
}
