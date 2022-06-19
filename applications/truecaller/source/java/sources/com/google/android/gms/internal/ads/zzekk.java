package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekk.class */
public final class zzekk implements zzgla<zzekj> {
    private final zzgln<Context> zza;
    private final zzgln<zzbfa> zzb;
    private final zzgln<zzfar> zzc;
    private final zzgln<zzcvh> zzd;

    public zzekk(zzgln<Context> zzglnVar, zzgln<zzbfa> zzglnVar2, zzgln<zzfar> zzglnVar3, zzgln<zzcvh> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzekj(this.zza.zzb(), ((zzdkx) this.zzb).zza(), ((zzdat) this.zzc).zza(), ((zzcvt) this.zzd).zza());
    }
}
