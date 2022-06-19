package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcts.class */
public final class zzcts implements zzgla<zzctl> {
    private final zzgln<zzavz> zza;
    private final zzgln<zzbup> zzb;
    private final zzgln<Executor> zzc;

    public zzcts(zzgln<zzavz> zzglnVar, zzgln<zzbup> zzglnVar2, zzgln<Executor> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzavz zzb = this.zza.zzb();
        zzbup zzb2 = this.zzb.zzb();
        zzfsn zza = zzfdg.zza();
        zzgli.zzb(zza);
        return new zzctl(zzb.zzd(), zzb2, zza);
    }
}
