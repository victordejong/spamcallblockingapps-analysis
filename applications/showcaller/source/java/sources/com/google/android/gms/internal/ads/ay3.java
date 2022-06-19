package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ay3.class */
final class ay3 implements zx3 {

    /* renamed from: a */
    private final xq3 f20182a;

    /* renamed from: b */
    private final yr3 f20183b;

    /* renamed from: c */
    private final cy3 f20184c;

    /* renamed from: d */
    private final C7021u4 f20185d;

    /* renamed from: e */
    private final int f20186e;

    /* renamed from: f */
    private long f20187f;

    /* renamed from: g */
    private int f20188g;

    /* renamed from: h */
    private long f20189h;

    public ay3(xq3 xq3Var, yr3 yr3Var, cy3 cy3Var, String str, int i) {
        this.f20182a = xq3Var;
        this.f20183b = yr3Var;
        this.f20184c = cy3Var;
        int i2 = (cy3Var.f21417b * cy3Var.f21420e) / 8;
        int i3 = cy3Var.f21419d;
        if (i3 != i2) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Expected block size: ");
            sb.append(i2);
            sb.append("; got: ");
            sb.append(i3);
            throw zzaha.zzb(sb.toString(), null);
        }
        int i4 = cy3Var.f21418c * i2;
        int i5 = i4 * 8;
        int max = Math.max(i2, i4 / 10);
        this.f20186e = max;
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11129n(str);
        c6947s4.m11134i(i5);
        c6947s4.m11133j(i5);
        c6947s4.m11128o(max);
        c6947s4.m11175B(cy3Var.f21417b);
        c6947s4.m11174C(cy3Var.f21418c);
        c6947s4.m11173D(i);
        this.f20185d = c6947s4.m11168I();
    }

    @Override // com.google.android.gms.internal.ads.zx3
    /* renamed from: a */
    public final void mo8146a(long j) {
        this.f20187f = j;
        this.f20188g = 0;
        this.f20189h = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zx3
    /* renamed from: b */
    public final void mo8145b(int i, long j) {
        this.f20182a.mo8689r(new fy3(this.f20184c, 1, i, j));
        this.f20183b.mo8704d(this.f20185d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    @Override // com.google.android.gms.internal.ads.zx3
    /* renamed from: c */
    public final boolean mo8144c(vq3 vq3Var, long j) {
        int i;
        cy3 cy3Var;
        int i2;
        int i3;
        while (true) {
            i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i <= 0 || (i2 = this.f20188g) >= (i3 = this.f20186e)) {
                break;
            }
            int m9479a = wr3.m9479a(this.f20183b, vq3Var, (int) Math.min(i3 - i2, (long) j), true);
            if (m9479a == -1) {
                j = 0;
            } else {
                this.f20188g += m9479a;
                j -= m9479a;
            }
        }
        int i4 = this.f20184c.f21419d;
        int i5 = this.f20188g / i4;
        if (i5 > 0) {
            long j2 = this.f20187f;
            long m9689h = C7101wa.m9689h(this.f20189h, 1000000L, cy3Var.f21418c);
            int i6 = i5 * i4;
            int i7 = this.f20188g - i6;
            this.f20183b.mo8705c(j2 + m9689h, 1, i6, i7, null);
            this.f20189h += i5;
            this.f20188g = i7;
        }
        return i <= 0;
    }
}
