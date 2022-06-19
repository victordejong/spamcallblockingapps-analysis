package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcq.class */
public enum zzcq implements zzelg {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_FAILURE(2),
    ENUM_UNKNOWN(1000);
    
    private static final zzelf<zzcq> zzes = new zzelf<zzcq>() { // from class: com.google.android.gms.internal.ads.zzcp
    };
    private final int value;

    zzcq(int i) {
        this.value = i;
    }

    public static zzcq zzn(int i) {
        if (i != 0) {
            if (i == 1) {
                return ENUM_TRUE;
            }
            if (i == 2) {
                return ENUM_FAILURE;
            }
            if (i == 1000) {
                return ENUM_UNKNOWN;
            }
            return null;
        }
        return ENUM_FALSE;
    }

    public static zzeli zzw() {
        return zzcs.zzeu;
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
