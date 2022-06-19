package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeaj.class */
public final class zzeaj extends zzbgw {
    public final /* synthetic */ zzead zza;
    public final /* synthetic */ zzeak zzb;

    public zzeaj(zzeak zzeakVar, zzead zzeadVar) {
        this.zzb = zzeakVar;
        this.zza = zzeadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzc() throws RemoteException {
        long j;
        zzead zzeadVar = this.zza;
        j = this.zzb.zza;
        zzeadVar.zzb(j);
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzd() throws RemoteException {
        long j;
        zzead zzeadVar = this.zza;
        j = this.zzb.zza;
        zzeadVar.zzc(j);
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zze(int i) throws RemoteException {
        long j;
        zzead zzeadVar = this.zza;
        j = this.zzb.zza;
        zzeadVar.zzd(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzf(zzbew zzbewVar) throws RemoteException {
        long j;
        zzead zzeadVar = this.zza;
        j = this.zzb.zza;
        zzeadVar.zzd(j, zzbewVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzg() {
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzi() throws RemoteException {
        long j;
        zzead zzeadVar = this.zza;
        j = this.zzb.zza;
        zzeadVar.zze(j);
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzj() throws RemoteException {
        long j;
        zzead zzeadVar = this.zza;
        j = this.zzb.zza;
        zzeadVar.zzg(j);
    }
}
