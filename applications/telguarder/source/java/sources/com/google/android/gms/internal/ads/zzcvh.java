package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcvh.class */
final class zzcvh extends zzapi {
    private zzcrl<zzapk, zzctd> zzgtu;

    /* JADX INFO: Access modifiers changed from: private */
    public zzcvh(zzcvf zzcvfVar, zzcrl<zzapk, zzctd> zzcrlVar) {
        this.zzgtu = zzcrlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapj
    public final void zzdl(String str) throws RemoteException {
        this.zzgtu.zzgsu.zzc(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzapj
    public final void zzg(zzvg zzvgVar) throws RemoteException {
        this.zzgtu.zzgsu.zzd(zzvgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzapj
    public final void zzvn() throws RemoteException {
        this.zzgtu.zzgsu.onAdLoaded();
    }
}
