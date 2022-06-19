package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzezs.class */
public final class zzezs implements zzgpr<zzezr> {
    private final zzgqe<zzcqm> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<String> zzc;
    private final zzgqe<zzezl> zzd;
    private final zzgqe<zzezj> zze;

    public zzezs(zzgqe<zzcqm> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<String> zzgqeVar3, zzgqe<zzezl> zzgqeVar4, zzgqe<zzezj> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzezr(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb());
    }
}
