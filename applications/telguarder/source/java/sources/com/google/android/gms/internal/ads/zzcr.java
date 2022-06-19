package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcr.class */
public enum zzcr implements zzelg {
    UNKNOWN_PROTO(0),
    AFMA_SIGNALS(1),
    UNITY_SIGNALS(2),
    PARTNER_SIGNALS(3);
    
    private static final zzelf<zzcr> zzes = new zzelf<zzcr>() { // from class: com.google.android.gms.internal.ads.zzcu
    };
    private final int value;

    zzcr(int i) {
        this.value = i;
    }

    public static zzcr zzo(int i) {
        if (i != 0) {
            if (i == 1) {
                return AFMA_SIGNALS;
            }
            if (i == 2) {
                return UNITY_SIGNALS;
            }
            if (i == 3) {
                return PARTNER_SIGNALS;
            }
            return null;
        }
        return UNKNOWN_PROTO;
    }

    public static zzeli zzw() {
        return zzct.zzeu;
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
