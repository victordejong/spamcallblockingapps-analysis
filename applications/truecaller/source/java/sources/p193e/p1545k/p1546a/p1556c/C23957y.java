package p193e.p1545k.p1546a.p1556c;

import java.io.Serializable;
import java.util.Objects;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23383o;
import p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23354f;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23350e;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23459l;
import p193e.p1545k.p1546a.p1556c.p1558c0.C23445a;
import p193e.p1545k.p1546a.p1556c.p1558c0.C23452g;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23649d0;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23679q;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23680r;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23708d;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23937x;
/* renamed from: e.k.a.c.y */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/y.class */
public final class C23957y extends AbstractC23459l<EnumC23958z, C23957y> implements Serializable {

    /* renamed from: r */
    public static final AbstractC23383o f66309r = new C23350e();

    /* renamed from: s */
    public static final int f66310s = AbstractC23458k.m6866c(EnumC23958z.class);

    /* renamed from: l */
    public final AbstractC23383o f66311l;

    /* renamed from: m */
    public final int f66312m;

    /* renamed from: n */
    public final int f66313n;

    /* renamed from: o */
    public final int f66314o;

    /* renamed from: p */
    public final int f66315p;

    /* renamed from: q */
    public final int f66316q;

    public C23957y(C23445a c23445a, AbstractC23708d abstractC23708d, C23649d0 c23649d0, C23937x c23937x, C23452g c23452g) {
        super(c23445a, abstractC23708d, c23649d0, c23937x, c23452g);
        this.f66312m = f66310s;
        this.f66311l = f66309r;
        this.f66313n = 0;
        this.f66314o = 0;
        this.f66315p = 0;
        this.f66316q = 0;
    }

    public C23957y(C23957y c23957y, int i, int i2, int i3, int i4, int i5, int i6) {
        super(c23957y, i);
        this.f66312m = i2;
        this.f66311l = c23957y.f66311l;
        this.f66313n = i3;
        this.f66314o = i4;
        this.f66315p = i5;
        this.f66316q = i6;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23459l
    /* renamed from: p */
    public C23957y mo5653p(int i) {
        return new C23957y(this, i, this.f66312m, this.f66313n, this.f66314o, this.f66315p, this.f66316q);
    }

    /* renamed from: u */
    public void m5652u(AbstractC23372g abstractC23372g) {
        boolean z = true;
        if (((EnumC23958z.INDENT_OUTPUT.f66344b & this.f66312m) != 0) && abstractC23372g.f64640a == null) {
            AbstractC23383o abstractC23383o = this.f66311l;
            AbstractC23383o abstractC23383o2 = abstractC23383o;
            if (abstractC23383o instanceof AbstractC23354f) {
                abstractC23383o2 = (AbstractC23383o) ((AbstractC23354f) abstractC23383o).createInstance();
            }
            if (abstractC23383o2 != null) {
                abstractC23372g.f64640a = abstractC23383o2;
            }
        }
        if ((EnumC23958z.WRITE_BIGDECIMAL_AS_PLAIN.f66344b & this.f66312m) == 0) {
            z = false;
        }
        int i = this.f66314o;
        if (i != 0 || z) {
            int i2 = this.f66313n;
            int i3 = i;
            int i4 = i2;
            if (z) {
                int i5 = AbstractC23372g.EnumC23373a.WRITE_BIGDECIMAL_AS_PLAIN.f64653b;
                i4 = i2 | i5;
                i3 = i | i5;
            }
            abstractC23372g.mo5882I(i4, i3);
        }
        if (this.f66316q != 0) {
            Objects.requireNonNull(abstractC23372g);
        }
    }

    /* renamed from: v */
    public AbstractC23444c m5651v(AbstractC23698i abstractC23698i) {
        C23680r c23680r = (C23680r) this.f65071b.f65023b;
        C23679q m6347b = c23680r.m6347b(this, abstractC23698i);
        C23679q c23679q = m6347b;
        if (m6347b == null) {
            C23679q m6348a = c23680r.m6348a(this, abstractC23698i);
            c23679q = m6348a;
            if (m6348a == null) {
                c23679q = new C23679q(c23680r.m6345d(this, abstractC23698i, this, true));
            }
        }
        return c23679q;
    }

    /* renamed from: w */
    public final boolean m5650w(EnumC23958z enumC23958z) {
        return (enumC23958z.f66344b & this.f66312m) != 0;
    }
}
