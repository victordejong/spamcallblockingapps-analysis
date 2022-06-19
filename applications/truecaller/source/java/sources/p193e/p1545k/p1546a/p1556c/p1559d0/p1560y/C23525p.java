package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.util.Collection;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
/* renamed from: e.k.a.c.d0.y.p */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/p.class */
public final class C23525p extends AbstractC23488u.AbstractC23489a {

    /* renamed from: p */
    public final String f65277p;

    /* renamed from: q */
    public final boolean f65278q;

    /* renamed from: r */
    public final AbstractC23488u f65279r;

    public C23525p(AbstractC23488u abstractC23488u, String str, AbstractC23488u abstractC23488u2, boolean z) {
        super(abstractC23488u);
        this.f65277p = str;
        this.f65279r = abstractC23488u2;
        this.f65278q = z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u.AbstractC23489a, p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: A */
    public Object mo6686A(Object obj, Object obj2) throws IOException {
        Object[] objArr;
        if (obj2 != null) {
            if (!this.f65278q) {
                this.f65279r.mo6680z(obj2, obj);
            } else if (obj2 instanceof Object[]) {
                for (Object obj3 : (Object[]) obj2) {
                    if (obj3 != null) {
                        this.f65279r.mo6680z(obj3, obj);
                    }
                }
            } else if (obj2 instanceof Collection) {
                for (Object obj4 : (Collection) obj2) {
                    if (obj4 != null) {
                        this.f65279r.mo6680z(obj4, obj);
                    }
                }
            } else if (!(obj2 instanceof Map)) {
                StringBuilder m8728C = C22128a.m8728C("Unsupported container type (");
                m8728C.append(obj2.getClass().getName());
                m8728C.append(") when resolving reference '");
                throw new IllegalStateException(C22128a.m8618h(m8728C, this.f65277p, "'"));
            } else {
                for (Object obj5 : ((Map) obj2).values()) {
                    if (obj5 != null) {
                        this.f65279r.mo6680z(obj5, obj);
                    }
                }
            }
        }
        return this.f65182o.mo6686A(obj, obj2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u.AbstractC23489a
    /* renamed from: I */
    public AbstractC23488u mo6694I(AbstractC23488u abstractC23488u) {
        throw new IllegalStateException("Should never try to reset delegate");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: i */
    public void mo6682i(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        mo6686A(obj, this.f65182o.m6762h(abstractC23376j, abstractC23632g));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: j */
    public Object mo6681j(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        return mo6686A(obj, m6762h(abstractC23376j, abstractC23632g));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u.AbstractC23489a, p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: l */
    public void mo6688l(C23624f c23624f) {
        this.f65182o.mo6688l(c23624f);
        this.f65279r.mo6688l(c23624f);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u.AbstractC23489a, p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: z */
    public final void mo6680z(Object obj, Object obj2) throws IOException {
        mo6686A(obj, obj2);
    }
}
