package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekd.class */
final class zzekd extends zzbze {
    private final zzehw<zzbzo, zzejp> zza;

    public /* synthetic */ zzekd(zzeke zzekeVar, zzehw zzehwVar, zzekc zzekcVar) {
        this.zza = zzehwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzf
    public final void zze(String str) throws RemoteException {
        this.zza.zzc.zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbzf
    public final void zzf(zzbew zzbewVar) throws RemoteException {
        this.zza.zzc.zzh(zzbewVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbzf
    public final void zzg() throws RemoteException {
        this.zza.zzc.zzo();
    }
}
