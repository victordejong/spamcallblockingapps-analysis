package p193e.p1545k.p1546a.p1556c.p1573m0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
/* renamed from: e.k.a.c.m0.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/k.class */
public class C23881k extends AbstractC23883m {

    /* renamed from: j */
    public AbstractC23698i f66048j;

    public C23881k(Class<?> cls, C23884n c23884n) {
        super(cls, c23884n, null, null, 0, null, null, false);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: K */
    public AbstractC23698i mo5946K(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr) {
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: L */
    public AbstractC23698i mo5945L(AbstractC23698i abstractC23698i) {
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: M */
    public AbstractC23698i mo5944M(Object obj) {
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: N */
    public AbstractC23698i mo5943N(Object obj) {
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: P */
    public AbstractC23698i mo5942P() {
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: Q */
    public AbstractC23698i mo5941Q(Object obj) {
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: R */
    public AbstractC23698i mo5940R(Object obj) {
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == C23881k.class) {
        }
        return false;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.AbstractC23883m, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: j */
    public C23884n mo5924j() {
        AbstractC23698i abstractC23698i = this.f66048j;
        return abstractC23698i != null ? abstractC23698i.mo5924j() : this.f66052h;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: l */
    public StringBuilder mo5934l(StringBuilder sb) {
        AbstractC23698i abstractC23698i = this.f66048j;
        StringBuilder sb2 = sb;
        if (abstractC23698i != null) {
            sb2 = abstractC23698i.mo5934l(sb);
        }
        return sb2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: m */
    public StringBuilder mo5933m(StringBuilder sb) {
        AbstractC23698i abstractC23698i = this.f66048j;
        if (abstractC23698i != null) {
            return abstractC23698i.mo5934l(sb);
        }
        sb.append("?");
        return sb;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.AbstractC23883m, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: q */
    public AbstractC23698i mo5922q() {
        AbstractC23698i abstractC23698i = this.f66048j;
        return abstractC23698i != null ? abstractC23698i.mo5922q() : this.f66050f;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public String toString() {
        StringBuilder m8554x = C22128a.m8554x(40, "[recursive type; ");
        AbstractC23698i abstractC23698i = this.f66048j;
        if (abstractC23698i == null) {
            m8554x.append("UNRESOLVED");
        } else {
            m8554x.append(abstractC23698i.f65728a.getName());
        }
        return m8554x.toString();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: z */
    public boolean mo5931z() {
        return false;
    }
}
