package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeoc.class */
public final class zzeoc extends zzbhc {
    private final zzepi zza;

    public zzeoc(Context context, zzcqm zzcqmVar, zzfed zzfedVar, zzdqn zzdqnVar, zzbgx zzbgxVar) {
        zzepk zzepkVar = new zzepk(zzdqnVar, zzcqmVar.zzz());
        zzepkVar.zze(zzbgxVar);
        this.zza = new zzepi(new zzepu(zzcqmVar, context, zzepkVar, zzfedVar), zzfedVar.zzH());
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final String zze() {
        String zza;
        synchronized (this) {
            zza = this.zza.zza();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final String zzf() {
        String zzb;
        synchronized (this) {
            zzb = this.zza.zzb();
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final void zzg(zzbfd zzbfdVar) throws RemoteException {
        this.zza.zzd(zzbfdVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final void zzh(zzbfd zzbfdVar, int i) throws RemoteException {
        synchronized (this) {
            this.zza.zzd(zzbfdVar, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final boolean zzi() throws RemoteException {
        boolean zze;
        synchronized (this) {
            zze = this.zza.zze();
        }
        return zze;
    }
}
