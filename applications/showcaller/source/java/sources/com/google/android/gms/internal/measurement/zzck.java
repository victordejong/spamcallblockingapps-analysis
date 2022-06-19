package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzck.class */
public enum zzck implements AbstractC7635z5 {
    UNKNOWN_MATCH_TYPE(0),
    REGEXP(1),
    BEGINS_WITH(2),
    ENDS_WITH(3),
    PARTIAL(4),
    EXACT(5),
    IN_LIST(6);
    

    /* renamed from: k */
    private static final AbstractC7295a6<zzck> f34827k = new AbstractC7295a6<zzck>() { // from class: com.google.android.gms.internal.measurement.z0
    };
    private final int zzi;

    zzck(int i) {
        this.zzi = i;
    }

    public static zzck zza(int i) {
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

    public static AbstractC7309b6 zzb() {
        return C7290a1.f34328a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzck.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzi + " name=" + name() + '>';
    }
}
