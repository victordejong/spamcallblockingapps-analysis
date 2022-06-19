package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbz.class */
public enum bbz implements dnm {
    ENUM_SIGNAL_SOURCE_UNKNOWN(0),
    ENUM_SIGNAL_SOURCE_DISABLE(1),
    ENUM_SIGNAL_SOURCE_ADSHIELD(2),
    ENUM_SIGNAL_SOURCE_GASS(3),
    ENUM_SIGNAL_SOURCE_CALLER_PROVIDED(4);
    
    private static final dnl<bbz> zzes = new dnl<bbz>() { // from class: com.google.android.gms.internal.ads.bay
    };
    private final int value;

    bbz(int i) {
        this.value = i;
    }

    public static bbz zzj(int i) {
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

    public static dno zzw() {
        return bda.f43615a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.dnm
    public final int zzv() {
        return this.value;
    }
}
