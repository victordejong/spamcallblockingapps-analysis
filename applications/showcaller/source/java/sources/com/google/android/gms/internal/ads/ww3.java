package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ww3.class */
public final class ww3 implements gx3 {

    /* renamed from: a */
    private C7021u4 f31810a;

    /* renamed from: b */
    private C6990ta f31811b;

    /* renamed from: c */
    private yr3 f31812c;

    public ww3(String str) {
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11129n(str);
        this.f31810a = c6947s4.m11168I();
    }

    @Override // com.google.android.gms.internal.ads.gx3
    /* renamed from: a */
    public final void mo9428a(C6990ta c6990ta, xq3 xq3Var, tx3 tx3Var) {
        this.f31811b = c6990ta;
        tx3Var.m10475a();
        yr3 mo8690o = xq3Var.mo8690o(tx3Var.m10474b(), 5);
        this.f31812c = mo8690o;
        mo8690o.mo8704d(this.f31810a);
    }

    @Override // com.google.android.gms.internal.ads.gx3
    /* renamed from: b */
    public final void mo9427b(C6694la c6694la) {
        C7173y8.m8894e(this.f31811b);
        int i = C7101wa.f31475a;
        long m10759b = this.f31811b.m10759b();
        long m10758c = this.f31811b.m10758c();
        if (m10759b == -9223372036854775807L || m10758c == -9223372036854775807L) {
            return;
        }
        C7021u4 c7021u4 = this.f31810a;
        if (m10758c != c7021u4.f30515r) {
            C6947s4 m10418a = c7021u4.m10418a();
            m10418a.m11125r(m10758c);
            C7021u4 m11168I = m10418a.m11168I();
            this.f31810a = m11168I;
            this.f31812c.mo8704d(m11168I);
        }
        int m13639l = c6694la.m13639l();
        wr3.m9478b(this.f31812c, c6694la, m13639l);
        this.f31812c.mo8705c(m10759b, 1, m13639l, 0, null);
    }
}
