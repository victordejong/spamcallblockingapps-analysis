package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzege.class */
public enum zzege implements zzelg {
    UNKNOWN_STATUS(0),
    ENABLED(1),
    DISABLED(2),
    DESTROYED(3),
    UNRECOGNIZED(-1);
    
    private static final zzelf<zzege> zzes = new zzelf<zzege>() { // from class: com.google.android.gms.internal.ads.zzegh
    };
    private final int value;

    zzege(int i) {
        this.value = i;
    }

    public static zzege zzfk(int i) {
        if (i != 0) {
            if (i == 1) {
                return ENABLED;
            }
            if (i == 2) {
                return DISABLED;
            }
            if (i == 3) {
                return DESTROYED;
            }
            return null;
        }
        return UNKNOWN_STATUS;
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
