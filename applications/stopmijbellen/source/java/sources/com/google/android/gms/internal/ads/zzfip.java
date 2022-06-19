package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfip.class */
public final class zzfip implements zzgpr<zzfjg> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzcjf> zzb;
    private final zzgqe<zzefm> zzc;
    private final zzgqe<zzcec> zzd;

    public zzfip(zzgqe<Context> zzgqeVar, zzgqe<zzcjf> zzgqeVar2, zzgqe<zzefm> zzgqeVar3, zzgqe<zzcec> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        return new zzfjg(((zzcqr) this.zza).zza(), ((zzcrb) this.zzb).zza(), new zzefm(), new zzcec(), null);
    }
}
