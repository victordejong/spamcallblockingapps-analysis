package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezr.class */
public final class zzezr implements zzgla<zzezq> {
    private final zzgln<String> zza;
    private final zzgln<zzezm> zzb;
    private final zzgln<Context> zzc;
    private final zzgln<zzezc> zzd;
    private final zzgln<zzfam> zze;

    public zzezr(zzgln<String> zzglnVar, zzgln<zzezm> zzglnVar2, zzgln<Context> zzglnVar3, zzgln<zzezc> zzglnVar4, zzgln<zzfam> zzglnVar5) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
        this.zze = zzglnVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzezq(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb());
    }
}
