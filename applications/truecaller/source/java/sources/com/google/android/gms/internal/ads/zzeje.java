package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeje.class */
public class zzeje extends zzbvl {
    private final zzdba zza;
    private final zzdim zzb;
    private final zzdbu zzc;
    private final zzdcj zzd;
    private final zzdco zze;
    private final zzdfz zzf;
    private final zzddi zzg;
    private final zzdjf zzh;
    private final zzdfv zzi;
    private final zzdbp zzj;

    public zzeje(zzdba zzdbaVar, zzdim zzdimVar, zzdbu zzdbuVar, zzdcj zzdcjVar, zzdco zzdcoVar, zzdfz zzdfzVar, zzddi zzddiVar, zzdjf zzdjfVar, zzdfv zzdfvVar, zzdbp zzdbpVar) {
        this.zza = zzdbaVar;
        this.zzb = zzdimVar;
        this.zzc = zzdbuVar;
        this.zzd = zzdcjVar;
        this.zze = zzdcoVar;
        this.zzf = zzdfzVar;
        this.zzg = zzddiVar;
        this.zzh = zzdjfVar;
        this.zzi = zzdfvVar;
        this.zzj = zzdbpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zze() {
        this.zza.onAdClicked();
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzf() {
        this.zzg.zzbs(4);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzg(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzh() {
        this.zzd.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzi() {
        this.zzg.zzbp();
        this.zzi.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzj() {
        this.zze.zzf();
    }

    public void zzk() {
        this.zzc.zza();
        this.zzi.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzl(String str, String str2) {
        this.zzf.zzbA(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzm(zzbnb zzbnbVar, String str) {
    }

    public void zzn() {
        this.zzh.zzb();
    }

    public void zzo() {
        this.zzh.zzc();
    }

    public void zzp(zzccl zzcclVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzq() {
        this.zzh.zza();
    }

    public void zzr(zzccp zzccpVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    @Deprecated
    public final void zzs(int i) throws RemoteException {
        zzy(new zzbcz(i, "", AdError.UNDEFINED_DOMAIN, null, null));
    }

    public void zzt() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzu() throws RemoteException {
        this.zzh.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzv(String str) {
        zzy(new zzbcz(0, str, AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzw(int i, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzx(zzbcz zzbczVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzy(zzbcz zzbczVar) {
        this.zzj.zza(zzfbm.zzc(8, zzbczVar));
    }
}
