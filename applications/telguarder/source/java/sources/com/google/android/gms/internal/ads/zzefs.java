package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefs.class */
public enum zzefs implements zzelg {
    UNKNOWN_CURVE(0),
    NIST_P256(2),
    NIST_P384(3),
    NIST_P521(4),
    CURVE25519(5),
    UNRECOGNIZED(-1);
    
    private static final zzelf<zzefs> zzes = new zzelf<zzefs>() { // from class: com.google.android.gms.internal.ads.zzefu
    };
    private final int value;

    zzefs(int i) {
        this.value = i;
    }

    public static zzefs zzfg(int i) {
        if (i != 0) {
            if (i == 2) {
                return NIST_P256;
            }
            if (i == 3) {
                return NIST_P384;
            }
            if (i == 4) {
                return NIST_P521;
            }
            if (i == 5) {
                return CURVE25519;
            }
            return null;
        }
        return UNKNOWN_CURVE;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder(SimpleComparison.LESS_THAN_OPERATION);
        sb.append(getClass().getName());
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(zzv());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final int zzv() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
