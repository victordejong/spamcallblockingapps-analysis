package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bw3.class */
public final class bw3 implements gw3 {

    /* renamed from: a */
    private static final byte[] f20980a = {73, 68, 51};

    /* renamed from: b */
    private final boolean f20981b;

    /* renamed from: e */
    private final String f20984e;

    /* renamed from: f */
    private String f20985f;

    /* renamed from: g */
    private yr3 f20986g;

    /* renamed from: h */
    private yr3 f20987h;

    /* renamed from: i */
    private int f20988i;

    /* renamed from: j */
    private int f20989j;

    /* renamed from: k */
    private int f20990k;

    /* renamed from: l */
    private boolean f20991l;

    /* renamed from: m */
    private boolean f20992m;

    /* renamed from: p */
    private int f20995p;

    /* renamed from: q */
    private boolean f20996q;

    /* renamed from: s */
    private int f20998s;

    /* renamed from: u */
    private yr3 f21000u;

    /* renamed from: v */
    private long f21001v;

    /* renamed from: c */
    private final C6657ka f20982c = new C6657ka(new byte[7], 7);

    /* renamed from: d */
    private final C6694la f20983d = new C6694la(Arrays.copyOf(f20980a, 10));

    /* renamed from: n */
    private int f20993n = -1;

    /* renamed from: o */
    private int f20994o = -1;

    /* renamed from: r */
    private long f20997r = -9223372036854775807L;

    /* renamed from: t */
    private long f20999t = -9223372036854775807L;

    public bw3(boolean z, String str) {
        m16188h();
        this.f20981b = z;
        this.f20984e = str;
    }

    /* renamed from: e */
    public static boolean m16191e(int i) {
        return (i & 65526) == 65520;
    }

    /* renamed from: f */
    private final void m16190f() {
        this.f20992m = false;
        m16188h();
    }

    /* renamed from: g */
    private final boolean m16189g(C6694la c6694la, byte[] bArr, int i) {
        int min = Math.min(c6694la.m13639l(), i - this.f20989j);
        c6694la.m13630u(bArr, this.f20989j, min);
        int i2 = this.f20989j + min;
        this.f20989j = i2;
        return i2 == i;
    }

    /* renamed from: h */
    private final void m16188h() {
        this.f20988i = 0;
        this.f20989j = 0;
        this.f20990k = 256;
    }

    /* renamed from: i */
    private final void m16187i(yr3 yr3Var, long j, int i, int i2) {
        this.f20988i = 4;
        this.f20989j = i;
        this.f21000u = yr3Var;
        this.f21001v = j;
        this.f20998s = i2;
    }

    /* renamed from: j */
    private final void m16186j() {
        this.f20988i = 3;
        this.f20989j = 0;
    }

    /* renamed from: k */
    private static final boolean m16185k(byte b, byte b2) {
        return m16191e((b2 & 255) | 65280);
    }

    /* renamed from: l */
    private static final boolean m16184l(C6694la c6694la, byte[] bArr, int i) {
        if (c6694la.m13639l() < i) {
            return false;
        }
        c6694la.m13630u(bArr, 0, i);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: a */
    public final void mo8681a() {
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: b */
    public final void mo8680b(xq3 xq3Var, tx3 tx3Var) {
        tx3Var.m10475a();
        this.f20985f = tx3Var.m10473c();
        yr3 mo8690o = xq3Var.mo8690o(tx3Var.m10474b(), 1);
        this.f20986g = mo8690o;
        this.f21000u = mo8690o;
        if (!this.f20981b) {
            this.f20987h = new tq3();
            return;
        }
        tx3Var.m10475a();
        yr3 mo8690o2 = xq3Var.mo8690o(tx3Var.m10474b(), 5);
        this.f20987h = mo8690o2;
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11144d(tx3Var.m10473c());
        c6947s4.m11129n("application/id3");
        mo8690o2.mo8704d(c6947s4.m11168I());
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: c */
    public final void mo8679c(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f20999t = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: d */
    public final void mo8678d(C6694la c6694la) {
        int i;
        int i2;
        int i3;
        Objects.requireNonNull(this.f20986g);
        int i4 = C7101wa.f31475a;
        while (c6694la.m13639l() > 0) {
            int i5 = this.f20988i;
            if (i5 == 0) {
                byte[] m13634q = c6694la.m13634q();
                int m13636o = c6694la.m13636o();
                int m13638m = c6694la.m13638m();
                while (true) {
                    if (m13636o >= m13638m) {
                        c6694la.m13635p(m13636o);
                        break;
                    }
                    i = m13636o + 1;
                    i2 = m13634q[m13636o] & 255;
                    if (this.f20990k == 512 && m16185k((byte) -1, (byte) i2)) {
                        if (this.f20992m) {
                            break;
                        }
                        int i6 = i - 2;
                        c6694la.m13635p(i6 + 1);
                        if (m16184l(c6694la, this.f20982c.f25088a, 1)) {
                            this.f20982c.m13951d(4);
                            int m13947h = this.f20982c.m13947h(1);
                            int i7 = this.f20993n;
                            if (i7 == -1 || m13947h == i7) {
                                if (this.f20994o != -1) {
                                    if (!m16184l(c6694la, this.f20982c.f25088a, 1)) {
                                        break;
                                    }
                                    this.f20982c.m13951d(2);
                                    if (this.f20982c.m13947h(4) == this.f20994o) {
                                        c6694la.m13635p(i6 + 2);
                                    }
                                }
                                if (!m16184l(c6694la, this.f20982c.f25088a, 4)) {
                                    break;
                                }
                                this.f20982c.m13951d(14);
                                int m13947h2 = this.f20982c.m13947h(13);
                                if (m13947h2 >= 7) {
                                    byte[] m13634q2 = c6694la.m13634q();
                                    int m13638m2 = c6694la.m13638m();
                                    int i8 = i6 + m13947h2;
                                    if (i8 >= m13638m2) {
                                        break;
                                    } else if ((r0 = m13634q2[i8]) == -1) {
                                    }
                                }
                            }
                        }
                    }
                    int i9 = this.f20990k;
                    int i10 = i9 | i2;
                    if (i10 == 329) {
                        i3 = 768;
                    } else if (i10 == 511) {
                        i3 = 512;
                    } else if (i10 == 836) {
                        i3 = 1024;
                    } else if (i10 == 1075) {
                        this.f20988i = 2;
                        this.f20989j = 3;
                        this.f20998s = 0;
                        this.f20983d.m13635p(0);
                        c6694la.m13635p(i);
                        break;
                    } else if (i9 != 256) {
                        this.f20990k = 256;
                        m13636o = i - 1;
                    } else {
                        m13636o = i;
                    }
                    this.f20990k = i3;
                    m13636o = i;
                }
                this.f20995p = (i2 & 8) >> 3;
                this.f20991l = 1 == ((i2 & 1) ^ 1);
                if (!this.f20992m) {
                    this.f20988i = 1;
                    this.f20989j = 0;
                } else {
                    m16186j();
                }
                c6694la.m13635p(i);
            } else if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 != 3) {
                        int min = Math.min(c6694la.m13639l(), this.f20998s - this.f20989j);
                        this.f21000u.mo8706b(c6694la, min);
                        int i11 = this.f20989j + min;
                        this.f20989j = i11;
                        int i12 = this.f20998s;
                        if (i11 == i12) {
                            long j = this.f20999t;
                            if (j != -9223372036854775807L) {
                                this.f21000u.mo8705c(j, 1, i12, 0, null);
                                this.f20999t += this.f21001v;
                            }
                            m16188h();
                        }
                    } else {
                        if (m16189g(c6694la, this.f20982c.f25088a, true != this.f20991l ? 5 : 7)) {
                            this.f20982c.m13951d(0);
                            if (!this.f20996q) {
                                int m13947h3 = this.f20982c.m13947h(2) + 1;
                                if (m13947h3 != 2) {
                                    StringBuilder sb = new StringBuilder(61);
                                    sb.append("Detected audio object type: ");
                                    sb.append(m13947h3);
                                    sb.append(", but assuming AAC LC.");
                                    Log.w("AdtsReader", sb.toString());
                                }
                                this.f20982c.m13949f(5);
                                int m13947h4 = this.f20982c.m13947h(3);
                                int i13 = this.f20994o;
                                int i14 = xp3.f32155c;
                                byte[] bArr = {(byte) (((i13 >> 1) & 7) | 16), (byte) (((m13947h4 << 3) & 120) | ((i13 << 7) & 128))};
                                vp3 m9089a = xp3.m9089a(bArr);
                                C6947s4 c6947s4 = new C6947s4();
                                c6947s4.m11144d(this.f20985f);
                                c6947s4.m11129n("audio/mp4a-latm");
                                c6947s4.m11132k(m9089a.f31290c);
                                c6947s4.m11175B(m9089a.f31289b);
                                c6947s4.m11174C(m9089a.f31288a);
                                c6947s4.m11127p(Collections.singletonList(bArr));
                                c6947s4.m11138g(this.f20984e);
                                C7021u4 m11168I = c6947s4.m11168I();
                                this.f20997r = 1024000000 / m11168I.f30493B;
                                this.f20986g.mo8704d(m11168I);
                                this.f20996q = true;
                            } else {
                                this.f20982c.m13949f(10);
                            }
                            this.f20982c.m13949f(4);
                            int m13947h5 = this.f20982c.m13947h(13) - 7;
                            int i15 = m13947h5;
                            if (this.f20991l) {
                                i15 = m13947h5 - 2;
                            }
                            m16187i(this.f20986g, this.f20997r, 0, i15);
                        }
                    }
                } else if (m16189g(c6694la, this.f20983d.m13634q(), 10)) {
                    this.f20987h.mo8706b(this.f20983d, 10);
                    this.f20983d.m13635p(6);
                    m16187i(this.f20987h, 0L, 10, 10 + this.f20983d.m13650a());
                }
            } else if (c6694la.m13639l() != 0) {
                this.f20982c.f25088a[0] = c6694la.m13634q()[c6694la.m13636o()];
                this.f20982c.m13951d(2);
                int m13947h6 = this.f20982c.m13947h(4);
                int i16 = this.f20994o;
                if (i16 == -1 || m13947h6 == i16) {
                    if (!this.f20992m) {
                        this.f20992m = true;
                        this.f20993n = this.f20995p;
                        this.f20994o = m13947h6;
                    }
                    m16186j();
                } else {
                    m16190f();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.gw3
    public final void zza() {
        this.f20999t = -9223372036854775807L;
        m16190f();
    }
}
