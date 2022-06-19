package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehi.class */
public final class zzehi implements zzgpr<zzehh> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzfxb> zzb;

    public zzehi(zzgqe<Context> zzgqeVar, zzgqe<zzfxb> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzcqr) this.zza).zza();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzehh(zza, zzfxbVar);
    }
}
