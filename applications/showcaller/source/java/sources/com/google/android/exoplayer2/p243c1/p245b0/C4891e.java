package com.google.android.exoplayer2.p243c1.p245b0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.C5147b;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4988p;
import com.google.android.exoplayer2.p243c1.C4989q;
import com.google.android.exoplayer2.p243c1.C4990r;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.p243c1.p245b0.AbstractC4892f;
import com.google.android.exoplayer2.util.C5536v;
import java.io.EOFException;
/* renamed from: com.google.android.exoplayer2.c1.b0.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/b0/e.class */
public final class C4891e implements AbstractC4978h {

    /* renamed from: a */
    public static final AbstractC4982l f14992a = C4887a.f14987a;

    /* renamed from: b */
    private static final C5147b.AbstractC5148a f14993b = C4888b.f14988a;

    /* renamed from: c */
    private final int f14994c;

    /* renamed from: d */
    private final long f14995d;

    /* renamed from: e */
    private final C5536v f14996e;

    /* renamed from: f */
    private final C4990r f14997f;

    /* renamed from: g */
    private final C4988p f14998g;

    /* renamed from: h */
    private final C4989q f14999h;

    /* renamed from: i */
    private AbstractC4980j f15000i;

    /* renamed from: j */
    private AbstractC4996v f15001j;

    /* renamed from: k */
    private int f15002k;

    /* renamed from: l */
    private Metadata f15003l;

    /* renamed from: m */
    private AbstractC4892f f15004m;

    /* renamed from: n */
    private boolean f15005n;

    /* renamed from: o */
    private long f15006o;

    /* renamed from: p */
    private long f15007p;

    /* renamed from: q */
    private long f15008q;

    /* renamed from: r */
    private int f15009r;

    public C4891e() {
        this(0);
    }

    public C4891e(int i) {
        this(i, -9223372036854775807L);
    }

    public C4891e(int i, long j) {
        this.f14994c = i;
        this.f14995d = j;
        this.f14996e = new C5536v(10);
        this.f14997f = new C4990r();
        this.f14998g = new C4988p();
        this.f15006o = -9223372036854775807L;
        this.f14999h = new C4989q();
    }

    /* renamed from: d */
    private AbstractC4892f m21267d(AbstractC4979i abstractC4979i) {
        abstractC4979i.mo21000j(this.f14996e.f17941a, 0, 4);
        this.f14996e.m18680M(0);
        C4990r.m20966e(this.f14996e.m18668k(), this.f14997f);
        return new C4889c(abstractC4979i.getLength(), abstractC4979i.mo20999k(), this.f14997f);
    }

    /* renamed from: e */
    private static int m21266e(C5536v c5536v, int i) {
        if (c5536v.m18675d() >= i + 4) {
            c5536v.m18680M(i);
            int m18668k = c5536v.m18668k();
            if (m18668k == 1483304551 || m18668k == 1231971951) {
                return m18668k;
            }
        }
        if (c5536v.m18675d() >= 40) {
            c5536v.m18680M(36);
            return c5536v.m18668k() == 1447187017 ? 1447187017 : 0;
        }
        return 0;
    }

    /* renamed from: i */
    private static boolean m21265i(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    /* renamed from: j */
    public static /* synthetic */ AbstractC4978h[] m21264j() {
        return new AbstractC4978h[]{new C4891e()};
    }

    /* renamed from: k */
    public static /* synthetic */ boolean m21263k(int i, int i2, int i3, int i4, int i5) {
        return (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) || (i2 == 77 && i3 == 76 && i4 == 76 && (i5 == 84 || i == 2));
    }

    /* renamed from: l */
    private static C4890d m21262l(Metadata metadata, long j) {
        if (metadata != null) {
            int m20392d = metadata.m20392d();
            for (int i = 0; i < m20392d; i++) {
                Metadata.Entry m20393c = metadata.m20393c(i);
                if (m20393c instanceof MlltFrame) {
                    return C4890d.m21270b(j, (MlltFrame) m20393c);
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: m */
    private AbstractC4892f m21261m(AbstractC4979i abstractC4979i) {
        int i;
        C4894g c4894g;
        C5536v c5536v = new C5536v(this.f14997f.f15512j);
        abstractC4979i.mo21000j(c5536v.f17941a, 0, this.f14997f.f15512j);
        C4990r c4990r = this.f14997f;
        int i2 = c4990r.f15510h;
        int i3 = c4990r.f15514l;
        if ((i2 & 1) != 0) {
            if (i3 != 1) {
                i = 36;
            }
            i = 21;
        } else {
            if (i3 == 1) {
                i = 13;
            }
            i = 21;
        }
        int m21266e = m21266e(c5536v, i);
        if (m21266e == 1483304551 || m21266e == 1231971951) {
            C4895h m21255b = C4895h.m21255b(abstractC4979i.getLength(), abstractC4979i.mo20999k(), this.f14997f, c5536v);
            if (m21255b != null && !this.f14998g.m20975a()) {
                abstractC4979i.mo21003g();
                abstractC4979i.mo21006d(i + 141);
                abstractC4979i.mo21000j(this.f14996e.f17941a, 0, 3);
                this.f14996e.m18680M(0);
                this.f14998g.m20972d(this.f14996e.m18690C());
            }
            abstractC4979i.mo21002h(this.f14997f.f15512j);
            c4894g = m21255b;
            if (m21255b != null) {
                c4894g = m21255b;
                if (!m21255b.mo20622d()) {
                    c4894g = m21255b;
                    if (m21266e == 1231971951) {
                        return m21267d(abstractC4979i);
                    }
                }
            }
        } else if (m21266e == 1447187017) {
            c4894g = C4894g.m21257b(abstractC4979i.getLength(), abstractC4979i.mo20999k(), this.f14997f, c5536v);
            abstractC4979i.mo21002h(this.f14997f.f15512j);
        } else {
            c4894g = null;
            abstractC4979i.mo21003g();
        }
        return c4894g;
    }

    /* renamed from: n */
    private boolean m21260n(AbstractC4979i abstractC4979i) {
        AbstractC4892f abstractC4892f = this.f15004m;
        if (abstractC4892f != null) {
            long mo21256a = abstractC4892f.mo21256a();
            if (mo21256a != -1 && abstractC4979i.mo21007c() > mo21256a - 4) {
                return true;
            }
        }
        try {
            return !abstractC4979i.mo21008b(this.f14996e.f17941a, 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    /* renamed from: o */
    private int m21259o(AbstractC4979i abstractC4979i) {
        C4990r c4990r;
        if (this.f15009r == 0) {
            abstractC4979i.mo21003g();
            if (m21260n(abstractC4979i)) {
                return -1;
            }
            this.f14996e.m18680M(0);
            int m18668k = this.f14996e.m18668k();
            if (!m21265i(m18668k, this.f15002k) || C4990r.m20969b(m18668k) == -1) {
                abstractC4979i.mo21002h(1);
                this.f15002k = 0;
                return 0;
            }
            C4990r.m20966e(m18668k, this.f14997f);
            if (this.f15006o == -9223372036854775807L) {
                this.f15006o = this.f15004m.mo21253e(abstractC4979i.mo20999k());
                if (this.f14995d != -9223372036854775807L) {
                    this.f15006o += this.f14995d - this.f15004m.mo21253e(0L);
                }
            }
            this.f15009r = this.f14997f.f15512j;
        }
        int mo19986a = this.f15001j.mo19986a(abstractC4979i, this.f15009r, true);
        if (mo19986a == -1) {
            return -1;
        }
        int i = this.f15009r - mo19986a;
        this.f15009r = i;
        if (i > 0) {
            return 0;
        }
        this.f15001j.mo19984c(this.f15006o + ((this.f15007p * 1000000) / c4990r.f15513k), 1, this.f14997f.f15512j, 0, null);
        this.f15007p += this.f14997f.f15516n;
        this.f15009r = 0;
        return 0;
    }

    /* renamed from: p */
    private boolean m21258p(AbstractC4979i abstractC4979i, boolean z) {
        int i;
        int m20969b;
        int i2;
        int i3 = z ? 16384 : 131072;
        abstractC4979i.mo21003g();
        if (abstractC4979i.mo20999k() == 0) {
            Metadata m20971a = this.f14999h.m20971a(abstractC4979i, (this.f14994c & 2) == 0 ? null : f14993b);
            this.f15003l = m20971a;
            if (m20971a != null) {
                this.f14998g.m20973c(m20971a);
            }
            i = (int) abstractC4979i.mo21007c();
            if (!z) {
                abstractC4979i.mo21002h(i);
            }
        } else {
            i = 0;
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (!m21260n(abstractC4979i)) {
                this.f14996e.m18680M(0);
                int m18668k = this.f14996e.m18668k();
                if ((i4 == 0 || m21265i(m18668k, i4)) && (m20969b = C4990r.m20969b(m18668k)) != -1) {
                    int i7 = i5 + 1;
                    if (i7 != 1) {
                        i2 = i4;
                        if (i7 == 4) {
                            break;
                        }
                    } else {
                        C4990r.m20966e(m18668k, this.f14997f);
                        i2 = m18668k;
                    }
                    abstractC4979i.mo21006d(m20969b - 4);
                    i4 = i2;
                    i5 = i7;
                } else {
                    int i8 = i6 + 1;
                    if (i6 == i3) {
                        if (!z) {
                            throw new ParserException("Searched too many bytes.");
                        }
                        return false;
                    }
                    if (z) {
                        abstractC4979i.mo21003g();
                        abstractC4979i.mo21006d(i + i8);
                    } else {
                        abstractC4979i.mo21002h(1);
                    }
                    i6 = i8;
                    i4 = 0;
                    i5 = 0;
                }
            } else if (i5 <= 0) {
                throw new EOFException();
            }
        }
        if (z) {
            abstractC4979i.mo21002h(i + i6);
        } else {
            abstractC4979i.mo21003g();
        }
        this.f15002k = i4;
        return true;
    }

    /* renamed from: a */
    public void m21268a() {
        this.f15005n = true;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    public boolean mo19972c(AbstractC4979i abstractC4979i) {
        return m21258p(abstractC4979i, true);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        if (this.f15002k == 0) {
            try {
                m21258p(abstractC4979i, false);
            } catch (EOFException e) {
                return -1;
            }
        }
        if (this.f15004m == null) {
            AbstractC4892f m21261m = m21261m(abstractC4979i);
            C4890d m21262l = m21262l(this.f15003l, abstractC4979i.mo20999k());
            if (this.f15005n) {
                this.f15004m = new AbstractC4892f.C4893a();
            } else {
                if (m21262l != null) {
                    this.f15004m = m21262l;
                } else if (m21261m != null) {
                    this.f15004m = m21261m;
                }
                AbstractC4892f abstractC4892f = this.f15004m;
                if (abstractC4892f == null || (!abstractC4892f.mo20622d() && (this.f14994c & 1) != 0)) {
                    this.f15004m = m21267d(abstractC4979i);
                }
            }
            this.f15000i.mo19764c(this.f15004m);
            AbstractC4996v abstractC4996v = this.f15001j;
            C4990r c4990r = this.f14997f;
            String str = c4990r.f15511i;
            int i = c4990r.f15514l;
            int i2 = c4990r.f15513k;
            C4988p c4988p = this.f14998g;
            abstractC4996v.mo19983d(Format.m21742m(null, str, null, -1, 4096, i, i2, -1, c4988p.f15500b, c4988p.f15501c, null, null, 0, null, (this.f14994c & 2) != 0 ? null : this.f15003l));
            this.f15008q = abstractC4979i.mo20999k();
        } else if (this.f15008q != 0) {
            long mo20999k = abstractC4979i.mo20999k();
            long j = this.f15008q;
            if (mo20999k < j) {
                abstractC4979i.mo21002h((int) (j - mo20999k));
            }
        }
        return m21259o(abstractC4979i);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f15000i = abstractC4980j;
        this.f15001j = abstractC4980j.mo19748t(0, 1);
        this.f15000i.mo19752o();
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        this.f15002k = 0;
        this.f15006o = -9223372036854775807L;
        this.f15007p = 0L;
        this.f15009r = 0;
    }
}
