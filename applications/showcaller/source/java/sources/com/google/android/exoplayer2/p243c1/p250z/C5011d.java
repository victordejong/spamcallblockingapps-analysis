package com.google.android.exoplayer2.p243c1.p250z;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4983m;
import com.google.android.exoplayer2.p243c1.C4985n;
import com.google.android.exoplayer2.p243c1.C4987o;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5522l;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.z.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/z/d.class */
public final class C5011d implements AbstractC4978h {

    /* renamed from: a */
    public static final AbstractC4982l f15582a = C5006a.f15577a;

    /* renamed from: b */
    private final byte[] f15583b;

    /* renamed from: c */
    private final C5536v f15584c;

    /* renamed from: d */
    private final boolean f15585d;

    /* renamed from: e */
    private final C4983m.C4984a f15586e;

    /* renamed from: f */
    private AbstractC4980j f15587f;

    /* renamed from: g */
    private AbstractC4996v f15588g;

    /* renamed from: h */
    private int f15589h;

    /* renamed from: i */
    private Metadata f15590i;

    /* renamed from: j */
    private C5522l f15591j;

    /* renamed from: k */
    private int f15592k;

    /* renamed from: l */
    private int f15593l;

    /* renamed from: m */
    private C5008c f15594m;

    /* renamed from: n */
    private int f15595n;

    /* renamed from: o */
    private long f15596o;

    public C5011d() {
        this(0);
    }

    public C5011d(int i) {
        this.f15583b = new byte[42];
        this.f15584c = new C5536v(new byte[32768], 0);
        this.f15585d = (i & 1) == 0 ? false : true;
        this.f15586e = new C4983m.C4984a();
        this.f15589h = 0;
    }

    /* renamed from: a */
    private long m20930a(C5536v c5536v, boolean z) {
        boolean z2;
        C5508e.m18911e(this.f15591j);
        int m18676c = c5536v.m18676c();
        while (m18676c <= c5536v.m18675d() - 16) {
            c5536v.m18680M(m18676c);
            if (C4983m.m20994d(c5536v, this.f15591j, this.f15593l, this.f15586e)) {
                c5536v.m18680M(m18676c);
                return this.f15586e.f15495a;
            }
            m18676c++;
        }
        if (!z) {
            c5536v.m18680M(m18676c);
            return -1L;
        }
        while (m18676c <= c5536v.m18675d() - this.f15592k) {
            c5536v.m18680M(m18676c);
            try {
                z2 = C4983m.m20994d(c5536v, this.f15591j, this.f15593l, this.f15586e);
            } catch (IndexOutOfBoundsException e) {
                z2 = false;
            }
            if (c5536v.m18676c() > c5536v.m18675d()) {
                z2 = false;
            }
            if (z2) {
                c5536v.m18680M(m18676c);
                return this.f15586e.f15495a;
            }
            m18676c++;
        }
        c5536v.m18680M(c5536v.m18675d());
        return -1L;
    }

    /* renamed from: d */
    private void m20929d(AbstractC4979i abstractC4979i) {
        this.f15593l = C4985n.m20986b(abstractC4979i);
        ((AbstractC4980j) C5515h0.m18833g(this.f15587f)).mo19764c(m20928e(abstractC4979i.mo20999k(), abstractC4979i.getLength()));
        this.f15589h = 5;
    }

    /* renamed from: e */
    private AbstractC4992t m20928e(long j, long j2) {
        C5508e.m18911e(this.f15591j);
        C5522l c5522l = this.f15591j;
        if (c5522l.f17905k != null) {
            return new C4987o(c5522l, j);
        }
        if (j2 == -1 || c5522l.f17904j <= 0) {
            return new AbstractC4992t.C4994b(c5522l.m18769h());
        }
        C5008c c5008c = new C5008c(c5522l, this.f15593l, j, j2);
        this.f15594m = c5008c;
        return c5008c.m21370b();
    }

    /* renamed from: i */
    private void m20927i(AbstractC4979i abstractC4979i) {
        byte[] bArr = this.f15583b;
        abstractC4979i.mo21000j(bArr, 0, bArr.length);
        abstractC4979i.mo21003g();
        this.f15589h = 2;
    }

    /* renamed from: j */
    public static /* synthetic */ AbstractC4978h[] m20926j() {
        return new AbstractC4978h[]{new C5011d()};
    }

    /* renamed from: k */
    private void m20925k() {
        ((AbstractC4996v) C5515h0.m18833g(this.f15588g)).mo19984c((this.f15596o * 1000000) / ((C5522l) C5515h0.m18833g(this.f15591j)).f17899e, 1, this.f15595n, 0, null);
    }

    /* renamed from: l */
    private int m20924l(AbstractC4979i abstractC4979i, C4991s c4991s) {
        boolean z;
        C5508e.m18911e(this.f15588g);
        C5508e.m18911e(this.f15591j);
        C5008c c5008c = this.f15594m;
        if (c5008c == null || !c5008c.m21368d()) {
            if (this.f15596o == -1) {
                this.f15596o = C4983m.m20989i(abstractC4979i, this.f15591j);
                return 0;
            }
            int m18675d = this.f15584c.m18675d();
            if (m18675d < 32768) {
                int read = abstractC4979i.read(this.f15584c.f17941a, m18675d, 32768 - m18675d);
                z = read == -1;
                if (!z) {
                    this.f15584c.m18681L(m18675d + read);
                } else if (this.f15584c.m18678a() == 0) {
                    m20925k();
                    return -1;
                }
            } else {
                z = false;
            }
            int m18676c = this.f15584c.m18676c();
            int i = this.f15595n;
            int i2 = this.f15592k;
            if (i < i2) {
                C5536v c5536v = this.f15584c;
                c5536v.m18679N(Math.min(i2 - i, c5536v.m18678a()));
            }
            long m20930a = m20930a(this.f15584c, z);
            int m18676c2 = this.f15584c.m18676c() - m18676c;
            this.f15584c.m18680M(m18676c);
            this.f15588g.mo19985b(this.f15584c, m18676c2);
            this.f15595n += m18676c2;
            if (m20930a != -1) {
                m20925k();
                this.f15595n = 0;
                this.f15596o = m20930a;
            }
            if (this.f15584c.m18678a() >= 16) {
                return 0;
            }
            C5536v c5536v2 = this.f15584c;
            byte[] bArr = c5536v2.f17941a;
            int m18676c3 = c5536v2.m18676c();
            C5536v c5536v3 = this.f15584c;
            System.arraycopy(bArr, m18676c3, c5536v3.f17941a, 0, c5536v3.m18678a());
            C5536v c5536v4 = this.f15584c;
            c5536v4.m18684I(c5536v4.m18678a());
            return 0;
        }
        return this.f15594m.m21369c(abstractC4979i, c4991s);
    }

    /* renamed from: m */
    private void m20923m(AbstractC4979i abstractC4979i) {
        this.f15590i = C4985n.m20984d(abstractC4979i, !this.f15585d);
        this.f15589h = 1;
    }

    /* renamed from: n */
    private void m20922n(AbstractC4979i abstractC4979i) {
        C4985n.C4986a c4986a = new C4985n.C4986a(this.f15591j);
        boolean z = false;
        while (!z) {
            z = C4985n.m20983e(abstractC4979i, c4986a);
            this.f15591j = (C5522l) C5515h0.m18833g(c4986a.f15496a);
        }
        C5508e.m18911e(this.f15591j);
        this.f15592k = Math.max(this.f15591j.f17897c, 6);
        ((AbstractC4996v) C5515h0.m18833g(this.f15588g)).mo19983d(this.f15591j.m18768i(this.f15583b, this.f15590i));
        this.f15589h = 4;
    }

    /* renamed from: o */
    private void m20921o(AbstractC4979i abstractC4979i) {
        C4985n.m20978j(abstractC4979i);
        this.f15589h = 3;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    public boolean mo19972c(AbstractC4979i abstractC4979i) {
        C4985n.m20985c(abstractC4979i, false);
        return C4985n.m20987a(abstractC4979i);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        int i = this.f15589h;
        if (i == 0) {
            m20923m(abstractC4979i);
            return 0;
        } else if (i == 1) {
            m20927i(abstractC4979i);
            return 0;
        } else if (i == 2) {
            m20921o(abstractC4979i);
            return 0;
        } else if (i == 3) {
            m20922n(abstractC4979i);
            return 0;
        } else if (i == 4) {
            m20929d(abstractC4979i);
            return 0;
        } else if (i != 5) {
            throw new IllegalStateException();
        } else {
            return m20924l(abstractC4979i, c4991s);
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f15587f = abstractC4980j;
        this.f15588g = abstractC4980j.mo19748t(0, 1);
        abstractC4980j.mo19752o();
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        if (j == 0) {
            this.f15589h = 0;
        } else {
            C5008c c5008c = this.f15594m;
            if (c5008c != null) {
                c5008c.m21364h(j2);
            }
        }
        this.f15596o = j2 == 0 ? (char) 0 : (char) 65535;
        this.f15595n = 0;
        this.f15584c.m18685H();
    }
}
