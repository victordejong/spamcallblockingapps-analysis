package p193e.p1545k.p1546a.p1556c.p1573m0;

import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
/* renamed from: e.k.a.c.m0.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/g.class */
public class C23877g extends AbstractC23883m {

    /* renamed from: j */
    public final AbstractC23698i f66042j;

    /* renamed from: k */
    public final AbstractC23698i f66043k;

    public C23877g(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr, AbstractC23698i abstractC23698i2, AbstractC23698i abstractC23698i3, Object obj, Object obj2, boolean z) {
        super(cls, c23884n, abstractC23698i, abstractC23698iArr, abstractC23698i2.f65729b ^ abstractC23698i3.f65729b, obj, obj2, z);
        this.f66042j = abstractC23698i2;
        this.f66043k = abstractC23698i3;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: F */
    public boolean mo5972F() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: K */
    public AbstractC23698i mo5946K(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr) {
        return new C23877g(cls, c23884n, abstractC23698i, abstractC23698iArr, this.f66042j, this.f66043k, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: L */
    public AbstractC23698i mo5945L(AbstractC23698i abstractC23698i) {
        return this.f66043k == abstractC23698i ? this : new C23877g(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j, abstractC23698i, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: O */
    public AbstractC23698i mo5971O(AbstractC23698i abstractC23698i) {
        AbstractC23698i mo5971O = super.mo5971O(abstractC23698i);
        AbstractC23698i mo5970o = abstractC23698i.mo5970o();
        C23877g c23877g = mo5971O;
        if (mo5971O instanceof C23877g) {
            c23877g = mo5971O;
            if (mo5970o != null) {
                AbstractC23698i mo5971O2 = this.f66042j.mo5971O(mo5970o);
                c23877g = mo5971O;
                if (mo5971O2 != this.f66042j) {
                    c23877g = ((C23877g) mo5971O).mo5966W(mo5971O2);
                }
            }
        }
        AbstractC23698i mo5948k = abstractC23698i.mo5948k();
        AbstractC23698i abstractC23698i2 = c23877g;
        if (mo5948k != null) {
            AbstractC23698i mo5971O3 = this.f66043k.mo5971O(mo5948k);
            abstractC23698i2 = c23877g;
            if (mo5971O3 != this.f66043k) {
                abstractC23698i2 = c23877g.mo5945L(mo5971O3);
            }
        }
        return abstractC23698i2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.AbstractC23883m
    /* renamed from: T */
    public String mo5929T() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f65728a.getName());
        if (this.f66042j != null) {
            sb.append('<');
            sb.append(this.f66042j.mo5928e());
            sb.append(',');
            sb.append(this.f66043k.mo5928e());
            sb.append('>');
        }
        return sb.toString();
    }

    /* renamed from: U */
    public C23877g mo5944M(Object obj) {
        return new C23877g(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j, this.f66043k.mo5941Q(obj), this.f65730c, this.f65731d, this.f65732e);
    }

    /* renamed from: V */
    public C23877g mo5943N(Object obj) {
        return new C23877g(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j, this.f66043k.mo5940R(obj), this.f65730c, this.f65731d, this.f65732e);
    }

    /* renamed from: W */
    public C23877g mo5966W(AbstractC23698i abstractC23698i) {
        return abstractC23698i == this.f66042j ? this : new C23877g(this.f65728a, this.f66052h, this.f66050f, this.f66051g, abstractC23698i, this.f66043k, this.f65730c, this.f65731d, this.f65732e);
    }

    /* renamed from: X */
    public C23877g mo5965X(Object obj) {
        return new C23877g(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j.mo5940R(obj), this.f66043k, this.f65730c, this.f65731d, this.f65732e);
    }

    /* renamed from: Y */
    public C23877g mo5942P() {
        return this.f65732e ? this : new C23877g(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j, this.f66043k.mo5942P(), this.f65730c, this.f65731d, true);
    }

    /* renamed from: Z */
    public C23877g mo5941Q(Object obj) {
        return new C23877g(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j, this.f66043k, this.f65730c, obj, this.f65732e);
    }

    /* renamed from: a0 */
    public C23877g mo5940R(Object obj) {
        return new C23877g(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j, this.f66043k, obj, this.f65731d, this.f65732e);
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
        C23877g c23877g = (C23877g) obj;
        if (this.f65728a != c23877g.f65728a || !this.f66042j.equals(c23877g.f66042j) || !this.f66043k.equals(c23877g.f66043k)) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: k */
    public AbstractC23698i mo5948k() {
        return this.f66043k;
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
        this.f66042j.mo5933m(sb);
        this.f66043k.mo5933m(sb);
        sb.append(">;");
        return sb;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: o */
    public AbstractC23698i mo5970o() {
        return this.f66042j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: t */
    public boolean mo5969t() {
        return super.mo5969t() || this.f66043k.mo5969t() || this.f66042j.mo5969t();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public String toString() {
        return String.format("[map-like type; class %s, %s -> %s]", this.f65728a.getName(), this.f66042j, this.f66043k);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: z */
    public boolean mo5931z() {
        return true;
    }
}
