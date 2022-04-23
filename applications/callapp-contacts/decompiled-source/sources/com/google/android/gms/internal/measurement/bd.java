package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bd.class */
public enum bd implements gn {
    UNKNOWN_MATCH_TYPE(0),
    REGEXP(1),
    BEGINS_WITH(2),
    ENDS_WITH(3),
    PARTIAL(4),
    EXACT(5),
    IN_LIST(6);
    
    private static final go<bd> zzh = new go<bd>() { // from class: com.google.android.gms.internal.measurement.bb
    };
    private final int zzi;

    bd(int i) {
        this.zzi = i;
    }

    public static bd zza(int i) {
        switch (i) {
            case 0:
                return UNKNOWN_MATCH_TYPE;
            case 1:
                return REGEXP;
            case 2:
                return BEGINS_WITH;
            case 3:
                return ENDS_WITH;
            case 4:
                return PARTIAL;
            case 5:
                return EXACT;
            case 6:
                return IN_LIST;
            default:
                return null;
        }
    }

    public static gp zzb() {
        return bc.f28937a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzi + " name=" + name() + '>';
    }
}
