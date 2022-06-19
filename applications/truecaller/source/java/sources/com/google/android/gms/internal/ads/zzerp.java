package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzerp.class */
public final class zzerp implements zzgla<zzern> {
    private final zzgln<zzfsn> zza;
    private final zzgln<Context> zzb;
    private final zzgln<zzcgz> zzc;

    public zzerp(zzgln<zzfsn> zzglnVar, zzgln<Context> zzglnVar2, zzgln<zzcgz> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzern(zzfsnVar, ((zzfbv) this.zzb).zza(), ((zzcox) this.zzc).zza());
    }
}
