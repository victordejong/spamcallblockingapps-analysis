package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeny.class */
public final class zzeny implements zzgla<zzenw> {
    private final zzgln<zzfsn> zza;
    private final zzgln<Context> zzb;

    public zzeny(zzgln<zzfsn> zzglnVar, zzgln<Context> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzenw(zzfsnVar, ((zzfbv) this.zzb).zza());
    }
}
