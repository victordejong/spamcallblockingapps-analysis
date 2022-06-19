package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27433l;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27443v;
/* renamed from: n3.y.b.a.q0.w.r */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/r.class */
public final class C27285r implements AbstractC27260c0 {

    /* renamed from: a */
    public final AbstractC27272j f76737a;

    /* renamed from: b */
    public final C27433l f76738b = new C27433l(new byte[10]);

    /* renamed from: c */
    public int f76739c = 0;

    /* renamed from: d */
    public int f76740d;

    /* renamed from: e */
    public C27443v f76741e;

    /* renamed from: f */
    public boolean f76742f;

    /* renamed from: g */
    public boolean f76743g;

    /* renamed from: h */
    public boolean f76744h;

    /* renamed from: i */
    public int f76745i;

    /* renamed from: j */
    public int f76746j;

    /* renamed from: k */
    public boolean f76747k;

    /* renamed from: l */
    public long f76748l;

    public C27285r(AbstractC27272j abstractC27272j) {
        this.f76737a = abstractC27272j;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0
    /* renamed from: a */
    public final void mo614a() {
        this.f76739c = 0;
        this.f76740d = 0;
        this.f76744h = false;
        this.f76737a.mo629a();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0
    /* renamed from: b */
    public void mo613b(C27443v c27443v, AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        this.f76741e = c27443v;
        this.f76737a.mo625e(abstractC27180h, c27264d);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0
    /* renamed from: c */
    public final void mo612c(C27434m c27434m, int i) throws C27074c0 {
        boolean z;
        if ((i & 1) != 0) {
            int i2 = this.f76739c;
            if (i2 != 0 && i2 != 1 && i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalStateException();
                }
                int i3 = this.f76746j;
                this.f76737a.mo628b();
            }
            m619e(1);
        }
        while (c27434m.m340a() > 0) {
            int i4 = this.f76739c;
            if (i4 != 0) {
                int i5 = 0;
                if (i4 != 1) {
                    if (i4 == 2) {
                        if (m620d(c27434m, this.f76738b.f77196a, Math.min(10, this.f76745i)) && m620d(c27434m, null, this.f76745i)) {
                            this.f76738b.m344h(0);
                            this.f76748l = -9223372036854775807L;
                            if (this.f76742f) {
                                this.f76738b.m342j(4);
                                long m347e = this.f76738b.m347e(3);
                                this.f76738b.m342j(1);
                                long m347e2 = this.f76738b.m347e(15) << 15;
                                this.f76738b.m342j(1);
                                long m347e3 = this.f76738b.m347e(15);
                                this.f76738b.m342j(1);
                                if (!this.f76744h && this.f76743g) {
                                    this.f76738b.m342j(4);
                                    long m347e4 = this.f76738b.m347e(3);
                                    this.f76738b.m342j(1);
                                    long m347e5 = this.f76738b.m347e(15) << 15;
                                    this.f76738b.m342j(1);
                                    long m347e6 = this.f76738b.m347e(15);
                                    this.f76738b.m342j(1);
                                    this.f76741e.m296b((m347e4 << 30) | m347e5 | m347e6);
                                    this.f76744h = true;
                                }
                                this.f76748l = this.f76741e.m296b((m347e << 30) | m347e2 | m347e3);
                            }
                            i |= this.f76747k ? 4 : 0;
                            this.f76737a.mo627c(this.f76748l, i);
                            m619e(3);
                        }
                    } else if (i4 != 3) {
                        throw new IllegalStateException();
                    } else {
                        int m340a = c27434m.m340a();
                        int i6 = this.f76746j;
                        if (i6 != -1) {
                            i5 = m340a - i6;
                        }
                        int i7 = m340a;
                        if (i5 > 0) {
                            i7 = m340a - i5;
                            c27434m.m316y(c27434m.f77201b + i7);
                        }
                        this.f76737a.mo626d(c27434m);
                        int i8 = this.f76746j;
                        if (i8 != -1) {
                            int i9 = i8 - i7;
                            this.f76746j = i9;
                            if (i9 == 0) {
                                this.f76737a.mo628b();
                                m619e(1);
                            }
                        }
                    }
                } else if (m620d(c27434m, this.f76738b.f77196a, 9)) {
                    int i10 = 0;
                    this.f76738b.m344h(0);
                    if (this.f76738b.m347e(24) != 1) {
                        this.f76746j = -1;
                        z = false;
                    } else {
                        this.f76738b.m342j(8);
                        int m347e7 = this.f76738b.m347e(16);
                        this.f76738b.m342j(5);
                        this.f76747k = this.f76738b.m348d();
                        this.f76738b.m342j(2);
                        this.f76742f = this.f76738b.m348d();
                        this.f76743g = this.f76738b.m348d();
                        this.f76738b.m342j(6);
                        int m347e8 = this.f76738b.m347e(8);
                        this.f76745i = m347e8;
                        if (m347e7 == 0) {
                            this.f76746j = -1;
                        } else {
                            this.f76746j = ((m347e7 + 6) - 9) - m347e8;
                        }
                        z = true;
                    }
                    if (z) {
                        i10 = 2;
                    }
                    m619e(i10);
                }
            } else {
                c27434m.m341A(c27434m.m340a());
            }
        }
    }

    /* renamed from: d */
    public final boolean m620d(C27434m c27434m, byte[] bArr, int i) {
        int min = Math.min(c27434m.m340a(), i - this.f76740d);
        boolean z = true;
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            c27434m.m341A(min);
        } else {
            System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, this.f76740d, min);
            c27434m.f77201b += min;
        }
        int i2 = this.f76740d + min;
        this.f76740d = i2;
        if (i2 != i) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public final void m619e(int i) {
        this.f76739c = i;
        this.f76740d = 0;
    }
}
