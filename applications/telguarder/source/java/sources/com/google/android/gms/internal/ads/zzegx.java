package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegx.class */
public enum zzegx implements zzelg {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    UNRECOGNIZED(-1);
    
    private static final zzelf<zzegx> zzes = new zzelf<zzegx>() { // from class: com.google.android.gms.internal.ads.zzegz
    };
    private final int value;

    zzegx(int i) {
        this.value = i;
    }

    public static zzegx zzfr(int i) {
        if (i != 0) {
            if (i == 1) {
                return TINK;
            }
            if (i == 2) {
                return LEGACY;
            }
            if (i == 3) {
                return RAW;
            }
            if (i == 4) {
                return CRUNCHY;
            }
            return null;
        }
        return UNKNOWN_PREFIX;
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
