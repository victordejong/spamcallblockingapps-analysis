package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcm.class */
public enum zzcm implements zzelg {
    UNKNOWN_ENCRYPTION_METHOD(0),
    BITSLICER(1),
    TINK_HYBRID(2),
    UNENCRYPTED(3),
    DG(4),
    DG_XTEA(5);
    
    private static final zzelf<zzcm> zzes = new zzelf<zzcm>() { // from class: com.google.android.gms.internal.ads.zzco
    };
    private final int value;

    zzcm(int i) {
        this.value = i;
    }

    public static zzcm zzm(int i) {
        if (i != 0) {
            if (i == 1) {
                return BITSLICER;
            }
            if (i == 2) {
                return TINK_HYBRID;
            }
            if (i == 3) {
                return UNENCRYPTED;
            }
            if (i == 4) {
                return DG;
            }
            if (i == 5) {
                return DG_XTEA;
            }
            return null;
        }
        return UNKNOWN_ENCRYPTION_METHOD;
    }

    public static zzeli zzw() {
        return zzcn.zzeu;
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
