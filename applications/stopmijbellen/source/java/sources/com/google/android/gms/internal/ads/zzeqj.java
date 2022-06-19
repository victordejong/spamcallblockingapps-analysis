package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqj.class */
public final class zzeqj implements zzgpr<zzeqh> {
    private final zzgqe<zzerw<zzevs>> zza;
    private final zzgqe<zzfef> zzb;
    private final zzgqe<Context> zzc;
    private final zzgqe<zzcik> zzd;

    public zzeqj(zzgqe<zzerw<zzevs>> zzgqeVar, zzgqe<zzfef> zzgqeVar2, zzgqe<Context> zzgqeVar3, zzgqe<zzcik> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeqh(this.zza.zzb(), ((zzdei) this.zzb).zza(), ((zzffh) this.zzc).zza(), this.zzd.zzb());
    }
}
