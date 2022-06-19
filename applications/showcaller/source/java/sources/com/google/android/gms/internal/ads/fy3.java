package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fy3.class */
final class fy3 implements ur3 {

    /* renamed from: a */
    private final cy3 f23196a;

    /* renamed from: b */
    private final int f23197b;

    /* renamed from: c */
    private final long f23198c;

    /* renamed from: d */
    private final long f23199d;

    /* renamed from: e */
    private final long f23200e;

    public fy3(cy3 cy3Var, int i, long j, long j2) {
        this.f23196a = cy3Var;
        this.f23197b = i;
        this.f23198c = j;
        long j3 = (j2 - j) / cy3Var.f21419d;
        this.f23199d = j3;
        this.f23200e = m15026e(j3);
    }

    /* renamed from: e */
    private final long m15026e(long j) {
        return C7101wa.m9689h(j * this.f23197b, 1000000L, this.f23196a.f21418c);
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        long m9694d0 = C7101wa.m9694d0((this.f23196a.f21418c * j) / (this.f23197b * 1000000), 0L, this.f23199d - 1);
        long j2 = this.f23198c;
        int i = this.f23196a.f21419d;
        long m15026e = m15026e(m9694d0);
        vr3 vr3Var = new vr3(m15026e, j2 + (i * m9694d0));
        if (m15026e >= j || m9694d0 == this.f23199d - 1) {
            return new sr3(vr3Var, vr3Var);
        }
        long j3 = m9694d0 + 1;
        return new sr3(vr3Var, new vr3(m15026e(j3), this.f23198c + (j3 * this.f23196a.f21419d)));
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        return this.f23200e;
    }
}
