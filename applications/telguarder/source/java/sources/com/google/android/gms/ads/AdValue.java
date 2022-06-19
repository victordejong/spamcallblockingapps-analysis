package com.google.android.gms.ads;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdValue.class */
public final class AdValue {
    private final int zzadc;
    private final String zzadd;
    private final long zzade;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdValue$PrecisionType.class */
    public @interface PrecisionType {
        public static final int ESTIMATED = 1;
        public static final int PRECISE = 3;
        public static final int PUBLISHER_PROVIDED = 2;
        public static final int UNKNOWN = 0;
    }

    private AdValue(int i, String str, long j) {
        this.zzadc = i;
        this.zzadd = str;
        this.zzade = j;
    }

    public static AdValue zza(int i, String str, long j) {
        return new AdValue(i, str, j);
    }

    public final String getCurrencyCode() {
        return this.zzadd;
    }

    public final int getPrecisionType() {
        return this.zzadc;
    }

    public final long getValueMicros() {
        return this.zzade;
    }
}
