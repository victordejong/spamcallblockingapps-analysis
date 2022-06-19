package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.lang.Exception;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzml.class */
final class zzml<T extends Exception> {
    private T zza;
    private long zzb;

    public zzml(long j) {
    }

    public final void zza() {
        this.zza = null;
    }

    public final void zzb(T t) throws Exception {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zza == null) {
            this.zza = t;
            this.zzb = 100 + elapsedRealtime;
        }
        if (elapsedRealtime < this.zzb) {
            return;
        }
        T t2 = this.zza;
        this.zza = null;
        throw t2;
    }
}
