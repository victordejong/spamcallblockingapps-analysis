package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczk.class */
public final class zzczk implements zzgpr<Set<zzdlw<zzdgf>>> {
    private final zzczd zza;
    private final zzgqe<zzdan> zzb;

    public zzczk(zzczd zzczdVar, zzgqe<zzdan> zzgqeVar) {
        this.zza = zzczdVar;
        this.zzb = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set<zzdlw<zzdgf>> zzg = zzczd.zzg(this.zzb.zzb());
        zzgpz.zzb(zzg);
        return zzg;
    }
}
