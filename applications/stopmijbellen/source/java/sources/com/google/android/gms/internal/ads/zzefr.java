package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefr.class */
public final class zzefr implements zzdhm, zzdgf, zzdeu, zzdhq {
    private final zzfin zza;
    private final zzfio zzb;
    private final zzcio zzc;

    public zzefr(zzfin zzfinVar, zzfio zzfioVar, zzcio zzcioVar) {
        this.zza = zzfinVar;
        this.zzb = zzfioVar;
        this.zzc = zzcioVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdeu
    public final void zza(zzbew zzbewVar) {
        zzfin zzfinVar = this.zza;
        zzfinVar.zza("action", "ftl");
        zzfinVar.zza("ftl", String.valueOf(zzbewVar.zza));
        zzfinVar.zza("ed", zzbewVar.zzc);
        this.zzb.zzb(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdhq
    public final void zzbM(boolean z) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfs)).booleanValue()) {
            this.zza.zza("scar", "true");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zzd(zzcdq zzcdqVar) {
        this.zza.zzi(zzcdqVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zze(zzfdz zzfdzVar) {
        this.zza.zzh(zzfdzVar, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        zzfio zzfioVar = this.zzb;
        zzfin zzfinVar = this.zza;
        zzfinVar.zza("action", "loaded");
        zzfioVar.zzb(zzfinVar);
    }
}
