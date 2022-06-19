package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.lang.Exception;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzei.class */
public final class zzei<T extends Exception> {
    private T zza;
    private long zzb;

    public zzei(long j) {
    }

    public final void zza(T t) throws Exception {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zza == null) {
            this.zza = t;
            this.zzb = 100 + elapsedRealtime;
        }
        if (elapsedRealtime >= this.zzb) {
            T t2 = this.zza;
            if (t2 != t) {
                zzged.zza(t2, t);
            }
            T t3 = this.zza;
            this.zza = null;
            throw t3;
        }
    }

    public final void zzb() {
        this.zza = null;
    }
}
