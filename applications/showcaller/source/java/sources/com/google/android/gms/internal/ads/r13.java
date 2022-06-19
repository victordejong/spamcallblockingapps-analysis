package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r13.class */
public final class r13 {

    /* renamed from: a */
    private final d93 f28738a;

    private r13(d93 d93Var) {
        this.f28738a = d93Var;
    }

    /* renamed from: c */
    public static r13 m11733c(String str, byte[] bArr, int i) {
        c93 m15858E = d93.m15858E();
        m15858E.m16100q(str);
        m15858E.m16099r(zzgex.zzt(bArr));
        int i2 = i - 1;
        m15858E.m16098s(i2 != 0 ? i2 != 1 ? 5 : 4 : 3);
        return new r13(m15858E.m15512n());
    }

    /* renamed from: a */
    public final String m11735a() {
        return this.f28738a.m15860C();
    }

    /* renamed from: b */
    public final byte[] m11734b() {
        return this.f28738a.m15859D().zzz();
    }

    /* renamed from: d */
    public final int m11732d() {
        int m15853J = this.f28738a.m15853J() - 2;
        int i = 1;
        if (m15853J != 1) {
            i = 2;
            if (m15853J != 2) {
                i = 3;
                if (m15853J != 3) {
                    if (m15853J != 4) {
                        throw new IllegalArgumentException("Unknown output prefix type");
                    }
                    return 4;
                }
            }
        }
        return i;
    }
}
