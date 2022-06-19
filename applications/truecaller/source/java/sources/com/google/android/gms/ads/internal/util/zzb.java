package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzchg;
import com.google.android.gms.internal.ads.zzfsm;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzb.class */
public abstract class zzb {
    private final Runnable zza = new zza(this);
    private volatile Thread zzb;

    public abstract void zza();

    public zzfsm<?> zzc() {
        return zzchg.zza.zza(this.zza);
    }
}
