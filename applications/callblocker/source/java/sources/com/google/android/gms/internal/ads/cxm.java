package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxm.class */
public enum cxm implements dcy {
    UNKNOWN_HASH(0),
    SHA1(1),
    SHA384(2),
    SHA256(3),
    SHA512(4),
    UNRECOGNIZED(-1);
    

    /* renamed from: g */
    private static final ddb<cxm> f13785g = new ddb<cxm>() { // from class: com.google.android.gms.internal.ads.cxl
    };

    /* renamed from: h */
    private final int f13787h;

    cxm(int i) {
        this.f13787h = i;
    }

    /* renamed from: a */
    public static cxm m10451a(int i) {
        cxm cxmVar;
        switch (i) {
            case 0:
                cxmVar = UNKNOWN_HASH;
                break;
            case 1:
                cxmVar = SHA1;
                break;
            case 2:
                cxmVar = SHA384;
                break;
            case 3:
                cxmVar = SHA256;
                break;
            case 4:
                cxmVar = SHA512;
                break;
            default:
                cxmVar = null;
                break;
        }
        return cxmVar;
    }

    @Override // com.google.android.gms.internal.ads.dcy
    /* renamed from: a */
    public final int mo8208a() {
        if (this == UNRECOGNIZED) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        return this.f13787h;
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
