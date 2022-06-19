package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23956x;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23880j;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
/* renamed from: e.k.a.c.l0.t.f0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/f0.class */
public abstract class AbstractC23817f0<T> extends AbstractC23851q0<T> implements AbstractC23766i {

    /* renamed from: c */
    public final AbstractC23698i f65956c;

    /* renamed from: d */
    public final AbstractC23462d f65957d;

    /* renamed from: e */
    public final AbstractC23712h f65958e;

    /* renamed from: f */
    public final AbstractC23890n<Object> f65959f;

    /* renamed from: g */
    public final AbstractC23929s f65960g;

    /* renamed from: h */
    public transient AbstractC23788l f65961h;

    /* renamed from: i */
    public final Object f65962i;

    /* renamed from: j */
    public final boolean f65963j;

    public AbstractC23817f0(AbstractC23817f0<?> abstractC23817f0, AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n<?> abstractC23890n, AbstractC23929s abstractC23929s, Object obj, boolean z) {
        super(abstractC23817f0);
        this.f65956c = abstractC23817f0.f65956c;
        this.f65961h = AbstractC23788l.C23790b.f65903b;
        this.f65957d = abstractC23462d;
        this.f65958e = abstractC23712h;
        this.f65959f = abstractC23890n;
        this.f65960g = abstractC23929s;
        this.f65962i = obj;
        this.f65963j = z;
    }

    public AbstractC23817f0(C23880j c23880j, AbstractC23712h abstractC23712h, AbstractC23890n abstractC23890n) {
        super(c23880j);
        this.f65956c = c23880j.f66046j;
        this.f65957d = null;
        this.f65958e = abstractC23712h;
        this.f65959f = abstractC23890n;
        this.f65960g = null;
        this.f65962i = null;
        this.f65963j = false;
        this.f65961h = AbstractC23788l.C23790b.f65903b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c9, code lost:
        if (r0 == p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23437f.EnumC23439b.DYNAMIC) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01eb, code lost:
        if (r6.f65963j != r14) goto L82;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01e1  */
    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.AbstractC23890n<?> mo5992b(p193e.p1545k.p1546a.p1556c.AbstractC23425a0 r7, p193e.p1545k.p1546a.p1556c.AbstractC23462d r8) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23817f0.mo5992b(e.k.a.c.a0, e.k.a.c.d):e.k.a.c.n");
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, T t) {
        AtomicReference atomicReference = (AtomicReference) t;
        if (!(atomicReference.get() != null)) {
            return true;
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            return this.f65963j;
        }
        if (this.f65962i == null) {
            return false;
        }
        AbstractC23890n<Object> abstractC23890n = this.f65959f;
        AbstractC23890n<Object> abstractC23890n2 = abstractC23890n;
        if (abstractC23890n == null) {
            try {
                abstractC23890n2 = m6035p(abstractC23425a0, obj.getClass());
            } catch (C23733k e) {
                throw new C23956x(e);
            }
        }
        Object obj2 = this.f65962i;
        return obj2 == AbstractC23331r.EnumC23332a.NON_EMPTY ? abstractC23890n2.mo5896d(abstractC23425a0, obj) : obj2.equals(obj);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: e */
    public boolean mo5895e() {
        return this.f65960g != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(T t, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Object obj = ((AtomicReference) t).get();
        if (obj == null) {
            if (this.f65960g != null) {
                return;
            }
            abstractC23425a0.m6880t(abstractC23372g);
            return;
        }
        AbstractC23890n<Object> abstractC23890n = this.f65959f;
        AbstractC23890n<Object> abstractC23890n2 = abstractC23890n;
        if (abstractC23890n == null) {
            abstractC23890n2 = m6035p(abstractC23425a0, obj.getClass());
        }
        AbstractC23712h abstractC23712h = this.f65958e;
        if (abstractC23712h != null) {
            abstractC23890n2.mo5893g(obj, abstractC23372g, abstractC23425a0, abstractC23712h);
        } else {
            abstractC23890n2.mo5894f(obj, abstractC23372g, abstractC23425a0);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(T t, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        Object obj = ((AtomicReference) t).get();
        if (obj == null) {
            if (this.f65960g != null) {
                return;
            }
            abstractC23425a0.m6880t(abstractC23372g);
            return;
        }
        AbstractC23890n<Object> abstractC23890n = this.f65959f;
        AbstractC23890n<Object> abstractC23890n2 = abstractC23890n;
        if (abstractC23890n == null) {
            abstractC23890n2 = m6035p(abstractC23425a0, obj.getClass());
        }
        abstractC23890n2.mo5893g(obj, abstractC23372g, abstractC23425a0, abstractC23712h);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: h */
    public AbstractC23890n<T> mo5892h(AbstractC23929s abstractC23929s) {
        AbstractC23890n<?> abstractC23890n = this.f65959f;
        AbstractC23890n<?> abstractC23890n2 = abstractC23890n;
        if (abstractC23890n != null) {
            AbstractC23890n<?> mo5892h = abstractC23890n.mo5892h(abstractC23929s);
            abstractC23890n2 = mo5892h;
            if (mo5892h == this.f65959f) {
                return this;
            }
        }
        AbstractC23929s abstractC23929s2 = this.f65960g;
        if (abstractC23929s2 != null) {
            abstractC23929s = new AbstractC23929s.C23930a(abstractC23929s, abstractC23929s2);
        }
        return (this.f65959f == abstractC23890n2 && abstractC23929s2 == abstractC23929s) ? this : mo6033r(this.f65957d, this.f65958e, abstractC23890n2, abstractC23929s);
    }

    /* renamed from: p */
    public final AbstractC23890n<Object> m6035p(AbstractC23425a0 abstractC23425a0, Class<?> cls) throws C23733k {
        AbstractC23890n<Object> mo6060c = this.f65961h.mo6060c(cls);
        AbstractC23890n<Object> abstractC23890n = mo6060c;
        if (mo6060c == null) {
            AbstractC23890n<Object> m6876y = this.f65956c.mo5987s() ? abstractC23425a0.m6876y(abstractC23425a0.m6881s(this.f65956c, cls), this.f65957d) : abstractC23425a0.m6875z(cls, this.f65957d);
            AbstractC23929s abstractC23929s = this.f65960g;
            abstractC23890n = m6876y;
            if (abstractC23929s != null) {
                abstractC23890n = m6876y.mo5892h(abstractC23929s);
            }
            this.f65961h = this.f65961h.mo6061b(cls, abstractC23890n);
        }
        return abstractC23890n;
    }

    /* renamed from: q */
    public abstract AbstractC23817f0<T> mo6034q(Object obj, boolean z);

    /* renamed from: r */
    public abstract AbstractC23817f0<T> mo6033r(AbstractC23462d abstractC23462d, AbstractC23712h abstractC23712h, AbstractC23890n<?> abstractC23890n, AbstractC23929s abstractC23929s);
}
