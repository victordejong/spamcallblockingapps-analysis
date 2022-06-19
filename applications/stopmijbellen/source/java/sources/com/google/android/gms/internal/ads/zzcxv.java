package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxv.class */
public final class zzcxv implements zzgpr<Set<zzdlw<zzdgf>>> {
    private final zzcxt zza;
    private final zzgqe<zzdan> zzb;

    public zzcxv(zzcxt zzcxtVar, zzgqe<zzdan> zzgqeVar) {
        this.zza = zzcxtVar;
        this.zzb = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdlw(this.zzb.zzb(), zzcjm.zzf));
        zzgpz.zzb(singleton);
        return singleton;
    }
}
