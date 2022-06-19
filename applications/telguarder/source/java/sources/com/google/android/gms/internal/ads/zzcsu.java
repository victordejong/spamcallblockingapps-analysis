package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsu.class */
final class zzcsu extends zzapb {
    private zzcrl<zzapk, zzctd> zzgtu;
    private final /* synthetic */ zzcsp zzgtv;

    /* JADX INFO: Access modifiers changed from: private */
    public zzcsu(zzcsp zzcspVar, zzcrl<zzapk, zzctd> zzcrlVar) {
        this.zzgtv = zzcspVar;
        this.zzgtu = zzcrlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaoy
    public final void zzdl(String str) throws RemoteException {
        this.zzgtu.zzgsu.zzc(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzaoy
    public final void zzg(zzvg zzvgVar) throws RemoteException {
        this.zzgtu.zzgsu.zzd(zzvgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaoy
    public final void zzx(IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zzgtv.view = (View) ObjectWrapper.unwrap(iObjectWrapper);
        this.zzgtu.zzgsu.onAdLoaded();
    }
}
