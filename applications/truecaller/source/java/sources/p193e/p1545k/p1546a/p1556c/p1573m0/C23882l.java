package p193e.p1545k.p1546a.p1556c.p1573m0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
/* renamed from: e.k.a.c.m0.l */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/m0/l.class */
public class C23882l extends AbstractC23883m {
    public C23882l(Class<?> cls) {
        this(cls, C23884n.f66055g, null, null, null, null, false);
    }

    public C23882l(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr, int i, Object obj, Object obj2, boolean z) {
        super(cls, c23884n, abstractC23698i, abstractC23698iArr, i, obj, obj2, z);
    }

    public C23882l(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr, Object obj, Object obj2, boolean z) {
        super(cls, c23884n, abstractC23698i, abstractC23698iArr, 0, obj, obj2, z);
    }

    /* renamed from: U */
    public static C23882l m5939U(Class<?> cls) {
        return new C23882l(cls, null, null, null, null, null, false);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: K */
    public AbstractC23698i mo5946K(Class<?> cls, C23884n c23884n, AbstractC23698i abstractC23698i, AbstractC23698i[] abstractC23698iArr) {
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: L */
    public AbstractC23698i mo5945L(AbstractC23698i abstractC23698i) {
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContentType()");
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: M */
    public AbstractC23698i mo5944M(Object obj) {
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContenTypeHandler()");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1573m0.AbstractC23883m
    /* renamed from: T */
    public String mo5929T() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f65728a.getName());
        int length = this.f66052h.f66057b.length;
        if (length > 0) {
            sb.append('<');
            for (int i = 0; i < length; i++) {
                AbstractC23698i mo5927f = mo5927f(i);
                if (i > 0) {
                    sb.append(',');
                }
                sb.append(mo5927f.mo5928e());
            }
            sb.append('>');
        }
        return sb.toString();
    }

    /* renamed from: V */
    public C23882l mo5943N(Object obj) {
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContenValueHandler()");
    }

    /* renamed from: W */
    public C23882l mo5942P() {
        return this.f65732e ? this : new C23882l(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f65730c, this.f65731d, true);
    }

    /* renamed from: X */
    public C23882l mo5941Q(Object obj) {
        return this.f65731d == obj ? this : new C23882l(this.f65728a, this.f66052h, this.f66050f, this.f66051g, this.f65730c, obj, this.f65732e);
    }

    /* renamed from: Y */
    public C23882l mo5940R(Object obj) {
        return obj == this.f65730c ? this : new C23882l(this.f65728a, this.f66052h, this.f66050f, this.f66051g, obj, this.f65731d, this.f65732e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        C23882l c23882l = (C23882l) obj;
        if (c23882l.f65728a == this.f65728a) {
            return this.f66052h.equals(c23882l.f66052h);
        }
        return false;
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
        int length = this.f66052h.f66057b.length;
        StringBuilder sb2 = sb;
        if (length > 0) {
            sb.append('<');
            for (int i = 0; i < length; i++) {
                sb = mo5927f(i).mo5933m(sb);
            }
            sb.append('>');
            sb2 = sb;
        }
        sb2.append(';');
        return sb2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: r */
    public boolean mo5932r() {
        return false;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    public String toString() {
        StringBuilder m8554x = C22128a.m8554x(40, "[simple type, class ");
        m8554x.append(mo5929T());
        m8554x.append(']');
        return m8554x.toString();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23698i
    /* renamed from: z */
    public boolean mo5931z() {
        return false;
    }
}
