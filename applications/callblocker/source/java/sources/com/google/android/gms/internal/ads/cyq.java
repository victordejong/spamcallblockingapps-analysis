package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyq.class */
public enum cyq implements dcy {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    UNRECOGNIZED(-1);
    

    /* renamed from: g */
    private static final ddb<cyq> f13825g = new ddb<cyq>() { // from class: com.google.android.gms.internal.ads.cyp
    };

    /* renamed from: h */
    private final int f13827h;

    cyq(int i) {
        this.f13827h = i;
    }

    /* renamed from: a */
    public static cyq m10333a(int i) {
        cyq cyqVar;
        switch (i) {
            case 0:
                cyqVar = UNKNOWN_PREFIX;
                break;
            case 1:
                cyqVar = TINK;
                break;
            case 2:
                cyqVar = LEGACY;
                break;
            case 3:
                cyqVar = RAW;
                break;
            case 4:
                cyqVar = CRUNCHY;
                break;
            default:
                cyqVar = null;
                break;
        }
        return cyqVar;
    }

    @Override // com.google.android.gms.internal.ads.dcy
    /* renamed from: a */
    public final int mo8208a() {
        if (this == UNRECOGNIZED) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        return this.f13827h;
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
