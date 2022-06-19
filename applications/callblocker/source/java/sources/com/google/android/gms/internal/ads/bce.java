package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bce.class */
public enum bce implements dcy {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_FAILURE(2),
    ENUM_UNKNOWN(1000);
    

    /* renamed from: e */
    private static final ddb<bce> f10930e = new ddb<bce>() { // from class: com.google.android.gms.internal.ads.bfh
    };

    /* renamed from: f */
    private final int f10932f;

    bce(int i) {
        this.f10932f = i;
    }

    /* renamed from: a */
    public static bce m12104a(int i) {
        bce bceVar;
        switch (i) {
            case 0:
                bceVar = ENUM_FALSE;
                break;
            case 1:
                bceVar = ENUM_TRUE;
                break;
            case 2:
                bceVar = ENUM_FAILURE;
                break;
            case 1000:
                bceVar = ENUM_UNKNOWN;
                break;
            default:
                bceVar = null;
                break;
        }
        return bceVar;
    }

    /* renamed from: b */
    public static dda m12103b() {
        return beg.f11072a;
    }

    @Override // com.google.android.gms.internal.ads.dcy
    /* renamed from: a */
    public final int mo8208a() {
        return this.f10932f;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.f10932f);
        return sb.append(" name=").append(name()).append('>').toString();
    }
}
