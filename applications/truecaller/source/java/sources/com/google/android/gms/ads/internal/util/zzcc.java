package com.google.android.gms.ads.internal.util;

import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzcc.class */
public final class zzcc {
    private long zza;
    private long zzb = Long.MIN_VALUE;
    private final Object zzc = new Object();

    public zzcc(long j) {
        this.zza = j;
    }

    public final boolean zza() {
        synchronized (this.zzc) {
            long mo38789a = zzt.zzj().mo38789a();
            if (this.zzb + this.zza > mo38789a) {
                return false;
            }
            this.zzb = mo38789a;
            return true;
        }
    }

    public final void zzb(long j) {
        synchronized (this.zzc) {
            this.zza = j;
        }
    }
}
