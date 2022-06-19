package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxy.class */
public enum cxy implements dcy {
    UNKNOWN_STATUS(0),
    ENABLED(1),
    DISABLED(2),
    DESTROYED(3),
    UNRECOGNIZED(-1);
    

    /* renamed from: f */
    private static final ddb<cxy> f13808f = new ddb<cxy>() { // from class: com.google.android.gms.internal.ads.cxx
    };

    /* renamed from: g */
    private final int f13810g;

    cxy(int i) {
        this.f13810g = i;
    }

    /* renamed from: a */
    public static cxy m10409a(int i) {
        cxy cxyVar;
        switch (i) {
            case 0:
                cxyVar = UNKNOWN_STATUS;
                break;
            case 1:
                cxyVar = ENABLED;
                break;
            case 2:
                cxyVar = DISABLED;
                break;
            case 3:
                cxyVar = DESTROYED;
                break;
            default:
                cxyVar = null;
                break;
        }
        return cxyVar;
    }

    @Override // com.google.android.gms.internal.ads.dcy
    /* renamed from: a */
    public final int mo8208a() {
        if (this == UNRECOGNIZED) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        return this.f13810g;
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
