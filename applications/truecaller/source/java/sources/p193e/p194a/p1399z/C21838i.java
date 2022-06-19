package p193e.p194a.p1399z;

import javax.inject.Provider;
import p193e.p194a.p1399z.p1400a.p1402b.AbstractC21826b;
import p193e.p194a.p1399z.p1400a.p1402b.C21825a;
import s1.z.c.l;
/* renamed from: e.a.z.i */
/* loaded from: classes11-dex2jar.jar:e/a/z/i.class */
public final class C21838i implements Object<AbstractC21826b> {

    /* renamed from: a */
    public final Provider<AbstractC21834f> f60708a;

    public C21838i(Provider<AbstractC21834f> provider) {
        this.f60708a = provider;
    }

    public Object get() {
        AbstractC21834f abstractC21834f = (AbstractC21834f) this.f60708a.get();
        l.e(abstractC21834f, "personalSafety");
        return new C21825a(abstractC21834f);
    }
}
