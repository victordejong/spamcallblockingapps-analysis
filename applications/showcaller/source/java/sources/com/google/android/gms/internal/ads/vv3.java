package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vv3.class */
public final class vv3 implements gw3 {

    /* renamed from: a */
    private final C6657ka f31366a;

    /* renamed from: b */
    private final C6694la f31367b;

    /* renamed from: c */
    private final String f31368c;

    /* renamed from: d */
    private String f31369d;

    /* renamed from: e */
    private yr3 f31370e;

    /* renamed from: g */
    private int f31372g;

    /* renamed from: h */
    private boolean f31373h;

    /* renamed from: i */
    private long f31374i;

    /* renamed from: j */
    private C7021u4 f31375j;

    /* renamed from: k */
    private int f31376k;

    /* renamed from: f */
    private int f31371f = 0;

    /* renamed from: l */
    private long f31377l = -9223372036854775807L;

    public vv3(String str) {
        C6657ka c6657ka = new C6657ka(new byte[128], 128);
        this.f31366a = c6657ka;
        this.f31367b = new C6694la(c6657ka.f25088a);
        this.f31368c = str;
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: a */
    public final void mo8681a() {
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: b */
    public final void mo8680b(xq3 xq3Var, tx3 tx3Var) {
        tx3Var.m10475a();
        this.f31369d = tx3Var.m10473c();
        this.f31370e = xq3Var.mo8690o(tx3Var.m10474b(), 1);
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: c */
    public final void mo8679c(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f31377l = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: d */
    public final void mo8678d(C6694la c6694la) {
        C7173y8.m8894e(this.f31370e);
        while (c6694la.m13639l() > 0) {
            int i = this.f31371f;
            if (i == 0) {
                while (true) {
                    if (c6694la.m13639l() <= 0) {
                        break;
                    } else if (!this.f31373h) {
                        this.f31373h = c6694la.m13629v() == 11;
                    } else {
                        int m13629v = c6694la.m13629v();
                        if (m13629v == 119) {
                            this.f31373h = false;
                            this.f31371f = 1;
                            this.f31367b.m13634q()[0] = (byte) 11;
                            this.f31367b.m13634q()[1] = (byte) 119;
                            this.f31372g = 2;
                            break;
                        }
                        this.f31373h = m13629v == 11;
                    }
                }
            } else if (i != 1) {
                int min = Math.min(c6694la.m13639l(), this.f31376k - this.f31372g);
                wr3.m9478b(this.f31370e, c6694la, min);
                int i2 = this.f31372g + min;
                this.f31372g = i2;
                int i3 = this.f31376k;
                if (i2 == i3) {
                    long j = this.f31377l;
                    if (j != -9223372036854775807L) {
                        this.f31370e.mo8705c(j, 1, i3, 0, null);
                        this.f31377l += this.f31374i;
                    }
                    this.f31371f = 0;
                }
            } else {
                byte[] m13634q = this.f31367b.m13634q();
                int min2 = Math.min(c6694la.m13639l(), 128 - this.f31372g);
                c6694la.m13630u(m13634q, this.f31372g, min2);
                int i4 = this.f31372g + min2;
                this.f31372g = i4;
                if (i4 == 128) {
                    this.f31366a.m13951d(0);
                    zp3 m16496c = aq3.m16496c(this.f31366a);
                    C7021u4 c7021u4 = this.f31375j;
                    if (c7021u4 == null || m16496c.f33070c != c7021u4.f30492A || m16496c.f33069b != c7021u4.f30493B || !C7101wa.m9720H(m16496c.f33068a, c7021u4.f30511n)) {
                        C6947s4 c6947s4 = new C6947s4();
                        c6947s4.m11144d(this.f31369d);
                        c6947s4.m11129n(m16496c.f33068a);
                        c6947s4.m11175B(m16496c.f33070c);
                        c6947s4.m11174C(m16496c.f33069b);
                        c6947s4.m11138g(this.f31368c);
                        C7021u4 m11168I = c6947s4.m11168I();
                        this.f31375j = m11168I;
                        this.f31370e.mo8704d(m11168I);
                    }
                    this.f31376k = m16496c.f33071d;
                    this.f31374i = (m16496c.f33072e * 1000000) / this.f31375j.f30493B;
                    this.f31367b.m13635p(0);
                    wr3.m9478b(this.f31370e, this.f31367b, 128);
                    this.f31371f = 2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.gw3
    public final void zza() {
        this.f31371f = 0;
        this.f31372g = 0;
        this.f31373h = false;
        this.f31377l = -9223372036854775807L;
    }
}
