package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcrl.class */
public final class zzcrl implements zzgla<zzcgy> {
    private final zzgln<zzbut> zza;
    private final zzgln<String> zzb;

    public zzcrl(zzgln<zzbut> zzglnVar, zzgln<String> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbuv zzbuvVar = new zzbuv();
        String zzb = this.zzb.zzb();
        return zzbkz.zza.zze().booleanValue() ? new zzbuu(zzbuvVar, zzb) : new zzcgy(zzb);
    }
}
