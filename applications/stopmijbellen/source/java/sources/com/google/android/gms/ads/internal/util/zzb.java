package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzcjm;
import com.google.android.gms.internal.ads.zzfxa;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzb.class */
public abstract class zzb {
    private final Runnable zza = new zza(this);
    private volatile Thread zzb;

    public abstract void zza();

    public zzfxa<?> zzb() {
        return zzcjm.zza.zza(this.zza);
    }
}
