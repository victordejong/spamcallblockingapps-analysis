package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgs.class */
public enum zzgs implements zzkf {
    UNKNOWN(0),
    STRING(1),
    NUMBER(2),
    BOOLEAN(3),
    STATEMENT(4);
    
    private static final zzkg<zzgs> zzf = new zzkg<zzgs>() { // from class: com.google.android.gms.internal.measurement.zzgq
    };
    private final int zzg;

    zzgs(int i) {
        this.zzg = i;
    }

    public static zzgs zza(int i) {
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

    public static zzkh zzb() {
        return zzgr.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzgs.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
    }
}
