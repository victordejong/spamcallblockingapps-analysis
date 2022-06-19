package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejf.class */
public final class zzejf implements zzgpr<zzeje> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzczt> zzb;

    public zzejf(zzgqe<Context> zzgqeVar, zzgqe<zzczt> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzeje zzb() {
        return new zzeje(this.zza.zzb(), this.zzb.zzb());
    }
}
