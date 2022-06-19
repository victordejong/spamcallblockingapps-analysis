package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzelt.class */
public final class zzelt implements zzgpr<zzels> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzdvs> zzb;

    public zzelt(zzgqe<Context> zzgqeVar, zzgqe<zzdvs> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzels zzb() {
        return new zzels(this.zza.zzb(), this.zzb.zzb());
    }
}
