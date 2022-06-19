package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcuk.class */
final class zzcuk extends zzaph {
    private zzcrl<zzapk, zzctd> zzgtu;
    private final /* synthetic */ zzcui zzgux;

    /* JADX INFO: Access modifiers changed from: private */
    public zzcuk(zzcui zzcuiVar, zzcrl<zzapk, zzctd> zzcrlVar) {
        this.zzgux = zzcuiVar;
        this.zzgtu = zzcrlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final void zza(zzanx zzanxVar) throws RemoteException {
        this.zzgux.zzguw = zzanxVar;
        this.zzgtu.zzgsu.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final void zzdl(String str) throws RemoteException {
        this.zzgtu.zzgsu.zzc(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzape
    public final void zzg(zzvg zzvgVar) throws RemoteException {
        this.zzgtu.zzgsu.zzd(zzvgVar);
    }
}
