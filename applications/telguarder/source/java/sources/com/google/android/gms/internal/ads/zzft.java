package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzft.class */
public final class zzft extends zzgn {
    private long startTime;

    public zzft(zzfc zzfcVar, String str, String str2, zzcf.zza.zzb zzbVar, long j, int i, int i2) {
        super(zzfcVar, str, str2, zzbVar, i, 25);
        this.startTime = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    protected final void zzcw() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.zzabl.invoke(null, new Object[0])).longValue();
        synchronized (this.zzabb) {
            this.zzabb.zzbr(longValue);
            if (this.startTime != 0) {
                this.zzabb.zzat(longValue - this.startTime);
                this.zzabb.zzaw(this.startTime);
            }
        }
    }
}
