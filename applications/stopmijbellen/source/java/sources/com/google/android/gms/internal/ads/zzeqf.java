package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqf.class */
public final class zzeqf implements zzgpr<zzeqe> {
    private final zzgqe<zzfxa<String>> zza;
    private final zzgqe<Executor> zzb;

    public zzeqf(zzgqe<zzfxa<String>> zzgqeVar, zzgqe<Executor> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfxa<String> zzb = this.zza.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzeqe(zzb, zzfxbVar);
    }
}
