package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemp.class */
public final class zzemp implements zzery {
    private final zzfsm<String> zza;
    private final Executor zzb;

    public zzemp(zzfsm<String> zzfsmVar, Executor executor) {
        this.zza = zzfsmVar;
        this.zzb = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm zza() {
        return zzfsd.zzi(this.zza, zzemn.zza, this.zzb);
    }
}
