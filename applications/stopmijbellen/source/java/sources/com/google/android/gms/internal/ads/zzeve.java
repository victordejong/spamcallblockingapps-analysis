package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeve.class */
public final class zzeve implements zzgpr<zzevc> {
    private final zzgqe<zzfxb> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzcjf> zzc;

    public zzeve(zzgqe<zzfxb> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<zzcjf> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzevc(zzfxbVar, ((zzffh) this.zzb).zza(), ((zzcrb) this.zzc).zza());
    }
}
