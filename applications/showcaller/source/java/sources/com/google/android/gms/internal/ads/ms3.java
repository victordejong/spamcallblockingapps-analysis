package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ms3.class */
public final class ms3 implements uq3 {

    /* renamed from: a */
    public static final br3 f26849a = ls3.f26269b;

    /* renamed from: e */
    private xq3 f26853e;

    /* renamed from: f */
    private yr3 f26854f;

    /* renamed from: h */
    private zzaiv f26856h;

    /* renamed from: i */
    private ir3 f26857i;

    /* renamed from: j */
    private int f26858j;

    /* renamed from: k */
    private int f26859k;

    /* renamed from: l */
    private ks3 f26860l;

    /* renamed from: m */
    private int f26861m;

    /* renamed from: n */
    private long f26862n;

    /* renamed from: b */
    private final byte[] f26850b = new byte[42];

    /* renamed from: c */
    private final C6694la f26851c = new C6694la(new byte[32768], 0);

    /* renamed from: d */
    private final cr3 f26852d = new cr3();

    /* renamed from: g */
    private int f26855g = 0;

    public ms3(int i) {
    }

    /* renamed from: a */
    private final long m13086a(C6694la c6694la, boolean z) {
        boolean z2;
        Objects.requireNonNull(this.f26857i);
        int m13636o = c6694la.m13636o();
        while (m13636o <= c6694la.m13638m() - 16) {
            c6694la.m13635p(m13636o);
            if (dr3.m15708a(c6694la, this.f26857i, this.f26859k, this.f26852d)) {
                c6694la.m13635p(m13636o);
                return this.f26852d.f21364a;
            }
            m13636o++;
        }
        if (!z) {
            c6694la.m13635p(m13636o);
            return -1L;
        }
        while (m13636o <= c6694la.m13638m() - this.f26858j) {
            c6694la.m13635p(m13636o);
            try {
                z2 = dr3.m15708a(c6694la, this.f26857i, this.f26859k, this.f26852d);
            } catch (IndexOutOfBoundsException e) {
                z2 = false;
            }
            if (c6694la.m13636o() <= c6694la.m13638m() && z2) {
                c6694la.m13635p(m13636o);
                return this.f26852d.f21364a;
            }
            m13636o++;
        }
        c6694la.m13635p(c6694la.m13638m());
        return -1L;
    }

    /* renamed from: b */
    private final void m13085b() {
        long j = this.f26862n;
        ir3 ir3Var = this.f26857i;
        int i = C7101wa.f31475a;
        this.f26854f.mo8705c((j * 1000000) / ir3Var.f24414e, 1, this.f26861m, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    public final int mo9044e(vq3 vq3Var, rr3 rr3Var) {
        boolean m13948g;
        ir3 ir3Var;
        gr3 gr3Var;
        int i = this.f26855g;
        boolean z = true;
        int i2 = 0;
        if (i == 0) {
            vq3Var.mo9884i();
            long mo9466j = vq3Var.mo9466j();
            zzaiv m15108a = fr3.m15108a(vq3Var, true);
            ((pq3) vq3Var).m12196p((int) (vq3Var.mo9466j() - mo9466j), false);
            this.f26856h = m15108a;
            this.f26855g = 1;
            return 0;
        } else if (i == 1) {
            ((pq3) vq3Var).mo9882l(this.f26850b, 0, 42, false);
            vq3Var.mo9884i();
            this.f26855g = 2;
            return 0;
        } else if (i == 2) {
            C6694la c6694la = new C6694la(4);
            ((pq3) vq3Var).mo9883k(c6694la.m13634q(), 0, 4, false);
            if (c6694la.m13657B() != 1716281667) {
                throw zzaha.zzb("Failed to read FLAC stream marker.", null);
            }
            this.f26855g = 3;
            return 0;
        } else if (i == 3) {
            er3 er3Var = new er3(this.f26857i);
            do {
                vq3Var.mo9884i();
                C6657ka c6657ka = new C6657ka(new byte[4], 4);
                byte[] bArr = c6657ka.f25088a;
                pq3 pq3Var = (pq3) vq3Var;
                pq3Var.mo9882l(bArr, 0, 4, false);
                m13948g = c6657ka.m13948g();
                int m13947h = c6657ka.m13947h(7);
                int m13947h2 = c6657ka.m13947h(24) + 4;
                if (m13947h == 0) {
                    byte[] bArr2 = new byte[38];
                    pq3Var.mo9883k(bArr2, 0, 38, false);
                    er3Var.f22428a = new ir3(bArr2, 4);
                } else {
                    ir3 ir3Var2 = er3Var.f22428a;
                    if (ir3Var2 == null) {
                        throw new IllegalArgumentException();
                    }
                    if (m13947h == 3) {
                        C6694la c6694la2 = new C6694la(m13947h2);
                        pq3Var.mo9883k(c6694la2.m13634q(), 0, m13947h2, false);
                        er3Var.f22428a = ir3Var2.m14290e(fr3.m15107b(c6694la2));
                    } else if (m13947h == 4) {
                        C6694la c6694la3 = new C6694la(m13947h2);
                        pq3Var.mo9883k(c6694la3.m13634q(), 0, m13947h2, false);
                        c6694la3.m13632s(4);
                        er3Var.f22428a = ir3Var2.m14289f(Arrays.asList(es3.m15388b(c6694la3, false, false).f20115b));
                    } else if (m13947h == 6) {
                        C6694la c6694la4 = new C6694la(m13947h2);
                        pq3Var.mo9883k(c6694la4.m13634q(), 0, m13947h2, false);
                        c6694la4.m13632s(4);
                        int m13655D = c6694la4.m13655D();
                        String m13646e = c6694la4.m13646e(c6694la4.m13655D(), lu2.f26278a);
                        String m13646e2 = c6694la4.m13646e(c6694la4.m13655D(), lu2.f26280c);
                        int m13655D2 = c6694la4.m13655D();
                        int m13655D3 = c6694la4.m13655D();
                        int m13655D4 = c6694la4.m13655D();
                        int m13655D5 = c6694la4.m13655D();
                        int m13655D6 = c6694la4.m13655D();
                        byte[] bArr3 = new byte[m13655D6];
                        c6694la4.m13630u(bArr3, 0, m13655D6);
                        er3Var.f22428a = ir3Var2.m14288g(Collections.singletonList(new zzajc(m13655D, m13646e, m13646e2, m13655D2, m13655D3, m13655D4, m13655D5, bArr3)));
                    } else {
                        pq3Var.m12196p(m13947h2, false);
                    }
                }
                ir3Var = er3Var.f22428a;
                int i3 = C7101wa.f31475a;
                this.f26857i = ir3Var;
            } while (!m13948g);
            Objects.requireNonNull(ir3Var);
            this.f26858j = Math.max(ir3Var.f24412c, 6);
            this.f26854f.mo8704d(this.f26857i.m14292c(this.f26850b, this.f26856h));
            this.f26855g = 4;
            return 0;
        } else if (i == 4) {
            vq3Var.mo9884i();
            C6694la c6694la5 = new C6694la(2);
            ((pq3) vq3Var).mo9882l(c6694la5.m13634q(), 0, 2, false);
            int m13628w = c6694la5.m13628w();
            if ((m13628w >> 2) != 16382) {
                vq3Var.mo9884i();
                throw zzaha.zzb("First frame does not start with sync code.", null);
            }
            vq3Var.mo9884i();
            this.f26859k = m13628w;
            xq3 xq3Var = this.f26853e;
            int i4 = C7101wa.f31475a;
            long mo9465m = vq3Var.mo9465m();
            long mo9464n = vq3Var.mo9464n();
            ir3 ir3Var3 = this.f26857i;
            Objects.requireNonNull(ir3Var3);
            if (ir3Var3.f24420k != null) {
                gr3Var = new gr3(ir3Var3, mo9465m);
            } else if (mo9464n == -1 || ir3Var3.f24419j <= 0) {
                gr3Var = new tr3(ir3Var3.m14294a(), 0L);
            } else {
                ks3 ks3Var = new ks3(ir3Var3, this.f26859k, mo9465m, mo9464n);
                this.f26860l = ks3Var;
                gr3Var = ks3Var.m13429a();
            }
            xq3Var.mo8689r(gr3Var);
            this.f26855g = 5;
            return 0;
        } else {
            Objects.requireNonNull(this.f26854f);
            Objects.requireNonNull(this.f26857i);
            ks3 ks3Var2 = this.f26860l;
            if (ks3Var2 != null && ks3Var2.m13427c()) {
                i2 = this.f26860l.m13426d(vq3Var, rr3Var);
            } else if (this.f26862n == -1) {
                this.f26862n = dr3.m15707b(vq3Var, this.f26857i);
            } else {
                int m13638m = this.f26851c.m13638m();
                if (m13638m < 32768) {
                    int mo8335c = vq3Var.mo8335c(this.f26851c.m13634q(), m13638m, 32768 - m13638m);
                    if (mo8335c != -1) {
                        z = false;
                    }
                    if (!z) {
                        this.f26851c.m13637n(m13638m + mo8335c);
                    } else if (this.f26851c.m13639l() == 0) {
                        m13085b();
                        i2 = -1;
                    }
                } else {
                    z = false;
                }
                int m13636o = this.f26851c.m13636o();
                int i5 = this.f26861m;
                int i6 = this.f26858j;
                if (i5 < i6) {
                    C6694la c6694la6 = this.f26851c;
                    c6694la6.m13632s(Math.min(i6 - i5, c6694la6.m13639l()));
                }
                long m13086a = m13086a(this.f26851c, z);
                int m13636o2 = this.f26851c.m13636o() - m13636o;
                this.f26851c.m13635p(m13636o);
                wr3.m9478b(this.f26854f, this.f26851c, m13636o2);
                this.f26861m += m13636o2;
                if (m13086a != -1) {
                    m13085b();
                    this.f26861m = 0;
                    this.f26862n = m13086a;
                }
                if (this.f26851c.m13639l() < 16) {
                    int m13639l = this.f26851c.m13639l();
                    System.arraycopy(this.f26851c.m13634q(), this.f26851c.m13636o(), this.f26851c.m13634q(), 0, m13639l);
                    this.f26851c.m13635p(0);
                    this.f26851c.m13637n(m13639l);
                    return 0;
                }
            }
            return i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    public final boolean mo9043f(vq3 vq3Var) {
        fr3.m15108a(vq3Var, false);
        C6694la c6694la = new C6694la(4);
        ((pq3) vq3Var).mo9882l(c6694la.m13634q(), 0, 4, false);
        return c6694la.m13657B() == 1716281667;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f26853e = xq3Var;
        this.f26854f = xq3Var.mo8690o(0, 1);
        xq3Var.mo8688t();
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        if (j == 0) {
            this.f26855g = 0;
        } else {
            ks3 ks3Var = this.f26860l;
            if (ks3Var != null) {
                ks3Var.m13428b(j2);
            }
        }
        this.f26862n = j2 == 0 ? (char) 0 : (char) 65535;
        this.f26861m = 0;
        this.f26851c.m13642i(0);
    }
}
