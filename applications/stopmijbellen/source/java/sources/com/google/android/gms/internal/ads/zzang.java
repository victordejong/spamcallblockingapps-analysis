package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzang.class */
public final class zzang extends zzaoa {
    private final long zzi;

    public zzang(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, long j, int i, int i2) {
        super(zzamsVar, "llxemQySqp4ImE2+K1SCPJZsWjXNCqydynC9yBT/03FiPJ85o8JSvF0iMBwiw5vV", "Do3k5DuMuAsRGeDxKZVVE8+FSftLk9ZlBUPdFxDzrUE=", zzaizVar, i, 25);
        this.zzi = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.zzf.invoke(null, new Object[0])).longValue();
        synchronized (this.zze) {
            this.zze.zzr(longValue);
            long j = this.zzi;
            if (j != 0) {
                this.zze.zzO(longValue - j);
                this.zze.zzP(this.zzi);
            }
        }
    }
}
