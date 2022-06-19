package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdci.class */
public final class zzdci implements zzdgf, zzbes, zzdhm, zzdfl, zzder, zzdjy {
    private final Clock zza;
    private final zzcie zzb;

    public zzdci(Clock clock, zzcie zzcieVar) {
        this.zza = clock;
        this.zzb = zzcieVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        this.zzb.zzd();
    }

    public final String zza() {
        return this.zzb.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzdjy
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzbD() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjy
    public final void zzc(zzbbr zzbbrVar) {
        this.zzb.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zzd(zzcdq zzcdqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zze(zzfdz zzfdzVar) {
        this.zzb.zzk(this.zza.elapsedRealtime());
    }

    @Override // com.google.android.gms.internal.ads.zzdjy
    public final void zzf(zzbbr zzbbrVar) {
    }

    public final void zzg(zzbfd zzbfdVar) {
        this.zzb.zzj(zzbfdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdjy
    public final void zzh(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdjy
    public final void zzi(zzbbr zzbbrVar) {
        this.zzb.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzj() {
        this.zzb.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzdjy
    public final void zzk(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdfl
    public final void zzl() {
        this.zzb.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        this.zzb.zzh(true);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzo() {
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzp(zzceg zzcegVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzr() {
    }
}
