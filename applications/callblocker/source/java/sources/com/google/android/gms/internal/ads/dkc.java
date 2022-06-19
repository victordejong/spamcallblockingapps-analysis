package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dkc.class */
public enum dkc implements dcy {
    UNSUPPORTED(0),
    ARM7(2),
    X86(4),
    ARM64(5),
    X86_64(6);
    

    /* renamed from: f */
    private static final ddb<dkc> f14518f = new ddb<dkc>() { // from class: com.google.android.gms.internal.ads.dkf
    };

    /* renamed from: g */
    private final int f14520g;

    dkc(int i) {
        this.f14520g = i;
    }

    @Override // com.google.android.gms.internal.ads.dcy
    /* renamed from: a */
    public final int mo8208a() {
        return this.f14520g;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.f14520g);
        return sb.append(" name=").append(name()).append('>').toString();
    }
}
