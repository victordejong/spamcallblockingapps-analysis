package p193e.p1545k.p1546a.p1556c.p1573m0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.p1555z.AbstractC23421a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
/* renamed from: e.k.a.c.m0.j */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/j.class */
public class C23880j extends C23882l {

    /* renamed from: j */
    public final AbstractC23698i f66046j;

    /* renamed from: k */
    public final AbstractC23698i f66047k;

    public C23880j(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr, AbstractC23698i abstractC23698i2, AbstractC23698i abstractC23698i3, Object obj, Object obj2, boolean z) {
        super(cls, c23884n, abstractC23698i, abstractC23698iArr, abstractC23698i2.f65729b, obj, obj2, z);
        this.f66046j = abstractC23698i2;
        this.f66047k = abstractC23698i3 == null ? this : abstractC23698i3;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23882l, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: K */
    public AbstractC23698i mo5946K(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr) {
        return new C23880j(cls, this.f66052h, abstractC23698i, abstractC23698iArr, this.f66046j, this.f66047k, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23882l, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: L */
    public AbstractC23698i mo5945L(AbstractC23698i abstractC23698i) {
        return this.f66046j == abstractC23698i ? this : new C23880j(this.f65728a, this.f66052h, this.f66050f, this.f66051g, abstractC23698i, this.f66047k, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23882l, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: M */
    public AbstractC23698i mo5944M(Object obj) {
        AbstractC23698i abstractC23698i = this.f66046j;
        return obj == abstractC23698i.f65731d ? this : new C23880j(this.f65728a, this.f66052h, this.f66050f, this.f66051g, abstractC23698i.mo5941Q(obj), this.f66047k, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23882l, p193e.p1545k.p1546a.p1556c.p1573m0.AbstractC23883m
    /* renamed from: T */
    public String mo5929T() {
        return this.f65728a.getName() + '<' + this.f66046j.mo5928e() + '>';
    }

    /* renamed from: Z */
    public C23880j mo5938V(Object obj) {
        AbstractC23698i abstractC23698i = this.f66046j;
        if (obj == abstractC23698i.f65730c) {
            return this;
        }
        return new C23880j(this.f65728a, this.f66052h, this.f66050f, this.f66051g, abstractC23698i.mo5940R(obj), this.f66047k, this.f65730c, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i, p193e.p1545k.p1546a.p1548b.p1555z.AbstractC23421a
    /* renamed from: a */
    public AbstractC23421a mo5953a() {
        return this.f66046j;
    }

    /* renamed from: a0 */
    public C23880j mo5937W() {
        return this.f65732e ? this : new C23880j(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66046j.mo5942P(), this.f66047k, this.f65730c, this.f65731d, true);
    }

    /* renamed from: b0 */
    public C23880j mo5936X(Object obj) {
        return obj == this.f65731d ? this : new C23880j(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66046j, this.f66047k, this.f65730c, obj, this.f65732e);
    }

    /* renamed from: c0 */
    public C23880j mo5935Y(Object obj) {
        return obj == this.f65730c ? this : new C23880j(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f66046j, this.f66047k, obj, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1555z.AbstractC23421a
    /* renamed from: d */
    public boolean mo5949d() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23882l, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != C23880j.class) {
            return false;
        }
        C23880j c23880j = (C23880j) obj;
        if (c23880j.f65728a == this.f65728a) {
            return this.f66046j.equals(c23880j.f66046j);
        }
        return false;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: k */
    public AbstractC23698i mo5948k() {
        return this.f66046j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23882l, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: l */
    public StringBuilder mo5934l(StringBuilder sb) {
        AbstractC23883m.m5930S(this.f65728a, sb, true);
        return sb;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23882l, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: m */
    public StringBuilder mo5933m(StringBuilder sb) {
        AbstractC23883m.m5930S(this.f65728a, sb, false);
        sb.append('<');
        StringBuilder mo5933m = this.f66046j.mo5933m(sb);
        mo5933m.append(">;");
        return mo5933m;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: p */
    public AbstractC23698i mo5947p() {
        return this.f66046j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23882l, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: r */
    public boolean mo5932r() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.C23882l, p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public String toString() {
        StringBuilder m8554x = C22128a.m8554x(40, "[reference type, class ");
        m8554x.append(mo5929T());
        m8554x.append('<');
        m8554x.append(this.f66046j);
        m8554x.append('>');
        m8554x.append(']');
        return m8554x.toString();
    }
}
