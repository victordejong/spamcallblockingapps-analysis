package com.google.android.gms.internal.ads;

import com.amazon.device.ads.DtbConstants;
import java.math.BigInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgg.class */
public final class zzcgg {
    private BigInteger zza = BigInteger.ONE;
    private String zzb = DtbConstants.NETWORK_TYPE_UNKNOWN;

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
