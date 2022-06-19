package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwv.class */
public final class zzdwv extends zzccy {
    public final /* synthetic */ zzdwx zza;

    public zzdwv(zzdwx zzdwxVar) {
        this.zza = zzdwxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzccz
    public final void zze() throws RemoteException {
        zzdwm zzdwmVar;
        long j;
        zzdwmVar = this.zza.zzc;
        j = this.zza.zza;
        zzdwmVar.zzk(j);
    }

    @Override // com.google.android.gms.internal.ads.zzccz
    public final void zzf(int i) throws RemoteException {
        zzdwm zzdwmVar;
        long j;
        zzdwmVar = this.zza.zzc;
        j = this.zza.zza;
        zzdwmVar.zzl(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzccz
    public final void zzg(zzbcz zzbczVar) throws RemoteException {
        zzdwm zzdwmVar;
        long j;
        zzdwmVar = this.zza.zzc;
        j = this.zza.zza;
        zzdwmVar.zzl(j, zzbczVar.zza);
    }
}
