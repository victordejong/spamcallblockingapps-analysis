package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.lang.reflect.Constructor;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23650e;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.y.j */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/j.class */
public final class C23518j extends AbstractC23488u.AbstractC23489a {

    /* renamed from: p */
    public final transient Constructor<?> f65261p;

    /* renamed from: q */
    public C23650e f65262q;

    public C23518j(AbstractC23488u abstractC23488u, C23650e c23650e) {
        super(abstractC23488u);
        this.f65262q = c23650e;
        Constructor<?> constructor = c23650e == null ? null : c23650e.f65588d;
        this.f65261p = constructor;
        if (constructor != null) {
            return;
        }
        throw new IllegalArgumentException("Missing constructor (broken JDK (de)serialization?)");
    }

    public C23518j(AbstractC23488u abstractC23488u, Constructor<?> constructor) {
        super(abstractC23488u);
        this.f65261p = constructor;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u.AbstractC23489a
    /* renamed from: I */
    public AbstractC23488u mo6694I(AbstractC23488u abstractC23488u) {
        return abstractC23488u == this.f65182o ? this : new C23518j(abstractC23488u, this.f65261p);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: i */
    public void mo6682i(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        Object obj2;
        if (abstractC23376j.mo7142l() == EnumC23381m.VALUE_NULL) {
            obj2 = this.f65175g.mo6233c(abstractC23632g);
        } else {
            AbstractC23709e abstractC23709e = this.f65176h;
            if (abstractC23709e != null) {
                obj2 = this.f65175g.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
            } else {
                try {
                    Object newInstance = this.f65261p.newInstance(obj);
                    this.f65175g.mo6231e(abstractC23376j, abstractC23632g, newInstance);
                    obj2 = newInstance;
                } catch (Exception e) {
                    C23914g.m5769L(e, String.format("Failed to instantiate class %s, problem: %s", this.f65261p.getDeclaringClass().getName(), e.getMessage()));
                    throw null;
                }
            }
        }
        this.f65182o.mo6680z(obj, obj2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: j */
    public Object mo6681j(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        return this.f65182o.mo6686A(obj, m6762h(abstractC23376j, abstractC23632g));
    }

    public Object readResolve() {
        return new C23518j(this, this.f65262q);
    }

    public Object writeReplace() {
        return this.f65262q == null ? new C23518j(this, new C23650e(null, this.f65261p, null, null)) : this;
    }
}
