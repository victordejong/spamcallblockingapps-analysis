package p193e.p194a.p1011l.p1025p2.p1027e2;

import java.util.Set;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1011l.p1025p2.AbstractC17210z0;
import p193e.p194a.p1011l.p1025p2.C17207y0;
import s1.z.c.l;
/* renamed from: e.a.l.p2.e2.d */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/e2/d.class */
public final class C17080d implements AbstractC17210z0 {

    /* renamed from: a */
    public final a<Set<AbstractC17210z0>> f47948a;

    @Inject
    public C17080d(a<Set<AbstractC17210z0>> aVar) {
        l.e(aVar, "observers");
        this.f47948a = aVar;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17210z0
    /* renamed from: a */
    public void mo16370a(C17207y0 c17207y0) {
        l.e(c17207y0, "update");
        Object obj = this.f47948a.get();
        l.d(obj, "observers.get()");
        for (AbstractC17210z0 abstractC17210z0 : (Iterable) obj) {
            abstractC17210z0.mo16370a(c17207y0);
        }
    }
}
