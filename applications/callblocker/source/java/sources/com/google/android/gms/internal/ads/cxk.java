package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxk.class */
public enum cxk implements dcy {
    UNKNOWN_CURVE(0),
    NIST_P256(2),
    NIST_P384(3),
    NIST_P521(4),
    CURVE25519(5),
    UNRECOGNIZED(-1);
    

    /* renamed from: g */
    private static final ddb<cxk> f13776g = new ddb<cxk>() { // from class: com.google.android.gms.internal.ads.cxj
    };

    /* renamed from: h */
    private final int f13778h;

    cxk(int i) {
        this.f13778h = i;
    }

    /* renamed from: a */
    public static cxk m10452a(int i) {
        cxk cxkVar;
        switch (i) {
            case 0:
                cxkVar = UNKNOWN_CURVE;
                break;
            case 1:
            default:
                cxkVar = null;
                break;
            case 2:
                cxkVar = NIST_P256;
                break;
            case 3:
                cxkVar = NIST_P384;
                break;
            case 4:
                cxkVar = NIST_P521;
                break;
            case 5:
                cxkVar = CURVE25519;
                break;
        }
        return cxkVar;
    }

    @Override // com.google.android.gms.internal.ads.dcy
    /* renamed from: a */
    public final int mo8208a() {
        if (this == UNRECOGNIZED) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        return this.f13778h;
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
