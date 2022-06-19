package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcd.class */
public enum zzcd implements zzelg {
    ENUM_SIGNAL_SOURCE_UNKNOWN(0),
    ENUM_SIGNAL_SOURCE_DISABLE(1),
    ENUM_SIGNAL_SOURCE_ADSHIELD(2),
    ENUM_SIGNAL_SOURCE_GASS(3),
    ENUM_SIGNAL_SOURCE_CALLER_PROVIDED(4);
    
    private static final zzelf<zzcd> zzes = new zzelf<zzcd>() { // from class: com.google.android.gms.internal.ads.zzcc
    };
    private final int value;

    zzcd(int i) {
        this.value = i;
    }

    public static zzcd zzj(int i) {
        if (i != 0) {
            if (i == 1) {
                return ENUM_SIGNAL_SOURCE_DISABLE;
            }
            if (i == 2) {
                return ENUM_SIGNAL_SOURCE_ADSHIELD;
            }
            if (i == 3) {
                return ENUM_SIGNAL_SOURCE_GASS;
            }
            if (i == 4) {
                return ENUM_SIGNAL_SOURCE_CALLER_PROVIDED;
            }
            return null;
        }
        return ENUM_SIGNAL_SOURCE_UNKNOWN;
    }

    public static zzeli zzw() {
        return zzce.zzeu;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final int zzv() {
        return this.value;
    }
}
