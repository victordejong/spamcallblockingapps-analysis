package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdws.class */
public final class zzdws extends zzbez {
    public final /* synthetic */ zzdwm zza;
    public final /* synthetic */ zzdwt zzb;

    public zzdws(zzdwt zzdwtVar, zzdwm zzdwmVar) {
        this.zzb = zzdwtVar;
        this.zza = zzdwmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzb() throws RemoteException {
        long j;
        zzdwm zzdwmVar = this.zza;
        j = this.zzb.zza;
        zzdwmVar.zzi(j);
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzc(int i) throws RemoteException {
        long j;
        zzdwm zzdwmVar = this.zza;
        j = this.zzb.zza;
        zzdwmVar.zzf(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzd(zzbcz zzbczVar) throws RemoteException {
        long j;
        zzdwm zzdwmVar = this.zza;
        j = this.zzb.zza;
        zzdwmVar.zzf(j, zzbczVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzf() throws RemoteException {
        long j;
        zzdwm zzdwmVar = this.zza;
        j = this.zzb.zza;
        zzdwmVar.zze(j);
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzg() throws RemoteException {
        long j;
        zzdwm zzdwmVar = this.zza;
        j = this.zzb.zza;
        zzdwmVar.zzg(j);
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzh() throws RemoteException {
        long j;
        zzdwm zzdwmVar = this.zza;
        j = this.zzb.zza;
        zzdwmVar.zzh(j);
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzi() {
    }
}
