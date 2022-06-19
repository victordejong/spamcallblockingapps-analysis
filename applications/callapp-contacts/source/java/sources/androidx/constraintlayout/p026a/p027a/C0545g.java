package androidx.constraintlayout.p026a.p027a;

import androidx.constraintlayout.p026a.C0557d;
import androidx.constraintlayout.p026a.p027a.C0541e;
import java.util.ArrayList;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.a.a.g */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/g.class */
public final class C0545g extends C0552l {

    /* renamed from: bo */
    private C0541e[] f2185bo;

    /* renamed from: a */
    public int f2164a = -1;

    /* renamed from: b */
    public int f2180b = -1;

    /* renamed from: c */
    public int f2187c = -1;

    /* renamed from: d */
    public int f2188d = -1;

    /* renamed from: aI */
    public int f2165aI = -1;

    /* renamed from: aJ */
    public int f2166aJ = -1;

    /* renamed from: aK */
    public float f2167aK = 0.5f;

    /* renamed from: aL */
    public float f2168aL = 0.5f;

    /* renamed from: aM */
    public float f2169aM = 0.5f;

    /* renamed from: aN */
    public float f2170aN = 0.5f;

    /* renamed from: aO */
    public float f2171aO = 0.5f;

    /* renamed from: aP */
    public float f2172aP = 0.5f;

    /* renamed from: aQ */
    public int f2173aQ = 0;

    /* renamed from: aR */
    public int f2174aR = 0;

    /* renamed from: aS */
    public int f2175aS = 2;

    /* renamed from: aT */
    public int f2176aT = 2;

    /* renamed from: aU */
    public int f2177aU = 0;

    /* renamed from: aV */
    public int f2178aV = -1;

    /* renamed from: aW */
    public int f2179aW = 0;

    /* renamed from: bk */
    private ArrayList<C0546a> f2181bk = new ArrayList<>();

    /* renamed from: bl */
    private C0541e[] f2182bl = null;

    /* renamed from: bm */
    private C0541e[] f2183bm = null;

    /* renamed from: bn */
    private int[] f2184bn = null;

    /* renamed from: bp */
    private int f2186bp = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.a.a.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/g$a.class */
    public final class C0546a {

        /* renamed from: a */
        C0541e f2189a = null;

        /* renamed from: b */
        int f2190b = 0;

        /* renamed from: c */
        int f2191c = 0;

        /* renamed from: d */
        int f2192d = 0;

        /* renamed from: e */
        int f2193e = 0;

        /* renamed from: f */
        int f2194f = 0;

        /* renamed from: g */
        int f2195g = 0;

        /* renamed from: i */
        private int f2197i;

        /* renamed from: j */
        private C0538d f2198j;

        /* renamed from: k */
        private C0538d f2199k;

        /* renamed from: l */
        private C0538d f2200l;

        /* renamed from: m */
        private C0538d f2201m;

        /* renamed from: n */
        private int f2202n;

        /* renamed from: o */
        private int f2203o;

        /* renamed from: p */
        private int f2204p;

        /* renamed from: q */
        private int f2205q;

        /* renamed from: r */
        private int f2206r;

        public C0546a(int i, C0538d c0538d, C0538d c0538d2, C0538d c0538d3, C0538d c0538d4, int i2) {
            C0545g.this = r4;
            this.f2197i = 0;
            this.f2202n = 0;
            this.f2203o = 0;
            this.f2204p = 0;
            this.f2205q = 0;
            this.f2206r = 0;
            this.f2197i = i;
            this.f2198j = c0538d;
            this.f2199k = c0538d2;
            this.f2200l = c0538d3;
            this.f2201m = c0538d4;
            this.f2202n = r4.f2224bd;
            this.f2203o = r4.f2219aZ;
            this.f2204p = r4.f2225be;
            this.f2205q = r4.f2221ba;
            this.f2206r = i2;
        }

        /* renamed from: a */
        public final int m45201a() {
            return this.f2197i == 0 ? this.f2191c - C0545g.this.f2173aQ : this.f2191c;
        }

        /* renamed from: a */
        public final void m45200a(int i) {
            int i2 = this.f2195g;
            if (i2 == 0) {
                return;
            }
            int i3 = this.f2194f;
            int i4 = i / i2;
            for (int i5 = 0; i5 < i3 && this.f2193e + i5 < C0545g.this.f2186bp; i5++) {
                C0541e c0541e = C0545g.this.f2185bo[this.f2193e + i5];
                if (this.f2197i == 0) {
                    if (c0541e != null && c0541e.f2059R[0] == C0541e.EnumC0543a.MATCH_CONSTRAINT && c0541e.f2120o == 0) {
                        C0545g.this.m45173a(c0541e, C0541e.EnumC0543a.FIXED, i4, c0541e.f2059R[1], c0541e.m45255p());
                    }
                } else if (c0541e != null && c0541e.f2059R[1] == C0541e.EnumC0543a.MATCH_CONSTRAINT && c0541e.f2121p == 0) {
                    C0545g.this.m45173a(c0541e, c0541e.f2059R[0], c0541e.m45257o(), C0541e.EnumC0543a.FIXED, i4);
                }
            }
            this.f2191c = 0;
            this.f2192d = 0;
            this.f2189a = null;
            this.f2190b = 0;
            int i6 = this.f2194f;
            for (int i7 = 0; i7 < i6 && this.f2193e + i7 < C0545g.this.f2186bp; i7++) {
                C0541e c0541e2 = C0545g.this.f2185bo[this.f2193e + i7];
                if (this.f2197i == 0) {
                    int m45257o = c0541e2.m45257o();
                    int i8 = C0545g.this.f2173aQ;
                    if (c0541e2.f2091ak == 8) {
                        i8 = 0;
                    }
                    this.f2191c += m45257o + i8;
                    int m45220b = C0545g.this.m45220b(c0541e2, this.f2206r);
                    if (this.f2189a == null || this.f2190b < m45220b) {
                        this.f2189a = c0541e2;
                        this.f2190b = m45220b;
                        this.f2192d = m45220b;
                    }
                } else {
                    int m45223a = C0545g.this.m45223a(c0541e2, this.f2206r);
                    int m45220b2 = C0545g.this.m45220b(c0541e2, this.f2206r);
                    int i9 = C0545g.this.f2174aR;
                    if (c0541e2.f2091ak == 8) {
                        i9 = 0;
                    }
                    this.f2192d += m45220b2 + i9;
                    if (this.f2189a == null || this.f2190b < m45223a) {
                        this.f2189a = c0541e2;
                        this.f2190b = m45223a;
                        this.f2191c = m45223a;
                    }
                }
            }
        }

        /* renamed from: a */
        public final void m45199a(int i, C0538d c0538d, C0538d c0538d2, C0538d c0538d3, C0538d c0538d4, int i2, int i3, int i4, int i5, int i6) {
            this.f2197i = i;
            this.f2198j = c0538d;
            this.f2199k = c0538d2;
            this.f2200l = c0538d3;
            this.f2201m = c0538d4;
            this.f2202n = i2;
            this.f2203o = i3;
            this.f2204p = i4;
            this.f2205q = i5;
            this.f2206r = i6;
        }

        /* renamed from: a */
        public final void m45198a(C0541e c0541e) {
            int i = 0;
            if (this.f2197i == 0) {
                int m45223a = C0545g.this.m45223a(c0541e, this.f2206r);
                if (c0541e.f2059R[0] == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
                    this.f2195g++;
                    m45223a = 0;
                }
                int i2 = C0545g.this.f2173aQ;
                if (c0541e.f2091ak == 8) {
                    i2 = 0;
                }
                this.f2191c += m45223a + i2;
                int m45220b = C0545g.this.m45220b(c0541e, this.f2206r);
                if (this.f2189a == null || this.f2190b < m45220b) {
                    this.f2189a = c0541e;
                    this.f2190b = m45220b;
                    this.f2192d = m45220b;
                }
            } else {
                int m45223a2 = C0545g.this.m45223a(c0541e, this.f2206r);
                int m45220b2 = C0545g.this.m45220b(c0541e, this.f2206r);
                if (c0541e.f2059R[1] == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
                    this.f2195g++;
                    m45220b2 = 0;
                }
                int i3 = C0545g.this.f2174aR;
                if (c0541e.f2091ak != 8) {
                    i = i3;
                }
                this.f2192d += m45220b2 + i;
                if (this.f2189a == null || this.f2190b < m45223a2) {
                    this.f2189a = c0541e;
                    this.f2190b = m45223a2;
                    this.f2191c = m45223a2;
                }
            }
            this.f2194f++;
        }

        /* renamed from: a */
        public final void m45197a(boolean z, int i, boolean z2) {
            int i2;
            float f;
            int i3;
            C0541e c0541e;
            float f2;
            int i4;
            int i5 = this.f2194f;
            for (int i6 = 0; i6 < i5 && this.f2193e + i6 < C0545g.this.f2186bp; i6++) {
                C0541e c0541e2 = C0545g.this.f2185bo[this.f2193e + i6];
                if (c0541e2 != null) {
                    c0541e2.m45249v();
                }
            }
            if (i5 == 0 || this.f2189a == null) {
                return;
            }
            boolean z3 = z2 && i == 0;
            int i7 = 0;
            int i8 = -1;
            int i9 = -1;
            while (true) {
                i2 = i9;
                if (i7 >= i5) {
                    break;
                }
                int i10 = z ? (i5 - 1) - i7 : i7;
                if (this.f2193e + i10 >= C0545g.this.f2186bp) {
                    break;
                }
                int i11 = i8;
                int i12 = i2;
                if (C0545g.this.f2185bo[this.f2193e + i10].f2091ak == 0) {
                    int i13 = i8;
                    if (i8 == -1) {
                        i13 = i7;
                    }
                    i12 = i7;
                    i11 = i13;
                }
                i7++;
                i8 = i11;
                i9 = i12;
            }
            C0541e c0541e3 = null;
            C0541e c0541e4 = null;
            if (this.f2197i != 0) {
                C0541e c0541e5 = this.f2189a;
                c0541e5.f2104ax = C0545g.this.f2164a;
                int i14 = this.f2202n;
                int i15 = i14;
                if (i > 0) {
                    i15 = i14 + C0545g.this.f2173aQ;
                }
                if (z) {
                    c0541e5.f2051J.m45307a(this.f2200l, i15);
                    if (z2) {
                        c0541e5.f2049H.m45307a(this.f2198j, this.f2204p);
                    }
                    if (i > 0) {
                        this.f2200l.f2034d.f2049H.m45307a(c0541e5.f2051J, 0);
                    }
                } else {
                    c0541e5.f2049H.m45307a(this.f2198j, i15);
                    if (z2) {
                        c0541e5.f2051J.m45307a(this.f2200l, this.f2204p);
                    }
                    if (i > 0) {
                        this.f2198j.f2034d.f2051J.m45307a(c0541e5.f2049H, 0);
                    }
                }
                int i16 = 0;
                while (i16 < i5 && this.f2193e + i16 < C0545g.this.f2186bp) {
                    C0541e c0541e6 = C0545g.this.f2185bo[this.f2193e + i16];
                    if (i16 == 0) {
                        c0541e6.m45291a(c0541e6.f2050I, this.f2199k, this.f2203o);
                        int i17 = C0545g.this.f2180b;
                        float f3 = C0545g.this.f2168aL;
                        if (this.f2193e != 0 || C0545g.this.f2188d == -1) {
                            i3 = i17;
                            f = f3;
                            if (z2) {
                                i3 = i17;
                                f = f3;
                                if (C0545g.this.f2166aJ != -1) {
                                    i3 = C0545g.this.f2166aJ;
                                    f = C0545g.this.f2172aP;
                                }
                            }
                        } else {
                            i3 = C0545g.this.f2188d;
                            f = C0545g.this.f2170aN;
                        }
                        c0541e6.f2105ay = i3;
                        c0541e6.f2089ai = f;
                    }
                    if (i16 == i5 - 1) {
                        c0541e6.m45291a(c0541e6.f2052K, this.f2201m, this.f2205q);
                    }
                    if (c0541e3 != null) {
                        c0541e6.f2050I.m45307a(c0541e3.f2052K, C0545g.this.f2174aR);
                        if (i16 == i8) {
                            c0541e6.f2050I.m45304b(this.f2203o);
                        }
                        c0541e3.f2052K.m45307a(c0541e6.f2050I, 0);
                        if (i16 == i2 + 1) {
                            c0541e3.f2052K.m45304b(this.f2205q);
                        }
                    }
                    if (c0541e6 != c0541e5) {
                        if (z) {
                            int i18 = C0545g.this.f2175aS;
                            if (i18 == 0) {
                                c0541e6.f2051J.m45307a(c0541e5.f2051J, 0);
                            } else if (i18 == 1) {
                                c0541e6.f2049H.m45307a(c0541e5.f2049H, 0);
                            } else if (i18 == 2) {
                                c0541e6.f2049H.m45307a(c0541e5.f2049H, 0);
                                c0541e6.f2051J.m45307a(c0541e5.f2051J, 0);
                            }
                        } else {
                            int i19 = C0545g.this.f2175aS;
                            if (i19 == 0) {
                                c0541e6.f2049H.m45307a(c0541e5.f2049H, 0);
                            } else if (i19 == 1) {
                                c0541e6.f2051J.m45307a(c0541e5.f2051J, 0);
                            } else if (i19 == 2) {
                                if (z3) {
                                    c0541e6.f2049H.m45307a(this.f2198j, this.f2202n);
                                    c0541e6.f2051J.m45307a(this.f2200l, this.f2204p);
                                } else {
                                    c0541e6.f2049H.m45307a(c0541e5.f2049H, 0);
                                    c0541e6.f2051J.m45307a(c0541e5.f2051J, 0);
                                }
                            }
                        }
                    }
                    i16++;
                    c0541e3 = c0541e6;
                }
                return;
            }
            C0541e c0541e7 = this.f2189a;
            c0541e7.f2105ay = C0545g.this.f2180b;
            int i20 = this.f2203o;
            int i21 = i20;
            if (i > 0) {
                i21 = i20 + C0545g.this.f2174aR;
            }
            c0541e7.f2050I.m45307a(this.f2199k, i21);
            if (z2) {
                c0541e7.f2052K.m45307a(this.f2201m, this.f2205q);
            }
            if (i > 0) {
                this.f2199k.f2034d.f2052K.m45307a(c0541e7.f2050I, 0);
            }
            if (C0545g.this.f2176aT == 3 && !c0541e7.f2044C) {
                for (int i22 = 0; i22 < i5; i22++) {
                    int i23 = z ? (i5 - 1) - i22 : i22;
                    if (this.f2193e + i23 >= C0545g.this.f2186bp) {
                        break;
                    }
                    c0541e = C0545g.this.f2185bo[this.f2193e + i23];
                    if (c0541e.f2044C) {
                        break;
                    }
                }
            }
            c0541e = c0541e7;
            int i24 = 0;
            while (i24 < i5) {
                int i25 = z ? (i5 - 1) - i24 : i24;
                if (this.f2193e + i25 >= C0545g.this.f2186bp) {
                    return;
                }
                C0541e c0541e8 = C0545g.this.f2185bo[this.f2193e + i25];
                if (i24 == 0) {
                    c0541e8.m45291a(c0541e8.f2049H, this.f2198j, this.f2202n);
                }
                if (i25 == 0) {
                    int i26 = C0545g.this.f2164a;
                    float f4 = C0545g.this.f2167aK;
                    if (this.f2193e != 0 || C0545g.this.f2187c == -1) {
                        i4 = i26;
                        f2 = f4;
                        if (z2) {
                            i4 = i26;
                            f2 = f4;
                            if (C0545g.this.f2165aI != -1) {
                                i4 = C0545g.this.f2165aI;
                                f2 = C0545g.this.f2171aO;
                            }
                        }
                    } else {
                        i4 = C0545g.this.f2187c;
                        f2 = C0545g.this.f2169aM;
                    }
                    c0541e8.f2104ax = i4;
                    c0541e8.f2088ah = f2;
                }
                if (i24 == i5 - 1) {
                    c0541e8.m45291a(c0541e8.f2051J, this.f2200l, this.f2204p);
                }
                if (c0541e4 != null) {
                    c0541e8.f2049H.m45307a(c0541e4.f2051J, C0545g.this.f2173aQ);
                    if (i24 == i8) {
                        c0541e8.f2049H.m45304b(this.f2202n);
                    }
                    c0541e4.f2051J.m45307a(c0541e8.f2049H, 0);
                    if (i24 == i2 + 1) {
                        c0541e4.f2051J.m45304b(this.f2204p);
                    }
                }
                if (c0541e8 != c0541e7) {
                    if (C0545g.this.f2176aT != 3 || !c0541e.f2044C || c0541e8 == c0541e || !c0541e8.f2044C) {
                        int i27 = C0545g.this.f2176aT;
                        if (i27 == 0) {
                            c0541e8.f2050I.m45307a(c0541e7.f2050I, 0);
                        } else if (i27 == 1) {
                            c0541e8.f2052K.m45307a(c0541e7.f2052K, 0);
                        } else if (z3) {
                            c0541e8.f2050I.m45307a(this.f2199k, this.f2203o);
                            c0541e8.f2052K.m45307a(this.f2201m, this.f2205q);
                        } else {
                            c0541e8.f2050I.m45307a(c0541e7.f2050I, 0);
                            c0541e8.f2052K.m45307a(c0541e7.f2052K, 0);
                        }
                    } else {
                        c0541e8.f2053L.m45307a(c0541e.f2053L, 0);
                    }
                }
                i24++;
                c0541e4 = c0541e8;
            }
        }

        /* renamed from: b */
        public final int m45196b() {
            return this.f2197i == 1 ? this.f2192d - C0545g.this.f2174aR : this.f2192d;
        }
    }

    /* renamed from: a */
    public final int m45223a(C0541e c0541e, int i) {
        if (c0541e == null) {
            return 0;
        }
        if (c0541e.f2059R[0] == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
            if (c0541e.f2120o == 0) {
                return 0;
            }
            if (c0541e.f2120o == 2) {
                int i2 = (int) (c0541e.f2125t * i);
                if (i2 != c0541e.m45257o()) {
                    c0541e.m45285a(true);
                    m45173a(c0541e, C0541e.EnumC0543a.FIXED, i2, c0541e.f2059R[1], c0541e.m45255p());
                }
                return i2;
            } else if (c0541e.f2120o == 1) {
                return c0541e.m45257o();
            } else {
                if (c0541e.f2120o == 3) {
                    return (int) ((c0541e.m45255p() * c0541e.f2063V) + 0.5f);
                }
            }
        }
        return c0541e.m45257o();
    }

    /* renamed from: b */
    public final int m45220b(C0541e c0541e, int i) {
        if (c0541e == null) {
            return 0;
        }
        if (c0541e.f2059R[1] == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
            if (c0541e.f2121p == 0) {
                return 0;
            }
            if (c0541e.f2121p == 2) {
                int i2 = (int) (c0541e.f2128w * i);
                if (i2 != c0541e.m45255p()) {
                    c0541e.m45285a(true);
                    m45173a(c0541e, c0541e.f2059R[0], c0541e.m45257o(), C0541e.EnumC0543a.FIXED, i2);
                }
                return i2;
            } else if (c0541e.f2121p == 1) {
                return c0541e.m45255p();
            } else {
                if (c0541e.f2121p == 3) {
                    return (int) ((c0541e.m45257o() * c0541e.f2063V) + 0.5f);
                }
            }
        }
        return c0541e.m45255p();
    }

    /* JADX WARN: Removed duplicated region for block: B:307:0x0a95  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0a9b  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0ad0  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0ad6  */
    @Override // androidx.constraintlayout.p026a.p027a.C0552l
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo45174a(int r13, int r14, int r15, int r16) {
        /*
            Method dump skipped, instructions count: 2784
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.p027a.C0545g.mo45174a(int, int, int, int):void");
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0550j, androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: a */
    public final void mo45180a(C0541e c0541e, HashMap<C0541e, C0541e> hashMap) {
        super.mo45180a(c0541e, hashMap);
        C0545g c0545g = (C0545g) c0541e;
        this.f2164a = c0545g.f2164a;
        this.f2180b = c0545g.f2180b;
        this.f2187c = c0545g.f2187c;
        this.f2188d = c0545g.f2188d;
        this.f2165aI = c0545g.f2165aI;
        this.f2166aJ = c0545g.f2166aJ;
        this.f2167aK = c0545g.f2167aK;
        this.f2168aL = c0545g.f2168aL;
        this.f2169aM = c0545g.f2169aM;
        this.f2170aN = c0545g.f2170aN;
        this.f2171aO = c0545g.f2171aO;
        this.f2172aP = c0545g.f2172aP;
        this.f2173aQ = c0545g.f2173aQ;
        this.f2174aR = c0545g.f2174aR;
        this.f2175aS = c0545g.f2175aS;
        this.f2176aT = c0545g.f2176aT;
        this.f2177aU = c0545g.f2177aU;
        this.f2178aV = c0545g.f2178aV;
        this.f2179aW = c0545g.f2179aW;
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: a */
    public final void mo45192a(C0557d c0557d, boolean z) {
        C0541e c0541e;
        super.mo45192a(c0557d, z);
        boolean z2 = this.f2060S != null ? ((C0544f) this.f2060S).f2163d : false;
        int i = this.f2177aU;
        if (i != 0) {
            if (i == 1) {
                int size = this.f2181bk.size();
                int i2 = 0;
                while (i2 < size) {
                    this.f2181bk.get(i2).m45197a(z2, i2, i2 == size - 1);
                    i2++;
                }
            } else if (i == 2 && this.f2184bn != null && this.f2183bm != null && this.f2182bl != null) {
                for (int i3 = 0; i3 < this.f2186bp; i3++) {
                    this.f2185bo[i3].m45249v();
                }
                int[] iArr = this.f2184bn;
                int i4 = iArr[0];
                int i5 = iArr[1];
                C0541e c0541e2 = null;
                int i6 = 0;
                while (i6 < i4) {
                    C0541e c0541e3 = this.f2183bm[z2 ? (i4 - i6) - 1 : i6];
                    C0541e c0541e4 = c0541e2;
                    if (c0541e3 != null) {
                        c0541e4 = c0541e2;
                        if (c0541e3.f2091ak != 8) {
                            if (i6 == 0) {
                                c0541e3.m45291a(c0541e3.f2049H, this.f2049H, this.f2224bd);
                                c0541e3.f2104ax = this.f2164a;
                                c0541e3.f2088ah = this.f2167aK;
                            }
                            if (i6 == i4 - 1) {
                                c0541e3.m45291a(c0541e3.f2051J, this.f2051J, this.f2225be);
                            }
                            if (i6 > 0) {
                                c0541e3.m45291a(c0541e3.f2049H, c0541e2.f2051J, this.f2173aQ);
                                c0541e2.m45291a(c0541e2.f2051J, c0541e3.f2049H, 0);
                            }
                            c0541e4 = c0541e3;
                        }
                    }
                    i6++;
                    c0541e2 = c0541e4;
                }
                int i7 = 0;
                while (true) {
                    C0541e c0541e5 = c0541e2;
                    if (i7 >= i5) {
                        break;
                    }
                    C0541e c0541e6 = this.f2182bl[i7];
                    c0541e2 = c0541e5;
                    if (c0541e6 != null) {
                        c0541e2 = c0541e5;
                        if (c0541e6.f2091ak != 8) {
                            if (i7 == 0) {
                                c0541e6.m45291a(c0541e6.f2050I, this.f2050I, this.f2219aZ);
                                c0541e6.f2105ay = this.f2180b;
                                c0541e6.f2089ai = this.f2168aL;
                            }
                            if (i7 == i5 - 1) {
                                c0541e6.m45291a(c0541e6.f2052K, this.f2052K, this.f2221ba);
                            }
                            if (i7 > 0) {
                                c0541e6.m45291a(c0541e6.f2050I, c0541e5.f2052K, this.f2174aR);
                                c0541e5.m45291a(c0541e5.f2052K, c0541e6.f2050I, 0);
                            }
                            c0541e2 = c0541e6;
                        }
                    }
                    i7++;
                }
                for (int i8 = 0; i8 < i4; i8++) {
                    for (int i9 = 0; i9 < i5; i9++) {
                        int i10 = (i9 * i4) + i8;
                        if (this.f2179aW == 1) {
                            i10 = (i8 * i5) + i9;
                        }
                        C0541e[] c0541eArr = this.f2185bo;
                        if (i10 < c0541eArr.length && (c0541e = c0541eArr[i10]) != null && c0541e.f2091ak != 8) {
                            C0541e c0541e7 = this.f2183bm[i8];
                            C0541e c0541e8 = this.f2182bl[i9];
                            if (c0541e != c0541e7) {
                                c0541e.m45291a(c0541e.f2049H, c0541e7.f2049H, 0);
                                c0541e.m45291a(c0541e.f2051J, c0541e7.f2051J, 0);
                            }
                            if (c0541e != c0541e8) {
                                c0541e.m45291a(c0541e.f2050I, c0541e8.f2050I, 0);
                                c0541e.m45291a(c0541e.f2052K, c0541e8.f2052K, 0);
                            }
                        }
                    }
                }
            }
        } else if (this.f2181bk.size() > 0) {
            this.f2181bk.get(0).m45197a(z2, 0, true);
        }
        this.f2226bf = false;
    }
}
