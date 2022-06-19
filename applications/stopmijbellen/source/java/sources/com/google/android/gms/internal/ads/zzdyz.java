package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyz.class */
public final class zzdyz {
    private final zzdze zza;
    private final Executor zzb;
    private final Map<String, String> zzc;

    public zzdyz(zzdze zzdzeVar, Executor executor) {
        this.zza = zzdzeVar;
        this.zzc = zzdzeVar.zza();
        this.zzb = executor;
    }

    public final zzdyy zza() {
        zzdyy zzdyyVar = new zzdyy(this);
        zzdyy.zza(zzdyyVar);
        return zzdyyVar;
    }
}
