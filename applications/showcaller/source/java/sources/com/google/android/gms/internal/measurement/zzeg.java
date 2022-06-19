package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzeg.class */
public enum zzeg implements AbstractC7635z5 {
    UNKNOWN(0),
    STRING(1),
    NUMBER(2),
    BOOLEAN(3),
    STATEMENT(4);
    

    /* renamed from: i */
    private static final AbstractC7295a6<zzeg> f34846i = new AbstractC7295a6<zzeg>() { // from class: com.google.android.gms.internal.measurement.u2
    };
    private final int zzg;

    zzeg(int i) {
        this.zzg = i;
    }

    public static zzeg zza(int i) {
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

    public static AbstractC7309b6 zzb() {
        return C7580v2.f34721a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzeg.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
    }
}
