package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewx.class */
public final class zzewx implements zzgpr<zzewv> {
    private final zzgqe<zzban> zza;
    private final zzgqe<zzfxb> zzb;
    private final zzgqe<Context> zzc;

    public zzewx(zzgqe<zzban> zzgqeVar, zzgqe<zzfxb> zzgqeVar2, zzgqe<Context> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzban zzbanVar = new zzban();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzewv(zzbanVar, zzfxbVar, ((zzcqr) this.zzc).zza(), null);
    }
}
