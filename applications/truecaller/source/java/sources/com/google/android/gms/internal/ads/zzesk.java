package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzesk.class */
public final class zzesk implements zzgla<zzesj> {
    private final zzgln<zzfsn> zza;
    private final zzgln<Context> zzb;

    public zzesk(zzgln<zzfsn> zzglnVar, zzgln<Context> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzesj(zzfsnVar, ((zzfbv) this.zzb).zza());
    }
}
