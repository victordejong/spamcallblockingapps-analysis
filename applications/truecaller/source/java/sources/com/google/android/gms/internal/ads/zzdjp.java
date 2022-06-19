package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjp.class */
public final class zzdjp implements zzgla<Set<zzdih<zzdfx>>> {
    private final zzdjm zza;
    private final zzgln<zzdac> zzb;

    public zzdjp(zzdjm zzdjmVar, zzgln<zzdac> zzglnVar) {
        this.zza = zzdjmVar;
        this.zzb = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdih(this.zzb.zzb(), zzchg.zzf));
        zzgli.zzb(singleton);
        return singleton;
    }
}
