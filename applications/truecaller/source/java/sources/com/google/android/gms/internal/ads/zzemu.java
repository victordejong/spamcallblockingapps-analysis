package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemu.class */
public final class zzemu implements zzgla<zzems> {
    private final zzgln<zzeoh<zzesd>> zza;
    private final zzgln<zzfar> zzb;
    private final zzgln<Context> zzc;
    private final zzgln<zzcge> zzd;

    public zzemu(zzgln<zzeoh<zzesd>> zzglnVar, zzgln<zzfar> zzglnVar2, zzgln<Context> zzglnVar3, zzgln<zzcge> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzems(this.zza.zzb(), ((zzdat) this.zzb).zza(), ((zzfbv) this.zzc).zza(), this.zzd.zzb());
    }
}
