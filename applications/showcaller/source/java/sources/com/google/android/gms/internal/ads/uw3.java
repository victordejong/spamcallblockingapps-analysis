package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uw3.class */
public final class uw3 implements gw3 {

    /* renamed from: a */
    private final C6694la f30995a;

    /* renamed from: c */
    private final String f30997c;

    /* renamed from: d */
    private yr3 f30998d;

    /* renamed from: e */
    private String f30999e;

    /* renamed from: g */
    private int f31001g;

    /* renamed from: h */
    private boolean f31002h;

    /* renamed from: i */
    private boolean f31003i;

    /* renamed from: j */
    private long f31004j;

    /* renamed from: k */
    private int f31005k;

    /* renamed from: f */
    private int f31000f = 0;

    /* renamed from: b */
    private final or3 f30996b = new or3();

    /* renamed from: l */
    private long f31006l = -9223372036854775807L;

    public uw3(String str) {
        C6694la c6694la = new C6694la(4);
        this.f30995a = c6694la;
        c6694la.m13634q()[0] = (byte) (-1);
        this.f30997c = str;
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: a */
    public final void mo8681a() {
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: b */
    public final void mo8680b(xq3 xq3Var, tx3 tx3Var) {
        tx3Var.m10475a();
        this.f30999e = tx3Var.m10473c();
        this.f30998d = xq3Var.mo8690o(tx3Var.m10474b(), 1);
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: c */
    public final void mo8679c(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f31006l = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: d */
    public final void mo8678d(C6694la c6694la) {
        or3 or3Var;
        C7173y8.m8894e(this.f30998d);
        while (c6694la.m13639l() > 0) {
            int i = this.f31000f;
            if (i == 0) {
                byte[] m13634q = c6694la.m13634q();
                int m13636o = c6694la.m13636o();
                int m13638m = c6694la.m13638m();
                while (true) {
                    if (m13636o >= m13638m) {
                        c6694la.m13635p(m13638m);
                        break;
                    }
                    byte b = m13634q[m13636o];
                    boolean z = (b & 255) == 255;
                    boolean z2 = this.f31003i && (b & 224) == 224;
                    this.f31003i = z;
                    if (z2) {
                        c6694la.m13635p(m13636o + 1);
                        this.f31003i = false;
                        this.f30995a.m13634q()[1] = m13634q[m13636o];
                        this.f31001g = 2;
                        this.f31000f = 1;
                        break;
                    }
                    m13636o++;
                }
            } else if (i != 1) {
                int min = Math.min(c6694la.m13639l(), this.f31005k - this.f31001g);
                wr3.m9478b(this.f30998d, c6694la, min);
                int i2 = this.f31001g + min;
                this.f31001g = i2;
                int i3 = this.f31005k;
                if (i2 >= i3) {
                    long j = this.f31006l;
                    if (j != -9223372036854775807L) {
                        this.f30998d.mo8705c(j, 1, i3, 0, null);
                        this.f31006l += this.f31004j;
                    }
                    this.f31001g = 0;
                    this.f31000f = 0;
                }
            } else {
                int min2 = Math.min(c6694la.m13639l(), 4 - this.f31001g);
                c6694la.m13630u(this.f30995a.m13634q(), this.f31001g, min2);
                int i4 = this.f31001g + min2;
                this.f31001g = i4;
                if (i4 >= 4) {
                    this.f30995a.m13635p(0);
                    if (!this.f30996b.m12540a(this.f30995a.m13655D())) {
                        this.f31001g = 0;
                        this.f31000f = 1;
                    } else {
                        this.f31005k = this.f30996b.f27698c;
                        if (!this.f31002h) {
                            this.f31004j = (or3Var.f27702g * 1000000) / or3Var.f27699d;
                            C6947s4 c6947s4 = new C6947s4();
                            c6947s4.m11144d(this.f30999e);
                            c6947s4.m11129n(this.f30996b.f27697b);
                            c6947s4.m11128o(4096);
                            c6947s4.m11175B(this.f30996b.f27700e);
                            c6947s4.m11174C(this.f30996b.f27699d);
                            c6947s4.m11138g(this.f30997c);
                            this.f30998d.mo8704d(c6947s4.m11168I());
                            this.f31002h = true;
                        }
                        this.f30995a.m13635p(0);
                        wr3.m9478b(this.f30998d, this.f30995a, 4);
                        this.f31000f = 2;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.gw3
    public final void zza() {
        this.f31000f = 0;
        this.f31001g = 0;
        this.f31003i = false;
        this.f31006l = -9223372036854775807L;
    }
}
