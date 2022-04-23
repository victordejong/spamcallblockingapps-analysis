package com.google.android.gms.ads.internal.util;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbp.class */
public final class zzbp {
    private long zzeiu;
    private long zzeiv = Long.MIN_VALUE;
    private final Object lock = new Object();

    public zzbp(long j) {
        this.zzeiu = j;
    }

    public final boolean tryAcquire() {
        synchronized (this.lock) {
            long b2 = zzr.zzlc().b();
            if (this.zzeiv + this.zzeiu > b2) {
                return false;
            }
            this.zzeiv = b2;
            return true;
        }
    }

    public final void zzfc(long j) {
        synchronized (this.lock) {
            this.zzeiu = j;
        }
    }
}
