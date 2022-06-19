package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeha.class */
public final class zzeha extends zzbxg {
    public final /* synthetic */ zzehc zza;
    private final zzeef<zzbxn, zzefy> zzb;

    public /* synthetic */ zzeha(zzehc zzehcVar, zzeef zzeefVar, zzehb zzehbVar) {
        this.zza = zzehcVar;
        this.zzb = zzeefVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final void zze(zzbvv zzbvvVar) throws RemoteException {
        this.zza.zzc = zzbvvVar;
        this.zzb.zzc.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final void zzf(String str) throws RemoteException {
        this.zzb.zzc.zzw(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final void zzg(zzbcz zzbczVar) throws RemoteException {
        this.zzb.zzc.zzx(zzbczVar);
    }
}
