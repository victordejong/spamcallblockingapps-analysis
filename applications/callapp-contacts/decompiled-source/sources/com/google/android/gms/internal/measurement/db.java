package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/db.class */
public enum db implements gn {
    UNKNOWN(0),
    STRING(1),
    NUMBER(2),
    BOOLEAN(3),
    STATEMENT(4);
    
    private static final go<db> zzf = new go<db>() { // from class: com.google.android.gms.internal.measurement.cz
    };
    private final int zzg;

    db(int i) {
        this.zzg = i;
    }

    public static db zza(int i) {
        if (i == 0) {
            return UNKNOWN;
        }
        if (i == 1) {
            return STRING;
        }
        if (i == 2) {
            return NUMBER;
        }
        if (i == 3) {
            return BOOLEAN;
        }
        if (i != 4) {
            return null;
        }
        return STATEMENT;
    }

    public static gp zzb() {
        return da.f28949a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
    }
}
