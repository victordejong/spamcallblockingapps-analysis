package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzday.class */
public final class zzday implements zzgla<zzcdy> {
    private final zzdax zza;
    private final zzgln<Context> zzb;
    private final zzgln<zzcgz> zzc;
    private final zzgln<zzezz> zzd;
    private final zzgln<zzcdu> zze;

    public zzday(zzdax zzdaxVar, zzgln<Context> zzglnVar, zzgln<zzcgz> zzglnVar2, zzgln<zzezz> zzglnVar3, zzgln<zzcdu> zzglnVar4) {
        this.zza = zzdaxVar;
        this.zzb = zzglnVar;
        this.zzc = zzglnVar2;
        this.zzd = zzglnVar3;
        this.zze = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zzb = this.zzb.zzb();
        zzcgz zza = ((zzcox) this.zzc).zza();
        zzezz zza2 = ((zzcxw) this.zzd).zza();
        zzcdu zzcduVar = new zzcdu();
        zzcdv zzcdvVar = zza2.zzA;
        if (zzcdvVar != null) {
            return new zzcds(zzb, zza, zzcdvVar, zza2.zzs.zzb, zzcduVar, null);
        }
        return null;
    }
}
