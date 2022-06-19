package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeft.class */
public enum zzeft implements zzelg {
    UNKNOWN_HASH(0),
    SHA1(1),
    SHA384(2),
    SHA256(3),
    SHA512(4),
    UNRECOGNIZED(-1);
    
    private static final zzelf<zzeft> zzes = new zzelf<zzeft>() { // from class: com.google.android.gms.internal.ads.zzefw
    };
    private final int value;

    zzeft(int i) {
        this.value = i;
    }

    public static zzeft zzfh(int i) {
        if (i != 0) {
            if (i == 1) {
                return SHA1;
            }
            if (i == 2) {
                return SHA384;
            }
            if (i == 3) {
                return SHA256;
            }
            if (i == 4) {
                return SHA512;
            }
            return null;
        }
        return UNKNOWN_HASH;
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
