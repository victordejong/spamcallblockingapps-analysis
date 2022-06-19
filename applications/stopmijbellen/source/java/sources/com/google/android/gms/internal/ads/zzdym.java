package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdym.class */
public final class zzdym implements zzdhm, zzdgf, zzdeu, zzdhq {
    private final zzdyv zza;
    private final zzdze zzb;

    public zzdym(zzdyv zzdyvVar, zzdze zzdzeVar) {
        this.zza = zzdyvVar;
        this.zzb = zzdzeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdeu
    public final void zza(zzbew zzbewVar) {
        this.zza.zza().put("action", "ftl");
        this.zza.zza().put("ftl", String.valueOf(zzbewVar.zza));
        this.zza.zza().put("ed", zzbewVar.zzc);
        this.zzb.zzc(this.zza.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzdhq
    public final void zzbM(boolean z) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfs)).booleanValue()) {
            this.zza.zza().put("scar", "true");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zzd(zzcdq zzcdqVar) {
        this.zza.zzc(zzcdqVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zze(zzfdz zzfdzVar) {
        this.zza.zzb(zzfdzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        this.zza.zza().put("action", "loaded");
        this.zzb.zzc(this.zza.zza());
    }
}
