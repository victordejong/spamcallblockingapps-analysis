package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqo.class */
public final class zzeqo implements zzgla<zzeqm> {
    private final zzgln<zzfsn> zza;
    private final zzgln<Bundle> zzb;

    public zzeqo(zzgln<zzfsn> zzglnVar, zzgln<Bundle> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzeqm(zzfsnVar, ((zzdaq) this.zzb).zza());
    }
}
