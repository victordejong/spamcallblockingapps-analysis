package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzerw.class */
public final class zzerw implements zzgla<zzerv> {
    private final zzgln<zzfsn> zza;
    private final zzgln<Context> zzb;

    public zzerw(zzgln<zzfsn> zzglnVar, zzgln<Context> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzerv(zzfsnVar, ((zzfbv) this.zzb).zza());
    }
}
