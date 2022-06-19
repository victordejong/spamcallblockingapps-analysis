package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesm.class */
public final class zzesm implements zzgpr<zzesk> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzfxb> zzb;

    public zzesm(zzgqe<Context> zzgqeVar, zzgqe<zzfxb> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zzb = this.zza.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzesk(zzb, zzfxbVar);
    }
}
