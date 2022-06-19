package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.db */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/db.class */
public enum EnumC13435db implements AbstractC13528gn {
    UNKNOWN(0),
    STRING(1),
    NUMBER(2),
    BOOLEAN(3),
    STATEMENT(4);
    
    private static final AbstractC13529go<EnumC13435db> zzf = new AbstractC13529go<EnumC13435db>() { // from class: com.google.android.gms.internal.measurement.cz
    };
    private final int zzg;

    EnumC13435db(int i) {
        this.zzg = i;
    }

    public static EnumC13435db zza(int i) {
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

    public static AbstractC13530gp zzb() {
        return C13434da.f50621a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
    }
}
