package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzesy.class */
public final class zzesy implements zzgla<zzesw> {
    private final zzgln<zzcbl> zza;
    private final zzgln<Context> zzb;
    private final zzgln<String> zzc;
    private final zzgln<zzfsn> zzd;

    public zzesy(zzgln<zzcbl> zzglnVar, zzgln<Context> zzglnVar2, zzgln<String> zzglnVar3, zzgln<zzfsn> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzcoo) this.zzb).zza();
        String zza2 = ((zzety) this.zzc).zza();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzesw(null, zza, zza2, zzfsnVar);
    }
}
