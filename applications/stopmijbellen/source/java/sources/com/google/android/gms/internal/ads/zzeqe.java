package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqe.class */
public final class zzeqe implements zzevn {
    private final zzfxa<String> zza;
    private final Executor zzb;

    public zzeqe(zzfxa<String> zzfxaVar, Executor executor) {
        this.zza = zzfxaVar;
        this.zzb = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa zzb() {
        return zzfwq.zzn(this.zza, zzeqd.zza, this.zzb);
    }
}
