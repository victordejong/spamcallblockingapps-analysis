package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeks.class */
final class zzeks extends zzbzh {
    public final /* synthetic */ zzekt zza;
    private final zzehw<zzbzo, zzejp> zzb;

    public /* synthetic */ zzeks(zzekt zzektVar, zzehw zzehwVar, zzekr zzekrVar) {
        this.zza = zzektVar;
        this.zzb = zzehwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzi
    public final void zze(String str) throws RemoteException {
        this.zzb.zzc.zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbzi
    public final void zzf(zzbew zzbewVar) throws RemoteException {
        this.zzb.zzc.zzh(zzbewVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbzi
    public final void zzg(zzbxw zzbxwVar) throws RemoteException {
        this.zza.zzc = zzbxwVar;
        this.zzb.zzc.zzo();
    }
}
