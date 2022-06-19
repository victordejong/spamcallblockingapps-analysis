package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfdf.class */
public final class zzfdf implements zzgpr<zzfde> {
    private final zzgqe<String> zza;
    private final zzgqe<zzfda> zzb;
    private final zzgqe<Context> zzc;
    private final zzgqe<zzfcq> zzd;
    private final zzgqe<zzfea> zze;

    public zzfdf(zzgqe<String> zzgqeVar, zzgqe<zzfda> zzgqeVar2, zzgqe<Context> zzgqeVar3, zzgqe<zzfcq> zzgqeVar4, zzgqe<zzfea> zzgqeVar5) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
        this.zze = zzgqeVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzfde(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb(), this.zzd.zzb(), this.zze.zzb());
    }
}
