package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bhj.class */
public enum bhj implements dcy {
    UNKNOWN_PROTO(0),
    AFMA_SIGNALS(1),
    UNITY_SIGNALS(2),
    PARTNER_SIGNALS(3);
    

    /* renamed from: e */
    private static final ddb<bhj> f11249e = new ddb<bhj>() { // from class: com.google.android.gms.internal.ads.bgi
    };

    /* renamed from: f */
    private final int f11251f;

    bhj(int i) {
        this.f11251f = i;
    }

    /* renamed from: a */
    public static bhj m11931a(int i) {
        bhj bhjVar;
        switch (i) {
            case 0:
                bhjVar = UNKNOWN_PROTO;
                break;
            case 1:
                bhjVar = AFMA_SIGNALS;
                break;
            case 2:
                bhjVar = UNITY_SIGNALS;
                break;
            case 3:
                bhjVar = PARTNER_SIGNALS;
                break;
            default:
                bhjVar = null;
                break;
        }
        return bhjVar;
    }

    /* renamed from: b */
    public static dda m11930b() {
        return bik.f11332a;
    }

    @Override // com.google.android.gms.internal.ads.dcy
    /* renamed from: a */
    public final int mo8208a() {
        return this.f11251f;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.f11251f);
        return sb.append(" name=").append(name()).append('>').toString();
    }
}
