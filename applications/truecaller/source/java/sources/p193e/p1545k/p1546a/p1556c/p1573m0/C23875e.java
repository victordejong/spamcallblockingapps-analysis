package p193e.p1545k.p1546a.p1556c.p1573m0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
/* renamed from: e.k.a.c.m0.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/e.class */
public final class C23875e extends C23874d {
    public C23875e(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr, AbstractC23698i abstractC23698i2, Object obj, Object obj2, boolean z) {
        super(cls, c23884n, abstractC23698i, abstractC23698iArr, abstractC23698i2, obj, obj2, z);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23874d, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: K */
    public AbstractC23698i mo5946K(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr) {
        return new C23875e(cls, c23884n, abstractC23698i, abstractC23698iArr, this.f66027j, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23874d, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: L */
    public AbstractC23698i mo5945L(AbstractC23698i abstractC23698i) {
        return this.f66027j == abstractC23698i ? this : new C23875e(this.f65728a, this.f66052h, this.f66050f, this.f66051g, abstractC23698i, this.f65730c, this.f65731d, this.f65732e);
    }

    /* renamed from: Z */
    public C23875e mo5982U(Object obj) {
        return new C23875e(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66027j.mo5941Q(obj), this.f65730c, this.f65731d, this.f65732e);
    }

    /* renamed from: a0 */
    public C23875e mo5981V(Object obj) {
        return new C23875e(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66027j.mo5940R(obj), this.f65730c, this.f65731d, this.f65732e);
    }

    /* renamed from: b0 */
    public C23875e mo5980W() {
        return this.f65732e ? this : new C23875e(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66027j.mo5942P(), this.f65730c, this.f65731d, true);
    }

    /* renamed from: c0 */
    public C23875e mo5979X(Object obj) {
        return new C23875e(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66027j, this.f65730c, obj, this.f65732e);
    }

    /* renamed from: d0 */
    public C23875e mo5978Y(Object obj) {
        return new C23875e(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66027j, obj, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23874d, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[collection type; class ");
        C22128a.m8545z0(this.f65728a, m8728C, ", contains ");
        m8728C.append(this.f66027j);
        m8728C.append("]");
        return m8728C.toString();
    }
}
