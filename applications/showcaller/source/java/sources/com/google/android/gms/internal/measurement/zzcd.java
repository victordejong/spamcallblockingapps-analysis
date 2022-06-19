package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd.class */
public enum zzcd implements AbstractC7635z5 {
    UNKNOWN_COMPARISON_TYPE(0),
    LESS_THAN(1),
    GREATER_THAN(2),
    EQUAL(3),
    BETWEEN(4);
    

    /* renamed from: i */
    private static final AbstractC7295a6<zzcd> f34818i = new AbstractC7295a6<zzcd>() { // from class: com.google.android.gms.internal.measurement.t0
    };
    private final int zzg;

    zzcd(int i) {
        this.zzg = i;
    }

    public static zzcd zza(int i) {
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

    public static AbstractC7309b6 zzb() {
        return C7565u0.f34701a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzcd.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
    }
}
