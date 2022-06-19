package p193e.p1545k.p1546a.p1556c.p1573m0;

import java.lang.reflect.Array;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
/* renamed from: e.k.a.c.m0.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/a.class */
public final class C23871a extends AbstractC23883m {

    /* renamed from: j */
    public final AbstractC23698i f66019j;

    /* renamed from: k */
    public final Object f66020k;

    public C23871a(AbstractC23698i abstractC23698i, C23884n c23884n, Object obj, Object obj2, Object obj3, boolean z) {
        super(obj.getClass(), c23884n, null, null, abstractC23698i.f65729b, obj2, obj3, z);
        this.f66019j = abstractC23698i;
        this.f66020k = obj;
    }

    /* renamed from: U */
    public static C23871a m5988U(AbstractC23698i abstractC23698i, C23884n c23884n) {
        return new C23871a(abstractC23698i, c23884n, Array.newInstance(abstractC23698i.f65728a, 0), null, null, false);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: K */
    public AbstractC23698i mo5946K(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr) {
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: L */
    public AbstractC23698i mo5945L(AbstractC23698i abstractC23698i) {
        return new C23871a(abstractC23698i, this.f66052h, Array.newInstance(abstractC23698i.f65728a, 0), this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: M */
    public AbstractC23698i mo5944M(Object obj) {
        AbstractC23698i abstractC23698i = this.f66019j;
        return obj == abstractC23698i.f65731d ? this : new C23871a(abstractC23698i.mo5941Q(obj), this.f66052h, this.f66020k, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: N */
    public AbstractC23698i mo5943N(Object obj) {
        AbstractC23698i abstractC23698i = this.f66019j;
        return obj == abstractC23698i.f65730c ? this : new C23871a(abstractC23698i.mo5940R(obj), this.f66052h, this.f66020k, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: P */
    public AbstractC23698i mo5942P() {
        return this.f65732e ? this : new C23871a(this.f66019j.mo5942P(), this.f66052h, this.f66020k, this.f65730c, this.f65731d, true);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: Q */
    public AbstractC23698i mo5941Q(Object obj) {
        return obj == this.f65731d ? this : new C23871a(this.f66019j, this.f66052h, this.f66020k, this.f65730c, obj, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: R */
    public AbstractC23698i mo5940R(Object obj) {
        return obj == this.f65730c ? this : new C23871a(this.f66019j, this.f66052h, this.f66020k, obj, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != C23871a.class) {
            return false;
        }
        return this.f66019j.equals(((C23871a) obj).f66019j);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: k */
    public AbstractC23698i mo5948k() {
        return this.f66019j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: l */
    public StringBuilder mo5934l(StringBuilder sb) {
        sb.append('[');
        return this.f66019j.mo5934l(sb);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: m */
    public StringBuilder mo5933m(StringBuilder sb) {
        sb.append('[');
        return this.f66019j.mo5933m(sb);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: s */
    public boolean mo5987s() {
        return this.f66019j.mo5987s();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: t */
    public boolean mo5969t() {
        return super.mo5969t() || this.f66019j.mo5969t();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[array type, component type: ");
        m8728C.append(this.f66019j);
        m8728C.append("]");
        return m8728C.toString();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: v */
    public boolean mo5986v() {
        return false;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: w */
    public boolean mo5985w() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: y */
    public boolean mo5984y() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: z */
    public boolean mo5931z() {
        return true;
    }
}
