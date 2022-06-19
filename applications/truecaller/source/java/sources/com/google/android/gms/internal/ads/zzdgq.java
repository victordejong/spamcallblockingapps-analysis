package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgq.class */
public final class zzdgq implements zzgla<zzdbe> {
    private final zzdgp zza;
    private final zzgln<Set<zzdih<zzdbf>>> zzb;

    public zzdgq(zzdgp zzdgpVar, zzgln<Set<zzdih<zzdbf>>> zzglnVar) {
        this.zza = zzdgpVar;
        this.zzb = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdbe zzp = this.zza.zzp(((zzgll) this.zzb).zzb());
        zzgli.zzb(zzp);
        return zzp;
    }
}
