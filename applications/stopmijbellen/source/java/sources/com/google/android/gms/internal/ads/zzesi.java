package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesi.class */
public final class zzesi implements zzgpr<zzesh> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzfxb> zzb;

    public zzesi(zzgqe<Context> zzgqeVar, zzgqe<zzfxb> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzffh) this.zza).zza();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzesh(zza, zzfxbVar);
    }
}
