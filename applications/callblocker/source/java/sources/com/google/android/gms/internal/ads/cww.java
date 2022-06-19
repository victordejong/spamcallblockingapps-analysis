package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cww.class */
public enum cww implements dcy {
    UNKNOWN_FORMAT(0),
    UNCOMPRESSED(1),
    COMPRESSED(2),
    DO_NOT_USE_CRUNCHY_UNCOMPRESSED(3),
    UNRECOGNIZED(-1);
    

    /* renamed from: f */
    private static final ddb<cww> f13761f = new ddb<cww>() { // from class: com.google.android.gms.internal.ads.cwv
    };

    /* renamed from: g */
    private final int f13763g;

    cww(int i) {
        this.f13763g = i;
    }

    /* renamed from: a */
    public static cww m10504a(int i) {
        cww cwwVar;
        switch (i) {
            case 0:
                cwwVar = UNKNOWN_FORMAT;
                break;
            case 1:
                cwwVar = UNCOMPRESSED;
                break;
            case 2:
                cwwVar = COMPRESSED;
                break;
            case 3:
                cwwVar = DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
                break;
            default:
                cwwVar = null;
                break;
        }
        return cwwVar;
    }

    @Override // com.google.android.gms.internal.ads.dcy
    /* renamed from: a */
    public final int mo8208a() {
        if (this == UNRECOGNIZED) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        return this.f13763g;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=").append(mo8208a());
        }
        return sb.append(" name=").append(name()).append('>').toString();
    }
}
