package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjx.class */
public final class zzdjx implements zzgla<Set<zzdih<zzdkq>>> {
    private final zzgln<zzdkq> zza;

    public zzdjx(zzgln<zzdkq> zzglnVar) {
        this.zza = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdih(this.zza.zzb(), zzchg.zzf));
        zzgli.zzb(singleton);
        return singleton;
    }
}
