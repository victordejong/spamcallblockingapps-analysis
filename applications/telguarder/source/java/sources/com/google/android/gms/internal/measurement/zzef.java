package com.google.android.gms.internal.measurement;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzef.class */
public enum zzef implements zzhu {
    UNKNOWN(0),
    STRING(1),
    NUMBER(2),
    BOOLEAN(3),
    STATEMENT(4);
    
    private static final zzhv<zzef> zzf = new zzhv<zzef>() { // from class: com.google.android.gms.internal.measurement.zzed
    };
    private final int zzg;

    zzef(int i) {
        this.zzg = i;
    }

    public static zzef zza(int i) {
        if (i != 0) {
            if (i == 1) {
                return STRING;
            }
            if (i == 2) {
                return NUMBER;
            }
            if (i == 3) {
                return BOOLEAN;
            }
            if (i == 4) {
                return STATEMENT;
            }
            return null;
        }
        return UNKNOWN;
    }

    public static zzhw zzb() {
        return zzee.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
    }
}
