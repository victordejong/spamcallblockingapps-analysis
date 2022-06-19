package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewn.class */
public final class zzewn implements zzgpr<zzewl> {
    private final zzgqe<zzcds> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<String> zzc;
    private final zzgqe<zzfxb> zzd;

    public zzewn(zzgqe<zzcds> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<String> zzgqeVar3, zzgqe<zzfxb> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzcqr) this.zzb).zza();
        String zza2 = ((zzexn) this.zzc).zza();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzewl(null, zza, zza2, zzfxbVar);
    }
}
