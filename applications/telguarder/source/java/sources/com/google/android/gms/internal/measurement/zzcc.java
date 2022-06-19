package com.google.android.gms.internal.measurement;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcc.class */
public enum zzcc implements zzhu {
    UNKNOWN_COMPARISON_TYPE(0),
    LESS_THAN(1),
    GREATER_THAN(2),
    EQUAL(3),
    BETWEEN(4);
    
    private static final zzhv<zzcc> zzf = new zzhv<zzcc>() { // from class: com.google.android.gms.internal.measurement.zzca
    };
    private final int zzg;

    zzcc(int i) {
        this.zzg = i;
    }

    public static zzcc zza(int i) {
        if (i != 0) {
            if (i == 1) {
                return LESS_THAN;
            }
            if (i == 2) {
                return GREATER_THAN;
            }
            if (i == 3) {
                return EQUAL;
            }
            if (i == 4) {
                return BETWEEN;
            }
            return null;
        }
        return UNKNOWN_COMPARISON_TYPE;
    }

    public static zzhw zzb() {
        return zzcb.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
    }
}
