package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ss3.class */
final class ss3 extends rs3 {

    /* renamed from: b */
    private final C6694la f29651b = new C6694la(C6322ba.f20319a);

    /* renamed from: c */
    private final C6694la f29652c = new C6694la(4);

    /* renamed from: d */
    private int f29653d;

    /* renamed from: e */
    private boolean f29654e;

    /* renamed from: f */
    private boolean f29655f;

    /* renamed from: g */
    private int f29656g;

    public ss3(yr3 yr3Var) {
        super(yr3Var);
    }

    @Override // com.google.android.gms.internal.ads.rs3
    /* renamed from: a */
    protected final boolean mo10915a(C6694la c6694la) {
        int m13629v = c6694la.m13629v();
        int i = m13629v >> 4;
        int i2 = m13629v & 15;
        if (i2 == 7) {
            this.f29656g = i;
            return i != 5;
        }
        StringBuilder sb = new StringBuilder(39);
        sb.append("Video format not supported: ");
        sb.append(i2);
        throw new zzpp(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.rs3
    /* renamed from: b */
    protected final boolean mo10914b(C6694la c6694la, long j) {
        int m13629v = c6694la.m13629v();
        long m13658A = c6694la.m13658A();
        if (m13629v == 0) {
            if (this.f29654e) {
                return false;
            }
            C6694la c6694la2 = new C6694la(new byte[c6694la.m13639l()]);
            c6694la.m13630u(c6694la2.m13634q(), 0, c6694la.m13639l());
            eq3 m15405a = eq3.m15405a(c6694la2);
            this.f29653d = m15405a.f22308b;
            C6947s4 c6947s4 = new C6947s4();
            c6947s4.m11129n("video/avc");
            c6947s4.m11132k(m15405a.f22312f);
            c6947s4.m11124s(m15405a.f22309c);
            c6947s4.m11123t(m15405a.f22310d);
            c6947s4.m11120w(m15405a.f22311e);
            c6947s4.m11127p(m15405a.f22307a);
            this.f29219a.mo8704d(c6947s4.m11168I());
            this.f29654e = true;
            return false;
        } else if (m13629v != 1 || !this.f29654e) {
            return false;
        } else {
            int i = this.f29656g == 1 ? 1 : 0;
            if (!this.f29655f && i == 0) {
                return false;
            }
            byte[] m13634q = this.f29652c.m13634q();
            m13634q[0] = (byte) 0;
            m13634q[1] = (byte) 0;
            m13634q[2] = (byte) 0;
            int i2 = this.f29653d;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (c6694la.m13639l() <= 0) {
                    this.f29219a.mo8705c(j + (m13658A * 1000), i, i4, 0, null);
                    this.f29655f = true;
                    return true;
                }
                c6694la.m13630u(this.f29652c.m13634q(), 4 - i2, this.f29653d);
                this.f29652c.m13635p(0);
                int m13649b = this.f29652c.m13649b();
                this.f29651b.m13635p(0);
                this.f29219a.mo8706b(this.f29651b, 4);
                this.f29219a.mo8706b(c6694la, m13649b);
                i3 = i4 + 4 + m13649b;
            }
        }
    }
}
