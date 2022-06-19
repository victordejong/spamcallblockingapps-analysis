package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcug.class */
public final class zzcug implements zzgla<Set<zzdih<zzdcq>>> {
    private final zzcue zza;
    private final zzgln<zzcwy> zzb;

    public zzcug(zzcue zzcueVar, zzgln<zzcwy> zzglnVar) {
        this.zza = zzcueVar;
        this.zzb = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdih(this.zzb.zzb(), zzchg.zzf));
        zzgli.zzb(singleton);
        return singleton;
    }
}
