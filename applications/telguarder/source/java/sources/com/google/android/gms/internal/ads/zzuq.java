package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzuq.class */
public enum zzuq implements zzelg {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_UNKNOWN(1000);
    
    private static final zzelf<zzuq> zzes = new zzelf<zzuq>() { // from class: com.google.android.gms.internal.ads.zzup
    };
    private final int value;

    zzuq(int i) {
        this.value = i;
    }

    public static zzuq zzcd(int i) {
        if (i != 0) {
            if (i == 1) {
                return ENUM_TRUE;
            }
            if (i == 1000) {
                return ENUM_UNKNOWN;
            }
            return null;
        }
        return ENUM_FALSE;
    }

    public static zzeli zzw() {
        return zzur.zzeu;
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
