package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeox.class */
public final class zzeox implements zzgla<zzeov> {
    private final zzgln<Context> zza;
    private final zzgln<zzfsn> zzb;

    public zzeox(zzgln<Context> zzglnVar, zzgln<zzfsn> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zzb = this.zza.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzeov(zzb, zzfsnVar);
    }
}
