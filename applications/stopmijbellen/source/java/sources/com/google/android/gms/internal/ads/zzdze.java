package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdze.class */
public final class zzdze extends zzdzg {
    private final zzfix zzf;

    public zzdze(Executor executor, zzcje zzcjeVar, zzfix zzfixVar, zzfiz zzfizVar) {
        super(executor, zzcjeVar, zzfizVar);
        this.zzf = zzfixVar;
        zzfixVar.zza(this.zzb);
    }

    public final Map<String, String> zza() {
        return new HashMap(this.zzb);
    }
}
