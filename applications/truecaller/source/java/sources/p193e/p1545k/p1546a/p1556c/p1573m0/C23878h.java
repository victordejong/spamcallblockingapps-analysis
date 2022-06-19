package p193e.p1545k.p1546a.p1556c.p1573m0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
/* renamed from: e.k.a.c.m0.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/h.class */
public final class C23878h extends C23877g {
    public C23878h(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr, AbstractC23698i abstractC23698i2, AbstractC23698i abstractC23698i3, Object obj, Object obj2, boolean z) {
        super(cls, c23884n, abstractC23698i, abstractC23698iArr, abstractC23698i2, abstractC23698i3, obj, obj2, z);
    }

    /* renamed from: b0 */
    public static C23878h m5961b0(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr, AbstractC23698i abstractC23698i2, AbstractC23698i abstractC23698i3) {
        return new C23878h(cls, c23884n, abstractC23698i, abstractC23698iArr, abstractC23698i2, abstractC23698i3, null, null, false);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23877g, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: K */
    public AbstractC23698i mo5946K(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr) {
        return new C23878h(cls, c23884n, abstractC23698i, abstractC23698iArr, this.f66042j, this.f66043k, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23877g, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: L */
    public AbstractC23698i mo5945L(AbstractC23698i abstractC23698i) {
        return this.f66043k == abstractC23698i ? this : new C23878h(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j, abstractC23698i, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23877g
    /* renamed from: W */
    public C23877g mo5966W(AbstractC23698i abstractC23698i) {
        return abstractC23698i == this.f66042j ? this : new C23878h(this.f65728a, this.f66052h, this.f66050f, this.f66051g, abstractC23698i, this.f66043k, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23877g
    /* renamed from: X */
    public C23877g mo5965X(Object obj) {
        return new C23878h(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j.mo5940R(obj), this.f66043k, this.f65730c, this.f65731d, this.f65732e);
    }

    /* renamed from: c0 */
    public C23878h mo5968U(Object obj) {
        return new C23878h(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j, this.f66043k.mo5941Q(obj), this.f65730c, this.f65731d, this.f65732e);
    }

    /* renamed from: d0 */
    public C23878h mo5967V(Object obj) {
        return new C23878h(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j, this.f66043k.mo5940R(obj), this.f65730c, this.f65731d, this.f65732e);
    }

    /* renamed from: e0 */
    public C23878h mo5964Y() {
        return this.f65732e ? this : new C23878h(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j.mo5942P(), this.f66043k.mo5942P(), this.f65730c, this.f65731d, true);
    }

    /* renamed from: f0 */
    public C23878h mo5963Z(Object obj) {
        return new C23878h(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j, this.f66043k, this.f65730c, obj, this.f65732e);
    }

    /* renamed from: g0 */
    public C23878h mo5962a0(Object obj) {
        return new C23878h(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66042j, this.f66043k, obj, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23877g, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[map type; class ");
        C22128a.m8545z0(this.f65728a, m8728C, ", ");
        m8728C.append(this.f66042j);
        m8728C.append(" -> ");
        m8728C.append(this.f66043k);
        m8728C.append("]");
        return m8728C.toString();
    }
}
