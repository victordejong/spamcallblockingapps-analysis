package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcim.class */
public final class zzcim {
    @GuardedBy("this")
    private BigInteger zza = BigInteger.ONE;
    @GuardedBy("this")
    private String zzb = "0";

    public final String zza() {
        String bigInteger;
        synchronized (this) {
            bigInteger = this.zza.toString();
            this.zza = this.zza.add(BigInteger.ONE);
            this.zzb = bigInteger;
        }
        return bigInteger;
    }

    public final String zzb() {
        String str;
        synchronized (this) {
            str = this.zzb;
        }
        return str;
    }
}
