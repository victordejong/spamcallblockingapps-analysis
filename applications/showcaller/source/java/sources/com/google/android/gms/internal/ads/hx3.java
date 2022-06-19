package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hx3.class */
public final class hx3 implements ux3 {

    /* renamed from: a */
    private final gx3 f24072a;

    /* renamed from: b */
    private final C6694la f24073b = new C6694la(32);

    /* renamed from: c */
    private int f24074c;

    /* renamed from: d */
    private int f24075d;

    /* renamed from: e */
    private boolean f24076e;

    /* renamed from: f */
    private boolean f24077f;

    public hx3(gx3 gx3Var) {
        this.f24072a = gx3Var;
    }

    @Override // com.google.android.gms.internal.ads.ux3
    /* renamed from: a */
    public final void mo9028a(C6990ta c6990ta, xq3 xq3Var, tx3 tx3Var) {
        this.f24072a.mo9428a(c6990ta, xq3Var, tx3Var);
        this.f24077f = true;
    }

    @Override // com.google.android.gms.internal.ads.ux3
    /* renamed from: b */
    public final void mo9027b() {
        this.f24077f = true;
    }

    @Override // com.google.android.gms.internal.ads.ux3
    /* renamed from: c */
    public final void mo9026c(C6694la c6694la, int i) {
        int i2 = i & 1;
        int m13636o = i2 != 0 ? c6694la.m13636o() + c6694la.m13629v() : -1;
        if (this.f24077f) {
            if (i2 == 0) {
                return;
            }
            this.f24077f = false;
            c6694la.m13635p(m13636o);
            this.f24075d = 0;
        }
        while (c6694la.m13639l() > 0) {
            int i3 = this.f24075d;
            if (i3 < 3) {
                if (i3 == 0) {
                    int m13629v = c6694la.m13629v();
                    c6694la.m13635p(c6694la.m13636o() - 1);
                    if (m13629v == 255) {
                        this.f24077f = true;
                        return;
                    }
                }
                int min = Math.min(c6694la.m13639l(), 3 - this.f24075d);
                c6694la.m13630u(this.f24073b.m13634q(), this.f24075d, min);
                int i4 = this.f24075d + min;
                this.f24075d = i4;
                if (i4 == 3) {
                    this.f24073b.m13635p(0);
                    this.f24073b.m13637n(3);
                    this.f24073b.m13632s(1);
                    int m13629v2 = this.f24073b.m13629v();
                    int m13629v3 = this.f24073b.m13629v();
                    this.f24076e = (m13629v2 & 128) != 0;
                    this.f24074c = (((m13629v2 & 15) << 8) | m13629v3) + 3;
                    int m13633r = this.f24073b.m13633r();
                    int i5 = this.f24074c;
                    if (m13633r < i5) {
                        int m13633r2 = this.f24073b.m13633r();
                        this.f24073b.m13640k(Math.min(4098, Math.max(i5, m13633r2 + m13633r2)));
                    }
                }
            } else {
                int min2 = Math.min(c6694la.m13639l(), this.f24074c - this.f24075d);
                c6694la.m13630u(this.f24073b.m13634q(), this.f24075d, min2);
                int i6 = this.f24075d + min2;
                this.f24075d = i6;
                int i7 = this.f24074c;
                if (i6 != i7) {
                    continue;
                } else {
                    if (!this.f24076e) {
                        this.f24073b.m13637n(i7);
                    } else if (C7101wa.m9675v(this.f24073b.m13634q(), 0, this.f24074c, -1) != 0) {
                        this.f24077f = true;
                        return;
                    } else {
                        this.f24073b.m13637n(this.f24074c - 4);
                    }
                    this.f24073b.m13635p(0);
                    this.f24072a.mo9427b(this.f24073b);
                    this.f24075d = 0;
                }
            }
        }
    }
}
