package com.esotericsoftware.p273a;

import io.objectbox.model.PropertyFlags;
/* renamed from: com.esotericsoftware.a.r */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/r.class */
public final class C9362r extends AbstractC9361q {

    /* renamed from: A */
    private C9348d f32113A;

    /* renamed from: B */
    private int f32114B;

    /* renamed from: C */
    private int[] f32115C;

    /* renamed from: D */
    private int[] f32116D;

    /* renamed from: E */
    private int f32117E;

    /* renamed from: F */
    private C9358n f32118F;

    /* renamed from: G */
    private C9358n f32119G;

    /* renamed from: H */
    private int f32120H;

    /* renamed from: I */
    private C9348d f32121I;

    /* renamed from: J */
    private int f32122J;

    /* renamed from: K */
    private C9348d f32123K;

    /* renamed from: L */
    private int f32124L;

    /* renamed from: M */
    private C9348d f32125M;

    /* renamed from: N */
    private int f32126N;

    /* renamed from: O */
    private C9348d f32127O;

    /* renamed from: P */
    private int f32128P;

    /* renamed from: Q */
    private C9346b f32129Q;

    /* renamed from: R */
    private C9346b f32130R;

    /* renamed from: S */
    private C9347c f32131S;

    /* renamed from: T */
    private boolean f32132T;

    /* renamed from: U */
    private int f32133U;

    /* renamed from: V */
    private final int f32134V;

    /* renamed from: W */
    private C9360p f32135W;

    /* renamed from: X */
    private C9360p f32136X;

    /* renamed from: Y */
    private C9360p f32137Y;

    /* renamed from: Z */
    private int f32138Z;

    /* renamed from: aa */
    private int f32139aa;

    /* renamed from: c */
    final C9351g f32140c;

    /* renamed from: d */
    String f32141d;

    /* renamed from: e */
    int f32142e;

    /* renamed from: f */
    int f32143f;

    /* renamed from: g */
    int f32144g;

    /* renamed from: h */
    int[] f32145h;

    /* renamed from: i */
    private int f32146i;

    /* renamed from: j */
    private final int f32147j;

    /* renamed from: k */
    private final int f32148k;

    /* renamed from: l */
    private final String f32149l;

    /* renamed from: m */
    private C9348d f32150m;

    /* renamed from: n */
    private C9346b f32151n;

    /* renamed from: o */
    private C9346b f32152o;

    /* renamed from: p */
    private C9346b f32153p;

    /* renamed from: q */
    private C9346b f32154q;

    /* renamed from: r */
    private C9346b[] f32155r;

    /* renamed from: s */
    private C9346b[] f32156s;

    /* renamed from: t */
    private int f32157t;

    /* renamed from: u */
    private C9347c f32158u;

    /* renamed from: v */
    private C9348d f32159v = new C9348d();

    /* renamed from: w */
    private int f32160w;

    /* renamed from: x */
    private int f32161x;

    /* renamed from: y */
    private int f32162y;

    /* renamed from: z */
    private int f32163z;

    public C9362r(C9351g c9351g, int i, String str, String str2, String str3, String[] strArr, boolean z, boolean z2) {
        super(327680);
        if (c9351g.f32028t == null) {
            c9351g.f32028t = this;
        } else {
            c9351g.f32029u.f32112b = this;
        }
        c9351g.f32029u = this;
        this.f32140c = c9351g;
        this.f32146i = i;
        if ("<init>".equals(str)) {
            this.f32146i |= 524288;
        }
        this.f32147j = c9351g.m24606a(str);
        this.f32148k = c9351g.m24606a(str2);
        this.f32149l = str2;
        this.f32141d = str3;
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.f32144g = length;
            this.f32145h = new int[length];
            for (int i2 = 0; i2 < this.f32144g; i2++) {
                this.f32145h[i2] = c9351g.m24593c(strArr[i2]);
            }
        }
        this.f32134V = z2 ? 0 : z ? 1 : 2;
        if (z || z2) {
            int m24498e = C9364t.m24498e(this.f32149l) >> 2;
            int i3 = (i & 8) != 0 ? m24498e - 1 : m24498e;
            this.f32161x = i3;
            this.f32162y = i3;
            C9360p c9360p = new C9360p();
            this.f32135W = c9360p;
            c9360p.f32100a |= 8;
            mo24541a(this.f32135W);
        }
    }

    /* renamed from: a */
    private int m24554a(int i, int i2, int i3) {
        int i4 = i2 + 3 + i3;
        int[] iArr = this.f32116D;
        if (iArr == null || iArr.length < i4) {
            this.f32116D = new int[i4];
        }
        int[] iArr2 = this.f32116D;
        iArr2[0] = i;
        iArr2[1] = i2;
        iArr2[2] = i3;
        return 3;
    }

    /* renamed from: a */
    private static int m24532a(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    /* renamed from: a */
    private static int m24530a(int[] iArr, int[] iArr2, int i, int i2) {
        int i3;
        int i4 = i2 - i;
        int i5 = 0;
        while (i5 < iArr.length) {
            if (i >= iArr[i5] || iArr[i5] > i2) {
                i3 = i4;
                if (i2 < iArr[i5]) {
                    i3 = i4;
                    if (iArr[i5] <= i) {
                        i3 = i4 - iArr2[i5];
                    }
                }
            } else {
                i3 = i4 + iArr2[i5];
            }
            i5++;
            i4 = i3;
        }
        return i4;
    }

    /* renamed from: a */
    private void m24542a(C9356l c9356l) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int[] iArr = c9356l.f32073c;
        int[] iArr2 = c9356l.f32074d;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < iArr.length) {
            int i11 = iArr[i8];
            i10++;
            if (i11 != 16777216) {
                i9 += i10;
                i10 = 0;
            }
            if (i11 != 16777220) {
                i7 = i8;
                if (i11 != 16777219) {
                    i8 = i7 + 1;
                }
            }
            i7 = i8 + 1;
            i8 = i7 + 1;
        }
        int i12 = 0;
        int i13 = 0;
        while (true) {
            i = i13;
            if (i12 >= iArr2.length) {
                break;
            }
            int i14 = iArr2[i12];
            int i15 = i + 1;
            if (i14 != 16777220) {
                i6 = i12;
                if (i14 != 16777219) {
                    i12 = i6 + 1;
                    i13 = i15;
                }
            }
            i6 = i12 + 1;
            i12 = i6 + 1;
            i13 = i15;
        }
        int m24554a = m24554a(c9356l.f32072b.f32102c, i9, i);
        int i16 = i9;
        int i17 = 0;
        while (true) {
            i2 = 0;
            i3 = m24554a;
            if (i16 > 0) {
                int i18 = iArr[i17];
                this.f32116D[m24554a] = i18;
                if (i18 != 16777220) {
                    i5 = i17;
                    if (i18 != 16777219) {
                        i17 = i5 + 1;
                        i16--;
                        m24554a++;
                    }
                }
                i5 = i17 + 1;
                i17 = i5 + 1;
                i16--;
                m24554a++;
            }
        }
        while (i2 < iArr2.length) {
            int i19 = iArr2[i2];
            this.f32116D[i3] = i19;
            if (i19 != 16777220) {
                i4 = i2;
                if (i19 != 16777219) {
                    i2 = i4 + 1;
                    i3++;
                }
            }
            i4 = i2 + 1;
            i2 = i4 + 1;
            i3++;
        }
        m24516d();
    }

    /* renamed from: a */
    private void m24538a(C9360p c9360p, C9360p[] c9360pArr) {
        C9360p c9360p2 = this.f32137Y;
        if (c9360p2 != null) {
            if (this.f32134V == 0) {
                c9360p2.f32105f.m24580a(171, 0, (C9351g) null, (C9359o) null);
                m24519c(0, c9360p);
                c9360p.m24563a().f32100a |= 16;
                for (int i = 0; i < c9360pArr.length; i++) {
                    m24519c(0, c9360pArr[i]);
                    c9360pArr[i].m24563a().f32100a |= 16;
                }
            } else {
                int i2 = this.f32138Z - 1;
                this.f32138Z = i2;
                m24519c(i2, c9360p);
                for (C9360p c9360p3 : c9360pArr) {
                    m24519c(this.f32138Z, c9360p3);
                }
            }
            m24521c();
        }
    }

    /* renamed from: a */
    private static void m24531a(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >>> 8);
        bArr[i + 1] = (byte) i2;
    }

    /* renamed from: a */
    private static void m24529a(int[] iArr, int[] iArr2, C9360p c9360p) {
        if ((c9360p.f32100a & 4) == 0) {
            c9360p.f32102c = m24530a(iArr, iArr2, 0, c9360p.f32102c);
            c9360p.f32100a |= 4;
        }
    }

    /* renamed from: b */
    private static short m24522b(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    /* renamed from: b */
    private void m24524b(Object obj) {
        if (obj instanceof String) {
            this.f32113A.m24652a(7).m24646b(this.f32140c.m24593c((String) obj));
        } else if (obj instanceof Integer) {
            this.f32113A.m24652a(((Integer) obj).intValue());
        } else {
            this.f32113A.m24652a(8).m24646b(((C9360p) obj).f32102c);
        }
    }

    /* renamed from: c */
    private static int m24517c(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: c */
    private void m24521c() {
        if (this.f32134V == 0) {
            C9360p c9360p = new C9360p();
            c9360p.f32105f = new C9356l();
            c9360p.f32105f.f32072b = c9360p;
            c9360p.m24561a(this.f32159v.f31987b, this.f32159v.f31986a);
            this.f32136X.f32106g = c9360p;
            this.f32136X = c9360p;
        } else {
            this.f32137Y.f32104e = this.f32139aa;
        }
        this.f32137Y = null;
    }

    /* renamed from: c */
    private void m24519c(int i, C9360p c9360p) {
        C9353i c9353i = new C9353i();
        c9353i.f32055a = i;
        c9353i.f32056b = c9360p;
        c9353i.f32057c = this.f32137Y.f32107h;
        this.f32137Y.f32107h = c9353i;
    }

    /* renamed from: d */
    private void m24516d() {
        if (this.f32115C != null) {
            if (this.f32113A == null) {
                this.f32113A = new C9348d();
            }
            m24514e();
            this.f32163z++;
        }
        this.f32115C = this.f32116D;
        this.f32116D = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x021e  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m24514e() {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9362r.m24514e():void");
    }

    /* renamed from: e */
    private void m24513e(int i, int i2) {
        char c;
        C9348d m24652a;
        int m24593c;
        for (int i3 = i; i3 < i2; i3++) {
            int i4 = this.f32116D[i3];
            int i5 = (-268435456) & i4;
            if (i5 == 0) {
                int i6 = i4 & 1048575;
                int i7 = i4 & 267386880;
                if (i7 == 24117248) {
                    m24652a = this.f32113A.m24652a(7);
                    C9351g c9351g = this.f32140c;
                    m24593c = c9351g.m24593c(c9351g.f32022n[i6].f32095e);
                } else if (i7 != 25165824) {
                    this.f32113A.m24652a(i6);
                } else {
                    m24652a = this.f32113A.m24652a(8);
                    m24593c = this.f32140c.f32022n[i6].f32093c;
                }
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                for (int i8 = i5 >> 28; i8 > 0; i8--) {
                    stringBuffer.append('[');
                }
                if ((i4 & 267386880) == 24117248) {
                    stringBuffer.append('L');
                    stringBuffer.append(this.f32140c.f32022n[i4 & 1048575].f32095e);
                    c = ';';
                } else {
                    int i9 = i4 & 15;
                    if (i9 == 1) {
                        c = 'I';
                    } else if (i9 == 2) {
                        c = 'F';
                    } else if (i9 != 3) {
                        switch (i9) {
                            case 9:
                                c = 'Z';
                                break;
                            case 10:
                                c = 'B';
                                break;
                            case 11:
                                c = 'C';
                                break;
                            case 12:
                                c = 'S';
                                break;
                            default:
                                c = 'J';
                                break;
                        }
                    } else {
                        c = 'D';
                    }
                }
                stringBuffer.append(c);
                m24652a = this.f32113A.m24652a(7);
                m24593c = this.f32140c.m24593c(stringBuffer.toString());
            }
            m24652a.m24646b(m24593c);
        }
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final AbstractC9345a mo24557a() {
        C9348d c9348d = new C9348d();
        this.f32150m = c9348d;
        return new C9346b(this.f32140c, false, c9348d, null, 0);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final AbstractC9345a mo24550a(int i, C9365u c9365u, String str, boolean z) {
        C9348d c9348d = new C9348d();
        C9346b.m24665a(i, c9365u, c9348d);
        c9348d.m24646b(this.f32140c.m24606a(str)).m24646b(0);
        C9346b c9346b = new C9346b(this.f32140c, true, c9348d, c9348d, c9348d.f31987b - 2);
        if (z) {
            c9346b.f31975c = this.f32153p;
            this.f32153p = c9346b;
        } else {
            c9346b.f31975c = this.f32154q;
            this.f32154q = c9346b;
        }
        return c9346b;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final AbstractC9345a mo24549a(int i, C9365u c9365u, C9360p[] c9360pArr, C9360p[] c9360pArr2, int[] iArr, String str, boolean z) {
        C9348d c9348d = new C9348d();
        c9348d.m24652a(i >>> 24).m24646b(c9360pArr.length);
        for (int i2 = 0; i2 < c9360pArr.length; i2++) {
            c9348d.m24646b(c9360pArr[i2].f32102c).m24646b(c9360pArr2[i2].f32102c - c9360pArr[i2].f32102c).m24646b(iArr[i2]);
        }
        if (c9365u == null) {
            c9348d.m24652a(0);
        } else {
            c9348d.m24647a(c9365u.f32184a, c9365u.f32185b, (c9365u.f32184a[c9365u.f32185b] * 2) + 1);
        }
        c9348d.m24646b(this.f32140c.m24606a(str)).m24646b(0);
        C9346b c9346b = new C9346b(this.f32140c, true, c9348d, c9348d, c9348d.f31987b - 2);
        if (z) {
            c9346b.f31975c = this.f32129Q;
            this.f32129Q = c9346b;
        } else {
            c9346b.f31975c = this.f32130R;
            this.f32130R = c9346b;
        }
        return c9346b;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final AbstractC9345a mo24545a(int i, String str, boolean z) {
        C9348d c9348d = new C9348d();
        if ("Ljava/lang/Synthetic;".equals(str)) {
            this.f32157t = Math.max(this.f32157t, i + 1);
            return new C9346b(this.f32140c, false, c9348d, null, 0);
        }
        c9348d.m24646b(this.f32140c.m24606a(str)).m24646b(0);
        C9346b c9346b = new C9346b(this.f32140c, true, c9348d, c9348d, 2);
        if (z) {
            if (this.f32155r == null) {
                this.f32155r = new C9346b[C9364t.m24500d(this.f32149l).length];
            }
            c9346b.f31975c = this.f32155r[i];
            this.f32155r[i] = c9346b;
        } else {
            if (this.f32156s == null) {
                this.f32156s = new C9346b[C9364t.m24500d(this.f32149l).length];
            }
            c9346b.f31975c = this.f32156s[i];
            this.f32156s[i] = c9346b;
        }
        return c9346b;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final AbstractC9345a mo24533a(String str, boolean z) {
        C9348d c9348d = new C9348d();
        c9348d.m24646b(this.f32140c.m24606a(str)).m24646b(0);
        C9346b c9346b = new C9346b(this.f32140c, true, c9348d, c9348d, 2);
        if (z) {
            c9346b.f31975c = this.f32151n;
            this.f32151n = c9346b;
        } else {
            c9346b.f31975c = this.f32152o;
            this.f32152o = c9346b;
        }
        return c9346b;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24556a(int i) {
        this.f32128P = this.f32159v.f31987b;
        this.f32159v.m24652a(i);
        C9360p c9360p = this.f32137Y;
        if (c9360p != null) {
            if (this.f32134V == 0) {
                c9360p.f32105f.m24580a(i, 0, (C9351g) null, (C9359o) null);
            } else {
                int i2 = this.f32138Z + C9356l.f32071a[i];
                if (i2 > this.f32139aa) {
                    this.f32139aa = i2;
                }
                this.f32138Z = i2;
            }
            if ((i < 172 || i > 177) && i != 191) {
                return;
            }
            m24521c();
        }
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24555a(int i, int i2) {
        this.f32128P = this.f32159v.f31987b;
        C9360p c9360p = this.f32137Y;
        if (c9360p != null) {
            if (this.f32134V == 0) {
                c9360p.f32105f.m24580a(i, i2, (C9351g) null, (C9359o) null);
            } else if (i != 188) {
                int i3 = this.f32138Z + 1;
                if (i3 > this.f32139aa) {
                    this.f32139aa = i3;
                }
                this.f32138Z = i3;
            }
        }
        if (i == 17) {
            this.f32159v.m24645b(i, i2);
        } else {
            this.f32159v.m24651a(i, i2);
        }
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24553a(int i, int i2, C9360p c9360p, C9360p... c9360pArr) {
        this.f32128P = this.f32159v.f31987b;
        int i3 = this.f32159v.f31987b;
        this.f32159v.m24652a(170);
        C9348d c9348d = this.f32159v;
        c9348d.m24647a((byte[]) null, 0, (4 - (c9348d.f31987b % 4)) % 4);
        c9360p.m24560a(this.f32159v, i3, true);
        this.f32159v.m24644c(i).m24644c(i2);
        for (C9360p c9360p2 : c9360pArr) {
            c9360p2.m24560a(this.f32159v, i3, true);
        }
        m24538a(c9360p, c9360pArr);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24552a(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        int i4;
        C9348d c9348d;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        if (this.f32134V == 0) {
            return;
        }
        if (i == -1) {
            if (this.f32115C == null) {
                int m24554a = m24554a(0, this.f32149l.length() + 1, 0);
                int i10 = this.f32146i;
                int i11 = m24554a;
                if ((i10 & 8) == 0) {
                    if ((i10 & 524288) == 0) {
                        int[] iArr = this.f32116D;
                        i11 = m24554a + 1;
                        C9351g c9351g = this.f32140c;
                        iArr[3] = c9351g.m24590d(c9351g.f32023o) | 24117248;
                    } else {
                        i11 = m24554a + 1;
                        this.f32116D[3] = 6;
                    }
                }
                int i12 = 1;
                while (true) {
                    int i13 = i12 + 1;
                    char charAt = this.f32149l.charAt(i12);
                    if (charAt == 'F') {
                        i9 = i11 + 1;
                        this.f32116D[i11] = 2;
                    } else if (charAt != 'L') {
                        if (charAt != 'S' && charAt != 'I') {
                            if (charAt == 'J') {
                                i9 = i11 + 1;
                                this.f32116D[i11] = 4;
                            } else if (charAt != 'Z') {
                                int i14 = i13;
                                if (charAt != '[') {
                                    switch (charAt) {
                                        case 'B':
                                        case 'C':
                                            break;
                                        case 'D':
                                            i9 = i11 + 1;
                                            this.f32116D[i11] = 3;
                                            break;
                                        default:
                                            this.f32116D[1] = i11 - 3;
                                            m24516d();
                                            break;
                                    }
                                } else {
                                    while (this.f32149l.charAt(i14) == '[') {
                                        i14++;
                                    }
                                    int i15 = i14;
                                    if (this.f32149l.charAt(i14) == 'L') {
                                        do {
                                            i14++;
                                            i15 = i14;
                                        } while (this.f32149l.charAt(i14) != ';');
                                        int i16 = i15 + 1;
                                        this.f32116D[i11] = this.f32140c.m24590d(this.f32149l.substring(i12, i16)) | 24117248;
                                        i12 = i16;
                                        i11++;
                                    } else {
                                        int i162 = i15 + 1;
                                        this.f32116D[i11] = this.f32140c.m24590d(this.f32149l.substring(i12, i162)) | 24117248;
                                        i12 = i162;
                                        i11++;
                                    }
                                }
                            }
                        }
                        i9 = i11 + 1;
                        this.f32116D[i11] = 1;
                    } else {
                        int i17 = i13;
                        while (this.f32149l.charAt(i17) != ';') {
                            i17++;
                        }
                        this.f32116D[i11] = this.f32140c.m24590d(this.f32149l.substring(i13, i17)) | 24117248;
                        i11++;
                        i12 = i17 + 1;
                    }
                    i11 = i9;
                    i12 = i13;
                }
            }
            this.f32162y = i2;
            int m24554a2 = m24554a(this.f32159v.f31987b, i2, i3);
            int i18 = 0;
            while (true) {
                i6 = m24554a2;
                i7 = 0;
                if (i18 < i2) {
                    if (objArr[i18] instanceof String) {
                        this.f32116D[m24554a2] = this.f32140c.m24590d((String) objArr[i18]) | 24117248;
                        m24554a2++;
                    } else if (objArr[i18] instanceof Integer) {
                        this.f32116D[m24554a2] = ((Integer) objArr[i18]).intValue();
                        m24554a2++;
                    } else {
                        this.f32116D[m24554a2] = this.f32140c.m24605a("", ((C9360p) objArr[i18]).f32102c) | 25165824;
                        m24554a2++;
                    }
                    i18++;
                }
            }
            while (i7 < i3) {
                if (objArr2[i7] instanceof String) {
                    i8 = i6 + 1;
                    this.f32116D[i6] = this.f32140c.m24590d((String) objArr2[i7]) | 24117248;
                } else if (objArr2[i7] instanceof Integer) {
                    i8 = i6 + 1;
                    this.f32116D[i6] = ((Integer) objArr2[i7]).intValue();
                } else {
                    i8 = i6 + 1;
                    this.f32116D[i6] = this.f32140c.m24605a("", ((C9360p) objArr2[i7]).f32102c) | 25165824;
                }
                i7++;
                i6 = i8;
            }
            m24516d();
        } else {
            if (this.f32113A == null) {
                this.f32113A = new C9348d();
                i4 = this.f32159v.f31987b;
            } else {
                int i19 = (this.f32159v.f31987b - this.f32114B) - 1;
                i4 = i19;
                if (i19 < 0) {
                    if (i != 3) {
                        throw new IllegalStateException();
                    }
                    return;
                }
            }
            if (i == 0) {
                this.f32162y = i2;
                this.f32113A.m24652a(255).m24646b(i4).m24646b(i2);
                for (int i20 = 0; i20 < i2; i20++) {
                    m24524b(objArr[i20]);
                }
                this.f32113A.m24646b(i3);
                for (int i21 = 0; i21 < i3; i21++) {
                    m24524b(objArr2[i21]);
                }
            } else if (i != 1) {
                if (i == 2) {
                    this.f32162y -= i2;
                    c9348d = this.f32113A;
                    i5 = 251 - i2;
                } else if (i == 3) {
                    C9348d c9348d2 = this.f32113A;
                    c9348d = c9348d2;
                    i5 = 251;
                    if (i4 < 64) {
                        c9348d2.m24652a(i4);
                    }
                } else if (i == 4) {
                    C9348d c9348d3 = this.f32113A;
                    if (i4 < 64) {
                        c9348d3.m24652a(i4 + 64);
                    } else {
                        c9348d3.m24652a(247).m24646b(i4);
                    }
                    m24524b(objArr2[0]);
                }
                c9348d.m24652a(i5).m24646b(i4);
            } else {
                this.f32162y += i2;
                this.f32113A.m24652a(i2 + 251).m24646b(i4);
                for (int i22 = 0; i22 < i2; i22++) {
                    m24524b(objArr[i22]);
                }
            }
            this.f32114B = this.f32159v.f31987b;
            this.f32163z++;
        }
        this.f32160w = Math.max(this.f32160w, i3);
        this.f32161x = Math.max(this.f32161x, this.f32162y);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24551a(int i, C9360p c9360p) {
        this.f32128P = this.f32159v.f31987b;
        C9360p c9360p2 = this.f32137Y;
        C9360p c9360p3 = null;
        if (c9360p2 != null) {
            if (this.f32134V == 0) {
                c9360p2.f32105f.m24580a(i, 0, (C9351g) null, (C9359o) null);
                c9360p.m24563a().f32100a |= 16;
                m24519c(0, c9360p);
                c9360p3 = null;
                if (i != 167) {
                    c9360p3 = new C9360p();
                }
            } else if (i == 168) {
                if ((c9360p.f32100a & 512) == 0) {
                    c9360p.f32100a |= 512;
                    this.f32133U++;
                }
                this.f32137Y.f32100a |= 128;
                m24519c(this.f32138Z + 1, c9360p);
                c9360p3 = new C9360p();
            } else {
                int i2 = this.f32138Z + C9356l.f32071a[i];
                this.f32138Z = i2;
                m24519c(i2, c9360p);
                c9360p3 = null;
            }
        }
        if ((c9360p.f32100a & 2) == 0 || c9360p.f32102c - this.f32159v.f31987b >= -32768) {
            this.f32159v.m24652a(i);
            C9348d c9348d = this.f32159v;
            c9360p.m24560a(c9348d, c9348d.f31987b - 1, false);
        } else {
            if (i != 167) {
                if (i == 168) {
                    this.f32159v.m24652a(201);
                    C9348d c9348d2 = this.f32159v;
                    c9360p.m24560a(c9348d2, c9348d2.f31987b - 1, true);
                } else {
                    if (c9360p3 != null) {
                        c9360p3.f32100a |= 16;
                    }
                    this.f32159v.m24652a(i <= 166 ? ((i + 1) ^ 1) - 1 : i ^ 1);
                    this.f32159v.m24646b(8);
                }
            }
            this.f32159v.m24652a(200);
            C9348d c9348d22 = this.f32159v;
            c9360p.m24560a(c9348d22, c9348d22.f31987b - 1, true);
        }
        if (this.f32137Y != null) {
            if (c9360p3 != null) {
                mo24541a(c9360p3);
            }
            if (i != 167) {
                return;
            }
            m24521c();
        }
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24548a(int i, String str) {
        this.f32128P = this.f32159v.f31987b;
        C9359o m24597b = this.f32140c.m24597b(str);
        C9360p c9360p = this.f32137Y;
        if (c9360p != null) {
            if (this.f32134V == 0) {
                c9360p.f32105f.m24580a(i, this.f32159v.f31987b, this.f32140c, m24597b);
            } else if (i == 187) {
                int i2 = this.f32138Z + 1;
                if (i2 > this.f32139aa) {
                    this.f32139aa = i2;
                }
                this.f32138Z = i2;
            }
        }
        this.f32159v.m24645b(i, m24597b.f32091a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0081, code lost:
        if (r0 == 'J') goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00f5, code lost:
        if (r0 == 'J') goto L30;
     */
    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo24547a(int r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9362r.mo24547a(int, java.lang.String, java.lang.String, java.lang.String):void");
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24546a(int i, String str, String str2, String str3, boolean z) {
        this.f32128P = this.f32159v.f31987b;
        C9359o m24601a = this.f32140c.m24601a(str, str2, str3, z);
        int i2 = m24601a.f32093c;
        C9360p c9360p = this.f32137Y;
        int i3 = i2;
        if (c9360p != null) {
            if (this.f32134V == 0) {
                c9360p.f32105f.m24580a(i, 0, this.f32140c, m24601a);
                i3 = i2;
            } else {
                i3 = i2;
                if (i2 == 0) {
                    i3 = C9364t.m24498e(str3);
                    m24601a.f32093c = i3;
                }
                int i4 = i == 184 ? (this.f32138Z - (i3 >> 2)) + (i3 & 3) + 1 : (this.f32138Z - (i3 >> 2)) + (i3 & 3);
                if (i4 > this.f32139aa) {
                    this.f32139aa = i4;
                }
                this.f32138Z = i4;
            }
        }
        if (i != 185) {
            this.f32159v.m24645b(i, m24601a.f32091a);
            return;
        }
        int i5 = i3;
        if (i3 == 0) {
            i5 = C9364t.m24498e(str3);
            m24601a.f32093c = i5;
        }
        this.f32159v.m24645b(185, m24601a.f32091a).m24651a(i5 >> 2, 0);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24544a(C9347c c9347c) {
        c9347c.f31985c = this.f32158u;
        this.f32158u = c9347c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x008b, code lost:
        if ((r5.f32146i & 262144) != 0) goto L19;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m24543a(com.esotericsoftware.p273a.C9348d r6) {
        /*
            Method dump skipped, instructions count: 1657
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9362r.m24543a(com.esotericsoftware.a.d):void");
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24541a(C9360p c9360p) {
        this.f32132T |= c9360p.m24561a(this.f32159v.f31987b, this.f32159v.f31986a);
        if ((c9360p.f32100a & 1) != 0) {
            return;
        }
        int i = this.f32134V;
        if (i != 0) {
            if (i != 1) {
                return;
            }
            C9360p c9360p2 = this.f32137Y;
            if (c9360p2 != null) {
                c9360p2.f32104e = this.f32139aa;
                m24519c(this.f32138Z, c9360p);
            }
            this.f32137Y = c9360p;
            this.f32138Z = 0;
            this.f32139aa = 0;
            C9360p c9360p3 = this.f32136X;
            if (c9360p3 != null) {
                c9360p3.f32106g = c9360p;
            }
            this.f32136X = c9360p;
            return;
        }
        if (this.f32137Y != null) {
            if (c9360p.f32102c == this.f32137Y.f32102c) {
                this.f32137Y.f32100a |= c9360p.f32100a & 16;
                c9360p.f32105f = this.f32137Y.f32105f;
                return;
            }
            m24519c(0, c9360p);
        }
        this.f32137Y = c9360p;
        if (c9360p.f32105f == null) {
            c9360p.f32105f = new C9356l();
            c9360p.f32105f.f32072b = c9360p;
        }
        if (this.f32136X != null) {
            if (c9360p.f32102c == this.f32136X.f32102c) {
                this.f32136X.f32100a |= c9360p.f32100a & 16;
                c9360p.f32105f = this.f32136X.f32105f;
                this.f32137Y = this.f32136X;
                return;
            }
            this.f32136X.f32106g = c9360p;
        }
        this.f32136X = c9360p;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24540a(C9360p c9360p, C9360p c9360p2, C9360p c9360p3, String str) {
        this.f32117E++;
        C9358n c9358n = new C9358n();
        c9358n.f32085a = c9360p;
        c9358n.f32086b = c9360p2;
        c9358n.f32087c = c9360p3;
        c9358n.f32088d = str;
        c9358n.f32089e = str != null ? this.f32140c.m24593c(str) : 0;
        C9358n c9358n2 = this.f32119G;
        if (c9358n2 == null) {
            this.f32118F = c9358n;
        } else {
            c9358n2.f32090f = c9358n;
        }
        this.f32119G = c9358n;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24539a(C9360p c9360p, int[] iArr, C9360p[] c9360pArr) {
        this.f32128P = this.f32159v.f31987b;
        int i = this.f32159v.f31987b;
        this.f32159v.m24652a(171);
        C9348d c9348d = this.f32159v;
        c9348d.m24647a((byte[]) null, 0, (4 - (c9348d.f31987b % 4)) % 4);
        c9360p.m24560a(this.f32159v, i, true);
        this.f32159v.m24644c(c9360pArr.length);
        for (int i2 = 0; i2 < c9360pArr.length; i2++) {
            this.f32159v.m24644c(iArr[i2]);
            c9360pArr[i2].m24560a(this.f32159v, i, true);
        }
        m24538a(c9360p, c9360pArr);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24537a(Object obj) {
        this.f32128P = this.f32159v.f31987b;
        C9359o m24607a = this.f32140c.m24607a(obj);
        C9360p c9360p = this.f32137Y;
        if (c9360p != null) {
            if (this.f32134V == 0) {
                c9360p.f32105f.m24580a(18, 0, this.f32140c, m24607a);
            } else {
                int i = (m24607a.f32092b == 5 || m24607a.f32092b == 6) ? this.f32138Z + 2 : this.f32138Z + 1;
                if (i > this.f32139aa) {
                    this.f32139aa = i;
                }
                this.f32138Z = i;
            }
        }
        int i2 = m24607a.f32091a;
        if (m24607a.f32092b == 5 || m24607a.f32092b == 6) {
            this.f32159v.m24645b(20, i2);
        } else if (i2 >= 256) {
            this.f32159v.m24645b(19, i2);
        } else {
            this.f32159v.m24651a(18, i2);
        }
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24536a(String str, int i) {
        if (this.f32121I == null) {
            this.f32121I = new C9348d();
        }
        this.f32120H++;
        this.f32121I.m24646b(str == null ? 0 : this.f32140c.m24606a(str)).m24646b(i);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24535a(String str, String str2, C9357m c9357m, Object... objArr) {
        C9359o c9359o;
        int i;
        this.f32128P = this.f32159v.f31987b;
        C9351g c9351g = this.f32140c;
        C9348d c9348d = c9351g.f32025q;
        C9348d c9348d2 = c9348d;
        if (c9348d == null) {
            c9348d2 = new C9348d();
            c9351g.f32025q = c9348d2;
        }
        int i2 = c9348d2.f31987b;
        int hashCode = c9357m.hashCode();
        c9348d2.m24646b(c9351g.m24612a(c9357m.f32080a, c9357m.f32081b, c9357m.f32082c, c9357m.f32083d, c9357m.f32084e).f32091a);
        int length = objArr.length;
        c9348d2.m24646b(length);
        for (Object obj : objArr) {
            hashCode ^= obj.hashCode();
            c9348d2.m24646b(c9351g.m24607a(obj).f32091a);
        }
        byte[] bArr = c9348d2.f31986a;
        int i3 = Integer.MAX_VALUE & hashCode;
        C9359o[] c9359oArr = c9351g.f32016h;
        C9359o c9359o2 = c9359oArr[i3 % c9359oArr.length];
        loop1: while (true) {
            c9359o = c9359o2;
            if (c9359o == null) {
                break;
            }
            if (c9359o.f32092b == 33 && c9359o.f32098h == i3) {
                int i4 = c9359o.f32093c;
                for (int i5 = 0; i5 < ((length + 2) << 1); i5++) {
                    if (bArr[i2 + i5] != bArr[i4 + i5]) {
                        break;
                    }
                }
                break loop1;
            }
            c9359o2 = c9359o.f32099i;
        }
        if (c9359o != null) {
            i = c9359o.f32091a;
            c9348d2.f31987b = i2;
        } else {
            i = c9351g.f32024p;
            c9351g.f32024p = i + 1;
            C9359o c9359o3 = new C9359o(i);
            c9359o3.m24568a(i2, i3);
            c9351g.m24598b(c9359o3);
        }
        c9351g.f32020l.m24564a(str, str2, i);
        C9359o m24608a = c9351g.m24608a(c9351g.f32020l);
        C9359o c9359o4 = m24608a;
        if (m24608a == null) {
            c9351g.m24616a(18, i, c9351g.m24596b(str, str2));
            int i6 = c9351g.f32014f;
            c9351g.f32014f = i6 + 1;
            c9359o4 = new C9359o(i6, c9351g.f32020l);
            c9351g.m24598b(c9359o4);
        }
        int i7 = c9359o4.f32093c;
        C9360p c9360p = this.f32137Y;
        if (c9360p != null) {
            if (this.f32134V == 0) {
                c9360p.f32105f.m24580a(186, 0, this.f32140c, c9359o4);
            } else {
                int i8 = i7;
                if (i7 == 0) {
                    i8 = C9364t.m24498e(str2);
                    c9359o4.f32093c = i8;
                }
                int i9 = (this.f32138Z - (i8 >> 2)) + (i8 & 3) + 1;
                if (i9 > this.f32139aa) {
                    this.f32139aa = i9;
                }
                this.f32138Z = i9;
            }
        }
        this.f32159v.m24645b(186, c9359o4.f32091a);
        this.f32159v.m24646b(0);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: a */
    public final void mo24534a(String str, String str2, String str3, C9360p c9360p, C9360p c9360p2, int i) {
        int i2 = 1;
        if (str3 != null) {
            if (this.f32125M == null) {
                this.f32125M = new C9348d();
            }
            this.f32124L++;
            this.f32125M.m24646b(c9360p.f32102c).m24646b(c9360p2.f32102c - c9360p.f32102c).m24646b(this.f32140c.m24606a(str)).m24646b(this.f32140c.m24606a(str3)).m24646b(i);
        }
        if (this.f32123K == null) {
            this.f32123K = new C9348d();
        }
        this.f32122J++;
        this.f32123K.m24646b(c9360p.f32102c).m24646b(c9360p2.f32102c - c9360p.f32102c).m24646b(this.f32140c.m24606a(str)).m24646b(this.f32140c.m24606a(str2)).m24646b(i);
        if (this.f32134V != 2) {
            char charAt = str2.charAt(0);
            if (charAt == 'J' || charAt == 'D') {
                i2 = 2;
            }
            int i3 = i + i2;
            if (i3 <= this.f32161x) {
                return;
            }
            this.f32161x = i3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x01a4, code lost:
        if ((r4.f32146i & 262144) != 0) goto L51;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m24528b() {
        /*
            Method dump skipped, instructions count: 933
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9362r.m24528b():int");
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: b */
    public final AbstractC9345a mo24525b(int i, C9365u c9365u, String str, boolean z) {
        C9348d c9348d = new C9348d();
        C9346b.m24665a((i & (-16776961)) | (this.f32128P << 8), c9365u, c9348d);
        c9348d.m24646b(this.f32140c.m24606a(str)).m24646b(0);
        C9346b c9346b = new C9346b(this.f32140c, true, c9348d, c9348d, c9348d.f31987b - 2);
        if (z) {
            c9346b.f31975c = this.f32129Q;
            this.f32129Q = c9346b;
        } else {
            c9346b.f31975c = this.f32130R;
            this.f32130R = c9346b;
        }
        return c9346b;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: b */
    public final void mo24527b(int i, int i2) {
        this.f32128P = this.f32159v.f31987b;
        C9360p c9360p = this.f32137Y;
        if (c9360p != null) {
            if (this.f32134V == 0) {
                c9360p.f32105f.m24580a(i, i2, (C9351g) null, (C9359o) null);
            } else if (i == 169) {
                c9360p.f32100a |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                this.f32137Y.f32103d = this.f32138Z;
                m24521c();
            } else {
                int i3 = this.f32138Z + C9356l.f32071a[i];
                if (i3 > this.f32139aa) {
                    this.f32139aa = i3;
                }
                this.f32138Z = i3;
            }
        }
        if (this.f32134V != 2) {
            int i4 = (i == 22 || i == 24 || i == 55 || i == 57) ? i2 + 2 : i2 + 1;
            if (i4 > this.f32161x) {
                this.f32161x = i4;
            }
        }
        if (i2 >= 4 || i == 169) {
            C9348d c9348d = this.f32159v;
            if (i2 >= 256) {
                c9348d.m24652a(196).m24645b(i, i2);
            } else {
                c9348d.m24651a(i, i2);
            }
        } else {
            this.f32159v.m24652a((i < 54 ? ((i - 21) << 2) + 26 : ((i - 54) << 2) + 59) + i2);
        }
        if (i < 54 || this.f32134V != 0 || this.f32117E <= 0) {
            return;
        }
        mo24541a(new C9360p());
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: b */
    public final void mo24526b(int i, C9360p c9360p) {
        if (this.f32127O == null) {
            this.f32127O = new C9348d();
        }
        this.f32126N++;
        this.f32127O.m24646b(c9360p.f32102c);
        this.f32127O.m24646b(i);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: b */
    public final void mo24523b(String str, int i) {
        this.f32128P = this.f32159v.f31987b;
        C9359o m24597b = this.f32140c.m24597b(str);
        C9360p c9360p = this.f32137Y;
        if (c9360p != null) {
            if (this.f32134V == 0) {
                c9360p.f32105f.m24580a(197, i, this.f32140c, m24597b);
            } else {
                this.f32138Z += 1 - i;
            }
        }
        this.f32159v.m24645b(197, m24597b.f32091a).m24652a(i);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: c */
    public final AbstractC9345a mo24518c(int i, C9365u c9365u, String str, boolean z) {
        C9348d c9348d = new C9348d();
        C9346b.m24665a(i, c9365u, c9348d);
        c9348d.m24646b(this.f32140c.m24606a(str)).m24646b(0);
        C9346b c9346b = new C9346b(this.f32140c, true, c9348d, c9348d, c9348d.f31987b - 2);
        if (z) {
            c9346b.f31975c = this.f32129Q;
            this.f32129Q = c9346b;
        } else {
            c9346b.f31975c = this.f32130R;
            this.f32130R = c9346b;
        }
        return c9346b;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: c */
    public final void mo24520c(int i, int i2) {
        int i3;
        this.f32128P = this.f32159v.f31987b;
        C9360p c9360p = this.f32137Y;
        if (c9360p != null && this.f32134V == 0) {
            c9360p.f32105f.m24580a(132, i, (C9351g) null, (C9359o) null);
        }
        if (this.f32134V != 2 && (i3 = i + 1) > this.f32161x) {
            this.f32161x = i3;
        }
        if (i > 255 || i2 > 127 || i2 < -128) {
            this.f32159v.m24652a(196).m24645b(132, i).m24646b(i2);
        } else {
            this.f32159v.m24652a(132).m24651a(i, i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:285:0x0c28, code lost:
        if (r0 == 16777219) goto L286;
     */
    @Override // com.esotericsoftware.p273a.AbstractC9361q
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo24515d(int r10, int r11) {
        /*
            Method dump skipped, instructions count: 4044
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9362r.mo24515d(int, int):void");
    }
}
