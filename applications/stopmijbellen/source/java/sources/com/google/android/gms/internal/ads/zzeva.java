package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeva.class */
public final class zzeva implements zzgpr<zzeuy> {
    private final zzgqe<zzchh> zza;
    private final zzgqe<zzfxb> zzb;
    private final zzgqe<Context> zzc;

    public zzeva(zzgqe<zzchh> zzgqeVar, zzgqe<zzfxb> zzgqeVar2, zzgqe<Context> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzchh zzb = this.zza.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzeuy(zzb, zzfxbVar, ((zzffh) this.zzc).zza());
    }
}
