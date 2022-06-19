package p237t;

import java.util.Arrays;
import java.util.Objects;
import p237t.C4341b;
import p258v.C4564c;
/* renamed from: t.d */
/* loaded from: classes-dex2jar.jar:t/d.class */
public class C4344d {

    /* renamed from: p */
    public static boolean f13542p = false;

    /* renamed from: q */
    public static int f13543q = 1000;

    /* renamed from: r */
    public static long f13544r;

    /* renamed from: c */
    public AbstractC4345a f13547c;

    /* renamed from: f */
    public C4341b[] f13550f;

    /* renamed from: l */
    public final C4343c f13556l;

    /* renamed from: o */
    public AbstractC4345a f13559o;

    /* renamed from: a */
    public boolean f13545a = false;

    /* renamed from: b */
    public int f13546b = 0;

    /* renamed from: d */
    public int f13548d = 32;

    /* renamed from: e */
    public int f13549e = 32;

    /* renamed from: g */
    public boolean f13551g = false;

    /* renamed from: h */
    public boolean[] f13552h = new boolean[32];

    /* renamed from: i */
    public int f13553i = 1;

    /* renamed from: j */
    public int f13554j = 0;

    /* renamed from: k */
    public int f13555k = 32;

    /* renamed from: m */
    public C4351h[] f13557m = new C4351h[f13543q];

    /* renamed from: n */
    public int f13558n = 0;

    /* renamed from: t.d$a */
    /* loaded from: classes-dex2jar.jar:t/d$a.class */
    public interface AbstractC4345a {
        /* renamed from: a */
        C4351h mo1028a(C4344d c4344d, boolean[] zArr);

        /* renamed from: b */
        void mo1027b(C4351h c4351h);

        void clear();

        boolean isEmpty();
    }

    public C4344d() {
        this.f13550f = null;
        this.f13550f = new C4341b[32];
        m1032t();
        C4343c c4343c = new C4343c();
        this.f13556l = c4343c;
        this.f13547c = new C4347f(c4343c);
        this.f13559o = new C4341b(c4343c);
    }

    /* renamed from: a */
    public final C4351h m1051a(int i, String str) {
        C4351h c4351h = (C4351h) ((C4346e) this.f13556l.f13540c).m1030a();
        if (c4351h == null) {
            c4351h = new C4351h(i);
            c4351h.f13578i = i;
        } else {
            c4351h.m1017c();
            c4351h.f13578i = i;
        }
        int i2 = this.f13558n;
        int i3 = f13543q;
        if (i2 >= i3) {
            int i4 = i3 * 2;
            f13543q = i4;
            this.f13557m = (C4351h[]) Arrays.copyOf(this.f13557m, i4);
        }
        C4351h[] c4351hArr = this.f13557m;
        int i5 = this.f13558n;
        this.f13558n = i5 + 1;
        c4351hArr[i5] = c4351h;
        return c4351h;
    }

    /* renamed from: b */
    public void m1050b(C4351h c4351h, C4351h c4351h2, int i, float f, C4351h c4351h3, C4351h c4351h4, int i2, int i3) {
        C4341b m1039m = m1039m();
        if (c4351h2 == c4351h3) {
            m1039m.f13536d.mo1059d(c4351h, 1.0f);
            m1039m.f13536d.mo1059d(c4351h4, 1.0f);
            m1039m.f13536d.mo1059d(c4351h2, -2.0f);
        } else if (f == 0.5f) {
            m1039m.f13536d.mo1059d(c4351h, 1.0f);
            m1039m.f13536d.mo1059d(c4351h2, -1.0f);
            m1039m.f13536d.mo1059d(c4351h3, -1.0f);
            m1039m.f13536d.mo1059d(c4351h4, 1.0f);
            if (i > 0 || i2 > 0) {
                m1039m.f13534b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            m1039m.f13536d.mo1059d(c4351h, -1.0f);
            m1039m.f13536d.mo1059d(c4351h2, 1.0f);
            m1039m.f13534b = i;
        } else if (f >= 1.0f) {
            m1039m.f13536d.mo1059d(c4351h4, -1.0f);
            m1039m.f13536d.mo1059d(c4351h3, 1.0f);
            m1039m.f13534b = -i2;
        } else {
            C4341b.AbstractC4342a abstractC4342a = m1039m.f13536d;
            float f2 = 1.0f - f;
            abstractC4342a.mo1059d(c4351h, f2 * 1.0f);
            m1039m.f13536d.mo1059d(c4351h2, f2 * (-1.0f));
            m1039m.f13536d.mo1059d(c4351h3, (-1.0f) * f);
            m1039m.f13536d.mo1059d(c4351h4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                m1039m.f13534b = (i2 * f) + ((-i) * f2);
            }
        }
        if (i3 != 8) {
            m1039m.m1071c(this, i3);
        }
        m1049c(m1039m);
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0460 A[RETURN] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1049c(p237t.C4341b r6) {
        /*
            Method dump skipped, instructions count: 1136
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p237t.C4344d.m1049c(t.b):void");
    }

    /* renamed from: d */
    public C4341b m1048d(C4351h c4351h, C4351h c4351h2, int i, int i2) {
        if (i2 == 8 && c4351h2.f13575f && c4351h.f13572c == -1) {
            c4351h.m1016d(this, c4351h2.f13574e + i);
            return null;
        }
        C4341b m1039m = m1039m();
        boolean z = false;
        if (i != 0) {
            z = false;
            int i3 = i;
            if (i < 0) {
                i3 = i * (-1);
                z = true;
            }
            m1039m.f13534b = i3;
        }
        if (!z) {
            m1039m.f13536d.mo1059d(c4351h, -1.0f);
            m1039m.f13536d.mo1059d(c4351h2, 1.0f);
        } else {
            m1039m.f13536d.mo1059d(c4351h, 1.0f);
            m1039m.f13536d.mo1059d(c4351h2, -1.0f);
        }
        if (i2 != 8) {
            m1039m.m1071c(this, i2);
        }
        m1049c(m1039m);
        return m1039m;
    }

    /* renamed from: e */
    public void m1047e(C4351h c4351h, int i) {
        int i2 = c4351h.f13572c;
        if (i2 == -1) {
            c4351h.m1016d(this, i);
            for (int i3 = 0; i3 < this.f13546b + 1; i3++) {
                C4351h c4351h2 = ((C4351h[]) this.f13556l.f13541d)[i3];
            }
        } else if (i2 == -1) {
            C4341b m1039m = m1039m();
            m1039m.f13533a = c4351h;
            float f = i;
            c4351h.f13574e = f;
            m1039m.f13534b = f;
            m1039m.f13537e = true;
            m1049c(m1039m);
        } else {
            C4341b c4341b = this.f13550f[i2];
            if (c4341b.f13537e) {
                c4341b.f13534b = i;
            } else if (c4341b.f13536d.mo1057f() == 0) {
                c4341b.f13537e = true;
                c4341b.f13534b = i;
            } else {
                C4341b m1039m2 = m1039m();
                if (i < 0) {
                    m1039m2.f13534b = i * (-1);
                    m1039m2.f13536d.mo1059d(c4351h, 1.0f);
                } else {
                    m1039m2.f13534b = i;
                    m1039m2.f13536d.mo1059d(c4351h, -1.0f);
                }
                m1049c(m1039m2);
            }
        }
    }

    /* renamed from: f */
    public void m1046f(C4351h c4351h, C4351h c4351h2, int i, int i2) {
        C4341b m1039m = m1039m();
        C4351h m1038n = m1038n();
        m1038n.f13573d = 0;
        m1039m.m1069e(c4351h, c4351h2, m1038n, i);
        if (i2 != 8) {
            int mo1058e = (int) (m1039m.f13536d.mo1058e(m1038n) * (-1.0f));
            m1039m.f13536d.mo1059d(m1041k(i2, null), mo1058e);
        }
        m1049c(m1039m);
    }

    /* renamed from: g */
    public void m1045g(C4351h c4351h, C4351h c4351h2, int i, int i2) {
        C4341b m1039m = m1039m();
        C4351h m1038n = m1038n();
        m1038n.f13573d = 0;
        m1039m.m1068f(c4351h, c4351h2, m1038n, i);
        if (i2 != 8) {
            int mo1058e = (int) (m1039m.f13536d.mo1058e(m1038n) * (-1.0f));
            m1039m.f13536d.mo1059d(m1041k(i2, null), mo1058e);
        }
        m1049c(m1039m);
    }

    /* renamed from: h */
    public void m1044h(C4351h c4351h, C4351h c4351h2, C4351h c4351h3, C4351h c4351h4, float f, int i) {
        C4341b m1039m = m1039m();
        m1039m.m1070d(c4351h, c4351h2, c4351h3, c4351h4, f);
        if (i != 8) {
            m1039m.m1071c(this, i);
        }
        m1049c(m1039m);
    }

    /* renamed from: i */
    public final void m1043i(C4341b c4341b) {
        int i;
        if (c4341b.f13537e) {
            c4341b.f13533a.m1016d(this, c4341b.f13534b);
        } else {
            C4341b[] c4341bArr = this.f13550f;
            int i2 = this.f13554j;
            c4341bArr[i2] = c4341b;
            C4351h c4351h = c4341b.f13533a;
            c4351h.f13572c = i2;
            this.f13554j = i2 + 1;
            c4351h.m1015e(this, c4341b);
        }
        if (this.f13545a) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= this.f13554j) {
                    this.f13545a = false;
                    return;
                }
                if (this.f13550f[i4] == null) {
                    System.out.println("WTF");
                }
                C4341b[] c4341bArr2 = this.f13550f;
                int i5 = i4;
                if (c4341bArr2[i4] != null) {
                    i5 = i4;
                    if (c4341bArr2[i4].f13537e) {
                        C4341b c4341b2 = c4341bArr2[i4];
                        c4341b2.f13533a.m1016d(this, c4341b2.f13534b);
                        ((C4346e) this.f13556l.f13539b).m1029b(c4341b2);
                        this.f13550f[i4] = null;
                        int i6 = i4 + 1;
                        int i7 = i6;
                        while (true) {
                            i = this.f13554j;
                            if (i6 >= i) {
                                break;
                            }
                            C4341b[] c4341bArr3 = this.f13550f;
                            int i8 = i6 - 1;
                            c4341bArr3[i8] = c4341bArr3[i6];
                            if (c4341bArr3[i8].f13533a.f13572c == i6) {
                                c4341bArr3[i8].f13533a.f13572c = i8;
                            }
                            i7 = i6;
                            i6++;
                        }
                        if (i7 < i) {
                            this.f13550f[i7] = null;
                        }
                        this.f13554j = i - 1;
                        i5 = i4 - 1;
                    }
                }
                i3 = i5 + 1;
            }
        }
    }

    /* renamed from: j */
    public final void m1042j() {
        for (int i = 0; i < this.f13554j; i++) {
            C4341b c4341b = this.f13550f[i];
            c4341b.f13533a.f13574e = c4341b.f13534b;
        }
    }

    /* renamed from: k */
    public C4351h m1041k(int i, String str) {
        if (this.f13553i + 1 >= this.f13549e) {
            m1036p();
        }
        C4351h m1051a = m1051a(4, str);
        int i2 = this.f13546b + 1;
        this.f13546b = i2;
        this.f13553i++;
        m1051a.f13571b = i2;
        m1051a.f13573d = i;
        ((C4351h[]) this.f13556l.f13541d)[i2] = m1051a;
        this.f13547c.mo1027b(m1051a);
        return m1051a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
        if (((p237t.C4351h[]) r4.f13556l.f13541d)[r0] == null) goto L19;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p237t.C4351h m1040l(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            r0 = r4
            int r0 = r0.f13553i
            r1 = 1
            int r0 = r0 + r1
            r1 = r4
            int r1 = r1.f13549e
            if (r0 < r1) goto L19
            r0 = r4
            r0.m1036p()
        L19:
            r0 = r5
            boolean r0 = r0 instanceof p258v.C4564c
            if (r0 == 0) goto L9d
            r0 = r5
            v.c r0 = (p258v.C4564c) r0
            r7 = r0
            r0 = r7
            t.h r0 = r0.f14038i
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L39
            r0 = r7
            r0.m827i()
            r0 = r7
            t.h r0 = r0.f14038i
            r5 = r0
        L39:
            r0 = r5
            int r0 = r0.f13571b
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L60
            r0 = r8
            r1 = r4
            int r1 = r1.f13546b
            if (r0 > r1) goto L60
            r0 = r5
            r6 = r0
            r0 = r4
            t.c r0 = r0.f13556l
            java.lang.Object r0 = r0.f13541d
            t.h[] r0 = (p237t.C4351h[]) r0
            r1 = r8
            r0 = r0[r1]
            if (r0 != 0) goto L9d
        L60:
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L6a
            r0 = r5
            r0.m1017c()
        L6a:
            r0 = r4
            int r0 = r0.f13546b
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r4
            r1 = r8
            r0.f13546b = r1
            r0 = r4
            r1 = r4
            int r1 = r1.f13553i
            r2 = 1
            int r1 = r1 + r2
            r0.f13553i = r1
            r0 = r5
            r1 = r8
            r0.f13571b = r1
            r0 = r5
            r1 = 1
            r0.f13578i = r1
            r0 = r4
            t.c r0 = r0.f13556l
            java.lang.Object r0 = r0.f13541d
            t.h[] r0 = (p237t.C4351h[]) r0
            r1 = r8
            r2 = r5
            r0[r1] = r2
            r0 = r5
            r6 = r0
        L9d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p237t.C4344d.m1040l(java.lang.Object):t.h");
    }

    /* renamed from: m */
    public C4341b m1039m() {
        C4341b c4341b = (C4341b) ((C4346e) this.f13556l.f13539b).m1030a();
        if (c4341b == null) {
            c4341b = new C4341b(this.f13556l);
            f13544r++;
        } else {
            c4341b.f13533a = null;
            c4341b.f13536d.clear();
            c4341b.f13534b = 0.0f;
            c4341b.f13537e = false;
        }
        C4351h.f13569m++;
        return c4341b;
    }

    /* renamed from: n */
    public C4351h m1038n() {
        if (this.f13553i + 1 >= this.f13549e) {
            m1036p();
        }
        C4351h m1051a = m1051a(3, null);
        int i = this.f13546b + 1;
        this.f13546b = i;
        this.f13553i++;
        m1051a.f13571b = i;
        ((C4351h[]) this.f13556l.f13541d)[i] = m1051a;
        return m1051a;
    }

    /* renamed from: o */
    public int m1037o(Object obj) {
        C4351h c4351h = ((C4564c) obj).f14038i;
        if (c4351h != null) {
            return (int) (c4351h.f13574e + 0.5f);
        }
        return 0;
    }

    /* renamed from: p */
    public final void m1036p() {
        int i = this.f13548d * 2;
        this.f13548d = i;
        this.f13550f = (C4341b[]) Arrays.copyOf(this.f13550f, i);
        C4343c c4343c = this.f13556l;
        c4343c.f13541d = (C4351h[]) Arrays.copyOf((C4351h[]) c4343c.f13541d, this.f13548d);
        int i2 = this.f13548d;
        this.f13552h = new boolean[i2];
        this.f13549e = i2;
        this.f13555k = i2;
    }

    /* renamed from: q */
    public void m1035q() throws Exception {
        boolean z;
        if (this.f13547c.isEmpty()) {
            m1042j();
        } else if (!this.f13551g) {
            m1034r(this.f13547c);
        } else {
            int i = 0;
            while (true) {
                if (i >= this.f13554j) {
                    z = true;
                    break;
                } else if (!this.f13550f[i].f13537e) {
                    z = false;
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                m1034r(this.f13547c);
            } else {
                m1042j();
            }
        }
    }

    /* renamed from: r */
    public void m1034r(AbstractC4345a abstractC4345a) throws Exception {
        boolean z;
        int i;
        int i2;
        int i3;
        float f;
        int i4;
        int i5;
        int i6;
        float f2;
        int i7;
        int i8 = 0;
        while (true) {
            if (i8 >= this.f13554j) {
                z = false;
                break;
            }
            C4341b[] c4341bArr = this.f13550f;
            if (c4341bArr[i8].f13533a.f13578i != 1 && c4341bArr[i8].f13534b < 0.0f) {
                z = true;
                break;
            }
            i8++;
        }
        if (z) {
            boolean z2 = false;
            int i9 = 0;
            while (true) {
                int i10 = i9;
                if (z2) {
                    break;
                }
                int i11 = i10 + 1;
                float f3 = Float.MAX_VALUE;
                int i12 = 0;
                int i13 = -1;
                int i14 = -1;
                int i15 = 0;
                while (true) {
                    int i16 = i15;
                    if (i12 >= this.f13554j) {
                        break;
                    }
                    C4341b c4341b = this.f13550f[i12];
                    if (c4341b.f13533a.f13578i == 1) {
                        f = f3;
                        i3 = i13;
                        i2 = i14;
                        i = i16;
                    } else if (c4341b.f13537e) {
                        f = f3;
                        i3 = i13;
                        i2 = i14;
                        i = i16;
                    } else {
                        f = f3;
                        i3 = i13;
                        i2 = i14;
                        i = i16;
                        if (c4341b.f13534b < 0.0f) {
                            int mo1057f = c4341b.f13536d.mo1057f();
                            int i17 = 0;
                            while (true) {
                                f = f3;
                                i3 = i13;
                                i2 = i14;
                                i = i16;
                                if (i17 < mo1057f) {
                                    C4351h mo1055h = c4341b.f13536d.mo1055h(i17);
                                    float mo1058e = c4341b.f13536d.mo1058e(mo1055h);
                                    if (mo1058e <= 0.0f) {
                                        f2 = f3;
                                        i6 = i13;
                                        i5 = i14;
                                        i4 = i16;
                                    } else {
                                        int i18 = i13;
                                        int i19 = 0;
                                        while (true) {
                                            f2 = f3;
                                            i6 = i18;
                                            i5 = i14;
                                            i4 = i16;
                                            if (i19 < 9) {
                                                float f4 = mo1055h.f13576g[i19] / mo1058e;
                                                if (f4 >= f3 || i19 != i16) {
                                                    i7 = i16;
                                                    if (i19 <= i16) {
                                                        i19++;
                                                        i16 = i7;
                                                    }
                                                }
                                                i14 = mo1055h.f13571b;
                                                i7 = i19;
                                                f3 = f4;
                                                i18 = i12;
                                                i19++;
                                                i16 = i7;
                                            }
                                        }
                                    }
                                    i17++;
                                    f3 = f2;
                                    i13 = i6;
                                    i14 = i5;
                                    i16 = i4;
                                }
                            }
                        }
                    }
                    i12++;
                    f3 = f;
                    i13 = i3;
                    i14 = i2;
                    i15 = i;
                }
                if (i13 != -1) {
                    C4341b c4341b2 = this.f13550f[i13];
                    c4341b2.f13533a.f13572c = -1;
                    c4341b2.m1064j(((C4351h[]) this.f13556l.f13541d)[i14]);
                    C4351h c4351h = c4341b2.f13533a;
                    c4351h.f13572c = i13;
                    c4351h.m1015e(this, c4341b2);
                } else {
                    z2 = true;
                }
                if (i11 > this.f13553i / 2) {
                    z2 = true;
                }
                i9 = i11;
            }
        }
        m1033s(abstractC4345a);
        m1042j();
    }

    /* renamed from: s */
    public final int m1033s(AbstractC4345a abstractC4345a) {
        int i;
        int i2;
        float f;
        for (int i3 = 0; i3 < this.f13553i; i3++) {
            this.f13552h[i3] = false;
        }
        boolean z = false;
        int i4 = 0;
        while (!z) {
            int i5 = i4 + 1;
            if (i5 >= this.f13553i * 2) {
                return i5;
            }
            C4351h c4351h = ((C4341b) abstractC4345a).f13533a;
            if (c4351h != null) {
                this.f13552h[c4351h.f13571b] = true;
            }
            C4351h mo1028a = abstractC4345a.mo1028a(this, this.f13552h);
            if (mo1028a != null) {
                boolean[] zArr = this.f13552h;
                int i6 = mo1028a.f13571b;
                if (zArr[i6]) {
                    return i5;
                }
                zArr[i6] = true;
            }
            if (mo1028a != null) {
                float f2 = Float.MAX_VALUE;
                int i7 = 0;
                int i8 = -1;
                while (true) {
                    i = i8;
                    if (i7 >= this.f13554j) {
                        break;
                    }
                    C4341b c4341b = this.f13550f[i7];
                    if (c4341b.f13533a.f13578i == 1) {
                        f = f2;
                        i2 = i;
                    } else if (c4341b.f13537e) {
                        f = f2;
                        i2 = i;
                    } else {
                        f = f2;
                        i2 = i;
                        if (c4341b.f13536d.mo1056g(mo1028a)) {
                            float mo1058e = c4341b.f13536d.mo1058e(mo1028a);
                            f = f2;
                            i2 = i;
                            if (mo1058e < 0.0f) {
                                float f3 = (-c4341b.f13534b) / mo1058e;
                                f = f2;
                                i2 = i;
                                if (f3 < f2) {
                                    i2 = i7;
                                    f = f3;
                                }
                            }
                        }
                    }
                    i7++;
                    f2 = f;
                    i8 = i2;
                }
                i4 = i5;
                if (i > -1) {
                    C4341b c4341b2 = this.f13550f[i];
                    c4341b2.f13533a.f13572c = -1;
                    c4341b2.m1064j(mo1028a);
                    C4351h c4351h2 = c4341b2.f13533a;
                    c4351h2.f13572c = i;
                    c4351h2.m1015e(this, c4341b2);
                    i4 = i5;
                }
            } else {
                z = true;
                i4 = i5;
            }
        }
        return i4;
    }

    /* renamed from: t */
    public final void m1032t() {
        for (int i = 0; i < this.f13554j; i++) {
            C4341b c4341b = this.f13550f[i];
            if (c4341b != null) {
                ((C4346e) this.f13556l.f13539b).m1029b(c4341b);
            }
            this.f13550f[i] = null;
        }
    }

    /* renamed from: u */
    public void m1031u() {
        C4343c c4343c;
        int i = 0;
        while (true) {
            c4343c = this.f13556l;
            Object obj = c4343c.f13541d;
            if (i >= ((C4351h[]) obj).length) {
                break;
            }
            C4351h c4351h = ((C4351h[]) obj)[i];
            if (c4351h != null) {
                c4351h.m1017c();
            }
            i++;
        }
        C4346e c4346e = (C4346e) c4343c.f13540c;
        C4351h[] c4351hArr = this.f13557m;
        int i2 = this.f13558n;
        Objects.requireNonNull(c4346e);
        int i3 = i2;
        if (i2 > c4351hArr.length) {
            i3 = c4351hArr.length;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            C4351h c4351h2 = c4351hArr[i4];
            int i5 = c4346e.f13561b;
            Object[] objArr = c4346e.f13560a;
            if (i5 < objArr.length) {
                objArr[i5] = c4351h2;
                c4346e.f13561b = i5 + 1;
            }
        }
        this.f13558n = 0;
        Arrays.fill((C4351h[]) this.f13556l.f13541d, (Object) null);
        this.f13546b = 0;
        this.f13547c.clear();
        this.f13553i = 1;
        for (int i6 = 0; i6 < this.f13554j; i6++) {
            C4341b[] c4341bArr = this.f13550f;
            if (c4341bArr[i6] != null) {
                Objects.requireNonNull(c4341bArr[i6]);
            }
        }
        m1032t();
        this.f13554j = 0;
        this.f13559o = new C4341b(this.f13556l);
    }
}
