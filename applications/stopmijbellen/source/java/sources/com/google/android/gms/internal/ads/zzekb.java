package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekb.class */
public final class zzekb implements zzgpr<zzeka> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzcjf> zzb;
    private final zzgqe<zzdnt> zzc;
    private final zzgqe<Executor> zzd;

    public zzekb(zzgqe<Context> zzgqeVar, zzgqe<zzcjf> zzgqeVar2, zzgqe<zzdnt> zzgqeVar3, zzgqe<Executor> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zzb = this.zza.zzb();
        zzcjf zza = ((zzcrb) this.zzb).zza();
        zzdnt zzb2 = this.zzc.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzeka(zzb, zza, zzb2, zzfxbVar);
    }
}
