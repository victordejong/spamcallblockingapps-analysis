package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchn.class */
public final class zzchn implements zzgpr<zzchm> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzcgk> zzb;

    public zzchn(zzgqe<Context> zzgqeVar, zzgqe<zzcgk> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzchm(this.zza.zzb(), ((zzcgl) this.zzb).zzb());
    }
}
