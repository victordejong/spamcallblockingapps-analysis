package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczn.class */
public final class zzczn implements zzgpr<Set<zzdlw<zzaya>>> {
    private final zzczd zza;
    private final zzgqe<zzdan> zzb;

    public zzczn(zzczd zzczdVar, zzgqe<zzdan> zzgqeVar) {
        this.zza = zzczdVar;
        this.zzb = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdlw(this.zzb.zzb(), zzcjm.zzf));
        zzgpz.zzb(singleton);
        return singleton;
    }
}
