package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzemv.class */
public class zzemv extends zzbxm {
    private final zzdep zza;
    private final zzdmb zzb;
    private final zzdfj zzc;
    private final zzdfy zzd;
    private final zzdgd zze;
    private final zzdjo zzf;
    private final zzdgx zzg;
    private final zzdmt zzh;
    private final zzdjk zzi;
    private final zzdfe zzj;

    public zzemv(zzdep zzdepVar, zzdmb zzdmbVar, zzdfj zzdfjVar, zzdfy zzdfyVar, zzdgd zzdgdVar, zzdjo zzdjoVar, zzdgx zzdgxVar, zzdmt zzdmtVar, zzdjk zzdjkVar, zzdfe zzdfeVar) {
        this.zza = zzdepVar;
        this.zzb = zzdmbVar;
        this.zzc = zzdfjVar;
        this.zzd = zzdfyVar;
        this.zze = zzdgdVar;
        this.zzf = zzdjoVar;
        this.zzg = zzdgxVar;
        this.zzh = zzdmtVar;
        this.zzi = zzdjkVar;
        this.zzj = zzdfeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zze() {
        this.zza.onAdClicked();
        this.zzb.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzf() {
        this.zzg.zzf(4);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzg(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzh(zzbew zzbewVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzi(int i, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    @Deprecated
    public final void zzj(int i) throws RemoteException {
        zzk(new zzbew(i, "", AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzk(zzbew zzbewVar) {
        this.zzj.zza(zzfey.zzc(8, zzbewVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzl(String str) {
        zzk(new zzbew(0, str, AdError.UNDEFINED_DOMAIN, null, null));
    }

    public void zzm() {
        this.zzc.zza();
        this.zzi.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzn() {
        this.zzd.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzo() {
        this.zze.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzp() {
        this.zzg.zzb();
        this.zzi.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzq(String str, String str2) {
        this.zzf.zzbL(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzr(zzbpc zzbpcVar, String str) {
    }

    public void zzs(zzces zzcesVar) {
    }

    public void zzt(zzcew zzcewVar) throws RemoteException {
    }

    public void zzu() throws RemoteException {
    }

    public void zzv() {
        this.zzh.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzw() {
        this.zzh.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzx() throws RemoteException {
        this.zzh.zzc();
    }

    public void zzy() {
        this.zzh.zzd();
    }
}
