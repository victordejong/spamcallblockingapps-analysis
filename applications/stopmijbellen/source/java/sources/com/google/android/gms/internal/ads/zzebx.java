package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebx.class */
public final class zzebx implements zzgpr<zzeca> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzcjf> zzb;

    public zzebx(zzgqe<Context> zzgqeVar, zzgqe<zzcjf> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeca(((zzcqr) this.zza).zza(), ((zzcrb) this.zzb).zza());
    }
}
