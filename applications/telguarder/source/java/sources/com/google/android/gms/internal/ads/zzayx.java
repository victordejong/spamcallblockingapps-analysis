package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import java.math.BigInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayx.class */
public final class zzayx {
    private BigInteger zzedj = BigInteger.ONE;
    private String zzdug = AppEventsConstants.EVENT_PARAM_VALUE_NO;

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
