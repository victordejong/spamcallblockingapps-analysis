package com.google.android.gms.internal.ads;

import okhttp3.internal.http.StatusLine;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yx3.class */
final class yx3 implements zx3 {

    /* renamed from: a */
    private static final int[] f32696a = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

    /* renamed from: b */
    private static final int[] f32697b = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, StatusLine.HTTP_TEMP_REDIRECT, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

    /* renamed from: c */
    private final xq3 f32698c;

    /* renamed from: d */
    private final yr3 f32699d;

    /* renamed from: e */
    private final cy3 f32700e;

    /* renamed from: f */
    private final int f32701f;

    /* renamed from: g */
    private final byte[] f32702g;

    /* renamed from: h */
    private final C6694la f32703h;

    /* renamed from: i */
    private final int f32704i;

    /* renamed from: j */
    private final C7021u4 f32705j;

    /* renamed from: k */
    private int f32706k;

    /* renamed from: l */
    private long f32707l;

    /* renamed from: m */
    private int f32708m;

    /* renamed from: n */
    private long f32709n;

    public yx3(xq3 xq3Var, yr3 yr3Var, cy3 cy3Var) {
        this.f32698c = xq3Var;
        this.f32699d = yr3Var;
        this.f32700e = cy3Var;
        int max = Math.max(1, cy3Var.f21418c / 10);
        this.f32704i = max;
        C6694la c6694la = new C6694la(cy3Var.f21421f);
        c6694la.m13627x();
        int m13627x = c6694la.m13627x();
        this.f32701f = m13627x;
        int i = cy3Var.f21417b;
        int i2 = (((cy3Var.f21419d - (i * 4)) * 8) / (cy3Var.f21420e * i)) + 1;
        if (m13627x != i2) {
            StringBuilder sb = new StringBuilder(56);
            sb.append("Expected frames per block: ");
            sb.append(i2);
            sb.append("; got: ");
            sb.append(m13627x);
            throw zzaha.zzb(sb.toString(), null);
        }
        int m9698b0 = C7101wa.m9698b0(max, m13627x);
        this.f32702g = new byte[cy3Var.f21419d * m9698b0];
        this.f32703h = new C6694la(m9698b0 * (m13627x + m13627x) * i);
        int i3 = ((cy3Var.f21418c * cy3Var.f21419d) * 8) / m13627x;
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11129n("audio/raw");
        c6947s4.m11134i(i3);
        c6947s4.m11133j(i3);
        c6947s4.m11128o((max + max) * i);
        c6947s4.m11175B(cy3Var.f21417b);
        c6947s4.m11174C(cy3Var.f21418c);
        c6947s4.m11173D(2);
        this.f32705j = c6947s4.m11168I();
    }

    /* renamed from: d */
    private final void m8665d(int i) {
        long j = this.f32707l;
        long m9689h = C7101wa.m9689h(this.f32709n, 1000000L, this.f32700e.f21418c);
        int m8663f = m8663f(i);
        this.f32699d.mo8705c(j + m9689h, 1, m8663f, this.f32708m - m8663f, null);
        this.f32709n += i;
        this.f32708m -= m8663f;
    }

    /* renamed from: e */
    private final int m8664e(int i) {
        int i2 = this.f32700e.f21417b;
        return i / (i2 + i2);
    }

    /* renamed from: f */
    private final int m8663f(int i) {
        return (i + i) * this.f32700e.f21417b;
    }

    @Override // com.google.android.gms.internal.ads.zx3
    /* renamed from: a */
    public final void mo8146a(long j) {
        this.f32706k = 0;
        this.f32707l = j;
        this.f32708m = 0;
        this.f32709n = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zx3
    /* renamed from: b */
    public final void mo8145b(int i, long j) {
        this.f32698c.mo8689r(new fy3(this.f32700e, this.f32701f, i, j));
        this.f32699d.mo8704d(this.f32705j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0067 A[LOOP:0: B:6:0x002d->B:12:0x0067, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0024 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v100, types: [int] */
    /* JADX WARN: Type inference failed for: r0v111, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0061 -> B:4:0x0024). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.zx3
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo8144c(com.google.android.gms.internal.ads.vq3 r7, long r8) {
        /*
            Method dump skipped, instructions count: 660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.yx3.mo8144c(com.google.android.gms.internal.ads.vq3, long):boolean");
    }
}
