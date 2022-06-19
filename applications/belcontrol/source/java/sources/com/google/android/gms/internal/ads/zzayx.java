package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayx.class */
public final class zzayx {
    @GuardedBy("this")
    private BigInteger zzedj = BigInteger.ONE;
    @GuardedBy("this")
    private String zzdug = "0";

    public final String zzyc() {
        String bigInteger;
        synchronized (this) {
            bigInteger = this.zzedj.toString();
            this.zzedj = this.zzedj.add(BigInteger.ONE);
            this.zzdug = bigInteger;
        }
        return bigInteger;
    }

    public final String zzyd() {
        String str;
        synchronized (this) {
            str = this.zzdug;
        }
        return str;
    }
}
