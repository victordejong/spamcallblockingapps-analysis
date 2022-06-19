package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzemj.class */
final class zzemj extends zzceq {
    public final /* synthetic */ zzdgx zza;
    public final /* synthetic */ zzdep zzb;
    public final /* synthetic */ zzdfy zzc;
    public final /* synthetic */ zzdmm zzd;

    public zzemj(zzemk zzemkVar, zzdgx zzdgxVar, zzdep zzdepVar, zzdfy zzdfyVar, zzdmm zzdmmVar) {
        this.zza = zzdgxVar;
        this.zzb = zzdepVar;
        this.zzc = zzdfyVar;
        this.zzd = zzdmmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zze(IObjectWrapper iObjectWrapper) {
        this.zzb.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzf(IObjectWrapper iObjectWrapper) {
        this.zza.zzf(4);
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzg(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzh(IObjectWrapper iObjectWrapper) {
        this.zzc.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzi(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzj(IObjectWrapper iObjectWrapper) {
        this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzk(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzl(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzm(IObjectWrapper iObjectWrapper, zzces zzcesVar) {
        this.zzd.zza(zzcesVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zzc.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzo(IObjectWrapper iObjectWrapper) {
        this.zzd.zzc();
    }
}
