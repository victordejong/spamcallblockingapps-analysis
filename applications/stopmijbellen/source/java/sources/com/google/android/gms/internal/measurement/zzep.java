package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzep.class */
public enum zzep implements zzkf {
    UNKNOWN_COMPARISON_TYPE(0),
    LESS_THAN(1),
    GREATER_THAN(2),
    EQUAL(3),
    BETWEEN(4);
    
    private static final zzkg<zzep> zzf = new zzkg<zzep>() { // from class: com.google.android.gms.internal.measurement.zzen
    };
    private final int zzg;

    zzep(int i) {
        this.zzg = i;
    }

    public static zzep zza(int i) {
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

    public static zzkh zzb() {
        return zzeo.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzep.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
    }
}
