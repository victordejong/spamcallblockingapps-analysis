package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwp.class */
public final class zzdwp implements zzgla<zzdwo> {
    private final zzgln<zzdwr> zza;
    private final zzgln<zzdwm> zzb;

    public zzdwp(zzgln<zzdwr> zzglnVar, zzgln<zzdwm> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdwo(this.zza.zzb(), ((zzdwn) this.zzb).zzb());
    }
}
