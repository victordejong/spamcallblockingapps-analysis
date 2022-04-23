package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/aw.class */
public enum aw implements gn {
    UNKNOWN_COMPARISON_TYPE(0),
    LESS_THAN(1),
    GREATER_THAN(2),
    EQUAL(3),
    BETWEEN(4);
    
    private static final go<aw> zzf = new go<aw>() { // from class: com.google.android.gms.internal.measurement.au
    };
    private final int zzg;

    aw(int i) {
        this.zzg = i;
    }

    public static aw zza(int i) {
        if (i == 0) {
            return UNKNOWN_COMPARISON_TYPE;
        }
        if (i == 1) {
            return LESS_THAN;
        }
        if (i == 2) {
            return GREATER_THAN;
        }
        if (i == 3) {
            return EQUAL;
        }
        if (i != 4) {
            return null;
        }
        return BETWEEN;
    }

    public static gp zzb() {
        return av.f28936a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
    }
}
