package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcvy.class */
public final class zzcvy implements zzgla<Set<zzdih<zzawd>>> {
    private final zzcvo zza;
    private final zzgln<zzcwy> zzb;

    public zzcvy(zzcvo zzcvoVar, zzgln<zzcwy> zzglnVar) {
        this.zza = zzcvoVar;
        this.zzb = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdih(this.zzb.zzb(), zzchg.zzf));
        zzgli.zzb(singleton);
        return singleton;
    }
}
