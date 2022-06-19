package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bbd.class */
public enum bbd implements dcy {
    UNKNOWN_ENCRYPTION_METHOD(0),
    BITSLICER(1),
    TINK_HYBRID(2),
    UNENCRYPTED(3),
    DG(4);
    

    /* renamed from: f */
    private static final ddb<bbd> f10853f = new ddb<bbd>() { // from class: com.google.android.gms.internal.ads.bac
    };

    /* renamed from: g */
    private final int f10855g;

    bbd(int i) {
        this.f10855g = i;
    }

    /* renamed from: a */
    public static bbd m12132a(int i) {
        bbd bbdVar;
        switch (i) {
            case 0:
                bbdVar = UNKNOWN_ENCRYPTION_METHOD;
                break;
            case 1:
                bbdVar = BITSLICER;
                break;
            case 2:
                bbdVar = TINK_HYBRID;
                break;
            case 3:
                bbdVar = UNENCRYPTED;
                break;
            case 4:
                bbdVar = DG;
                break;
            default:
                bbdVar = null;
                break;
        }
        return bbdVar;
    }

    /* renamed from: b */
    public static dda m12131b() {
        return bdf.f11003a;
    }

    @Override // com.google.android.gms.internal.ads.dcy
    /* renamed from: a */
    public final int mo8208a() {
        return this.f10855g;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.f10855g);
        return sb.append(" name=").append(name()).append('>').toString();
    }
}
