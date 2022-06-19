package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dxf.class */
public enum dxf implements dcy {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_UNKNOWN(1000);
    

    /* renamed from: d */
    private static final ddb<dxf> f16023d = new ddb<dxf>() { // from class: com.google.android.gms.internal.ads.dxe
    };

    /* renamed from: e */
    private final int f16025e;

    dxf(int i) {
        this.f16025e = i;
    }

    /* renamed from: a */
    public static dxf m8207a(int i) {
        dxf dxfVar;
        switch (i) {
            case 0:
                dxfVar = ENUM_FALSE;
                break;
            case 1:
                dxfVar = ENUM_TRUE;
                break;
            case 1000:
                dxfVar = ENUM_UNKNOWN;
                break;
            default:
                dxfVar = null;
                break;
        }
        return dxfVar;
    }

    /* renamed from: b */
    public static dda m8206b() {
        return dxg.f16026a;
    }

    @Override // com.google.android.gms.internal.ads.dcy
    /* renamed from: a */
    public final int mo8208a() {
        return this.f16025e;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.f16025e);
        return sb.append(" name=").append(name()).append('>').toString();
    }
}
