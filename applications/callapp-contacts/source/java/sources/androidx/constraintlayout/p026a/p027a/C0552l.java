package androidx.constraintlayout.p026a.p027a;

import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.p028a.C0513b;
/* renamed from: androidx.constraintlayout.a.a.l */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/l.class */
public class C0552l extends C0550j {

    /* renamed from: aZ */
    public int f2219aZ = 0;

    /* renamed from: ba */
    public int f2221ba = 0;

    /* renamed from: a */
    private int f2218a = 0;

    /* renamed from: b */
    private int f2220b = 0;

    /* renamed from: bb */
    public int f2222bb = 0;

    /* renamed from: bc */
    public int f2223bc = 0;

    /* renamed from: bd */
    public int f2224bd = 0;

    /* renamed from: be */
    public int f2225be = 0;

    /* renamed from: bf */
    public boolean f2226bf = false;

    /* renamed from: bg */
    public int f2227bg = 0;

    /* renamed from: bh */
    public int f2228bh = 0;

    /* renamed from: bi */
    protected C0513b.C0514a f2229bi = new C0513b.C0514a();

    /* renamed from: bj */
    C0513b.AbstractC0515b f2230bj = null;

    /* renamed from: a */
    public void mo45174a(int i, int i2, int i3, int i4) {
    }

    /* renamed from: a */
    public final void m45173a(C0541e c0541e, C0541e.EnumC0543a enumC0543a, int i, C0541e.EnumC0543a enumC0543a2, int i2) {
        while (this.f2230bj == null && this.f2060S != null) {
            this.f2230bj = ((C0544f) this.f2060S).m45226f();
        }
        this.f2229bi.f1930d = enumC0543a;
        this.f2229bi.f1931e = enumC0543a2;
        this.f2229bi.f1932f = i;
        this.f2229bi.f1933g = i2;
        this.f2230bj.mo44732a(c0541e, this.f2229bi);
        c0541e.m45271g(this.f2229bi.f1934h);
        c0541e.m45269h(this.f2229bi.f1935i);
        c0541e.f2044C = this.f2229bi.f1937k;
        c0541e.m45264k(this.f2229bi.f1936j);
    }

    /* renamed from: d */
    public final void m45172d() {
        for (int i = 0; i < this.f2216aY; i++) {
            C0541e c0541e = this.f2215aX[i];
            if (c0541e != null) {
                c0541e.f2046E = true;
            }
        }
    }

    /* renamed from: e */
    public final boolean m45171e() {
        C0513b.AbstractC0515b m45226f = this.f2060S != null ? ((C0544f) this.f2060S).m45226f() : null;
        if (m45226f == null) {
            return false;
        }
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= this.f2216aY) {
                return true;
            }
            C0541e c0541e = this.f2215aX[i];
            if (c0541e != null && !(c0541e instanceof C0547h)) {
                C0541e.EnumC0543a m45262l = c0541e.m45262l(0);
                C0541e.EnumC0543a m45262l2 = c0541e.m45262l(1);
                if (m45262l != C0541e.EnumC0543a.MATCH_CONSTRAINT || c0541e.f2120o == 1 || m45262l2 != C0541e.EnumC0543a.MATCH_CONSTRAINT || c0541e.f2121p == 1) {
                    z = false;
                }
                if (!z) {
                    C0541e.EnumC0543a enumC0543a = m45262l;
                    if (m45262l == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
                        enumC0543a = C0541e.EnumC0543a.WRAP_CONTENT;
                    }
                    C0541e.EnumC0543a enumC0543a2 = m45262l2;
                    if (m45262l2 == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
                        enumC0543a2 = C0541e.EnumC0543a.WRAP_CONTENT;
                    }
                    this.f2229bi.f1930d = enumC0543a;
                    this.f2229bi.f1931e = enumC0543a2;
                    this.f2229bi.f1932f = c0541e.m45257o();
                    this.f2229bi.f1933g = c0541e.m45255p();
                    m45226f.mo44732a(c0541e, this.f2229bi);
                    c0541e.m45271g(this.f2229bi.f1934h);
                    c0541e.m45269h(this.f2229bi.f1935i);
                    c0541e.m45264k(this.f2229bi.f1936j);
                }
            }
            i++;
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0550j, androidx.constraintlayout.p026a.p027a.AbstractC0549i
    /* renamed from: f_ */
    public final void mo45170f_() {
        m45172d();
    }

    /* renamed from: g */
    public final void m45169g(int i, int i2) {
        this.f2227bg = i;
        this.f2228bh = i2;
    }

    /* renamed from: p */
    public final void m45168p(int i) {
        this.f2218a = i;
        this.f2219aZ = i;
        this.f2220b = i;
        this.f2221ba = i;
        this.f2222bb = i;
        this.f2223bc = i;
    }

    /* renamed from: q */
    public final void m45167q(int i) {
        this.f2218a = i;
        this.f2224bd = i;
    }

    /* renamed from: r */
    public final void m45166r(int i) {
        this.f2220b = i;
        this.f2225be = i;
    }
}
