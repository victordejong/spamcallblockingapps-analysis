package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcyt.class */
public final class zzcyt implements zzdcq, zzbcv, zzddx, zzdbw, zzdbc, zzdgj {
    private final Clock zza;
    private final zzcfy zzb;

    public zzcyt(Clock clock, zzcfy zzcfyVar) {
        this.zza = clock;
        this.zzb = zzcfyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        this.zzb.zzg();
    }

    public final void zza(zzbdg zzbdgVar) {
        this.zzb.zzb(zzbdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzbG(zzcbj zzcbjVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzc(zzazu zzazuVar) {
        this.zzb.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzd(zzazu zzazuVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zze(zzazu zzazuVar) {
        this.zzb.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzdcq
    public final void zzf() {
        this.zzb.zzi(true);
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    public final void zzg() {
        this.zzb.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzi() {
        this.zzb.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzk(zzcbz zzcbzVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzl() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzn(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzo(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzp() {
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzq(zzfal zzfalVar) {
        this.zzb.zze(this.zza.mo38789a());
    }

    public final String zzr() {
        return this.zzb.zzk();
    }
}
