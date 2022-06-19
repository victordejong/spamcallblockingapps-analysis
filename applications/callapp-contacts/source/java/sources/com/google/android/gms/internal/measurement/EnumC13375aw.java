package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.aw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/aw.class */
public enum EnumC13375aw implements AbstractC13528gn {
    UNKNOWN_COMPARISON_TYPE(0),
    LESS_THAN(1),
    GREATER_THAN(2),
    EQUAL(3),
    BETWEEN(4);
    
    private static final AbstractC13529go<EnumC13375aw> zzf = new AbstractC13529go<EnumC13375aw>() { // from class: com.google.android.gms.internal.measurement.au
    };
    private final int zzg;

    EnumC13375aw(int i) {
        this.zzg = i;
    }

    public static EnumC13375aw zza(int i) {
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

    public static AbstractC13530gp zzb() {
        return C13374av.f50608a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
    }
}
