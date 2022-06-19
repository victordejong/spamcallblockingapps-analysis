package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzerl.class */
public final class zzerl implements zzgla<zzerj> {
    private final zzgln<zzcfa> zza;
    private final zzgln<zzfsn> zzb;
    private final zzgln<Context> zzc;

    public zzerl(zzgln<zzcfa> zzglnVar, zzgln<zzfsn> zzglnVar2, zzgln<Context> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcfa zzb = this.zza.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzerj(zzb, zzfsnVar, ((zzfbv) this.zzc).zza());
    }
}
