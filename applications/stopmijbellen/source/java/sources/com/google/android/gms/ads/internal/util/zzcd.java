package com.google.android.gms.ads.internal.util;

import com.google.android.gms.ads.internal.zzt;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzcd.class */
public final class zzcd {
    private long zza;
    @GuardedBy("lock")
    private long zzb = Long.MIN_VALUE;
    private final Object zzc = new Object();

    public zzcd(long j) {
        this.zza = j;
    }

    public final void zza(long j) {
        synchronized (this.zzc) {
            this.zza = j;
        }
    }

    public final boolean zzb() {
        synchronized (this.zzc) {
            long elapsedRealtime = zzt.zzA().elapsedRealtime();
            if (this.zzb + this.zza > elapsedRealtime) {
                return false;
            }
            this.zzb = elapsedRealtime;
            return true;
        }
    }
}
