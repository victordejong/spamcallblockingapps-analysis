package p193e.p1545k.p1546a.p1556c.p1573m0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
/* renamed from: e.k.a.c.m0.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/d.class */
public class C23874d extends AbstractC23883m {

    /* renamed from: j */
    public final AbstractC23698i f66027j;

    public C23874d(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr, AbstractC23698i abstractC23698i2, Object obj, Object obj2, boolean z) {
        super(cls, c23884n, abstractC23698i, abstractC23698iArr, abstractC23698i2.f65729b, obj, obj2, z);
        this.f66027j = abstractC23698i2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: K */
    public AbstractC23698i mo5946K(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr) {
        return new C23874d(cls, c23884n, abstractC23698i, abstractC23698iArr, this.f66027j, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: L */
    public AbstractC23698i mo5945L(AbstractC23698i abstractC23698i) {
        return this.f66027j == abstractC23698i ? this : new C23874d(this.f65728a, this.f66052h, this.f66050f, this.f66051g, abstractC23698i, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: O */
    public AbstractC23698i mo5971O(AbstractC23698i abstractC23698i) {
        AbstractC23698i mo5971O = super.mo5971O(abstractC23698i);
        AbstractC23698i mo5948k = abstractC23698i.mo5948k();
        AbstractC23698i abstractC23698i2 = mo5971O;
        if (mo5948k != null) {
            AbstractC23698i mo5971O2 = this.f66027j.mo5971O(mo5948k);
            abstractC23698i2 = mo5971O;
            if (mo5971O2 != this.f66027j) {
                abstractC23698i2 = mo5971O.mo5945L(mo5971O2);
            }
        }
        return abstractC23698i2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.AbstractC23883m
    /* renamed from: T */
    public String mo5929T() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f65728a.getName());
        if (this.f66027j != null) {
            sb.append('<');
            sb.append(this.f66027j.mo5928e());
            sb.append('>');
        }
        return sb.toString();
    }

    /* renamed from: U */
    public C23874d mo5944M(Object obj) {
        return new C23874d(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66027j.mo5941Q(obj), this.f65730c, this.f65731d, this.f65732e);
    }

    /* renamed from: V */
    public C23874d mo5943N(Object obj) {
        return new C23874d(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66027j.mo5940R(obj), this.f65730c, this.f65731d, this.f65732e);
    }

    /* renamed from: W */
    public C23874d mo5942P() {
        return this.f65732e ? this : new C23874d(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66027j.mo5942P(), this.f65730c, this.f65731d, true);
    }

    /* renamed from: X */
    public C23874d mo5941Q(Object obj) {
        return new C23874d(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66027j, this.f65730c, obj, this.f65732e);
    }

    /* renamed from: Y */
    public C23874d mo5940R(Object obj) {
        return new C23874d(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66027j, obj, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        C23874d c23874d = (C23874d) obj;
        if (this.f65728a != c23874d.f65728a || !this.f66027j.equals(c23874d.f66027j)) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: k */
    public AbstractC23698i mo5948k() {
        return this.f66027j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: l */
    public StringBuilder mo5934l(StringBuilder sb) {
        AbstractC23883m.m5930S(this.f65728a, sb, true);
        return sb;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: m */
    public StringBuilder mo5933m(StringBuilder sb) {
        AbstractC23883m.m5930S(this.f65728a, sb, false);
        sb.append('<');
        this.f66027j.mo5933m(sb);
        sb.append(">;");
        return sb;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: t */
    public boolean mo5969t() {
        return super.mo5969t() || this.f66027j.mo5969t();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[collection-like type; class ");
        C22128a.m8545z0(this.f65728a, m8728C, ", contains ");
        m8728C.append(this.f66027j);
        m8728C.append("]");
        return m8728C.toString();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: x */
    public boolean mo5983x() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: z */
    public boolean mo5931z() {
        return true;
    }
}
