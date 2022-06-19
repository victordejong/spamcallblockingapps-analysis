package com.google.android.gms.ads.internal.util;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbp.class */
public final class zzbp {
    private long zzegr;
    private long zzegs = Long.MIN_VALUE;
    private final Object lock = new Object();

    public zzbp(long j) {
        this.zzegr = j;
    }

    public final boolean tryAcquire() {
        synchronized (this.lock) {
            long elapsedRealtime = zzr.zzky().elapsedRealtime();
            if (this.zzegs + this.zzegr > elapsedRealtime) {
                return false;
            }
            this.zzegs = elapsedRealtime;
            return true;
        }
    }

    public final void zzfb(long j) {
        synchronized (this.lock) {
            this.zzegr = j;
        }
    }
}
