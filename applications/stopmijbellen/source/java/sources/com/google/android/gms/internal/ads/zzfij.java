package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfij.class */
public final class zzfij implements zzgpr<zzbwh> {
    private final zzfii zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<zzcjf> zzc;

    public zzfij(zzfii zzfiiVar, zzgqe<Context> zzgqeVar, zzgqe<zzcjf> zzgqeVar2) {
        this.zza = zzfiiVar;
        this.zzb = zzgqeVar;
        this.zzc = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbwh zza = new zzbvy().zza(((zzcqr) this.zzb).zza(), ((zzcrb) this.zzc).zza());
        zzgpz.zzb(zza);
        return zza;
    }
}
