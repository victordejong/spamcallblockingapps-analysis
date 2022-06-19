package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddm.class */
public final class zzddm implements zzgla<zzddl> {
    private final zzgln<Set<zzdih<zzddn>>> zza;
    private final zzgln<zzezz> zzb;

    public zzddm(zzgln<Set<zzdih<zzddn>>> zzglnVar, zzgln<zzezz> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzddl(((zzgll) this.zza).zzb(), ((zzcxw) this.zzb).zza());
    }
}
