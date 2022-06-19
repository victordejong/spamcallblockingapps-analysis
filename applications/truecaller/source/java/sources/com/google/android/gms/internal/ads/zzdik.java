package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdik.class */
public final class zzdik implements zzgla<zzdij> {
    private final zzgln<Context> zza;
    private final zzgln<Set<zzdih<zzawd>>> zzb;
    private final zzgln<zzezz> zzc;

    public zzdik(zzgln<Context> zzglnVar, zzgln<Set<zzdih<zzawd>>> zzglnVar2, zzgln<zzezz> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdij(this.zza.zzb(), ((zzgll) this.zzb).zzb(), ((zzcxw) this.zzc).zza());
    }
}
