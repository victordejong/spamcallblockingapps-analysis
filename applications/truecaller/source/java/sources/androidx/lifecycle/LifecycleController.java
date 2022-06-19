package androidx.lifecycle;

import java.util.concurrent.CancellationException;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27041z;
import p1727n3.p1868v.C26994c0;
import p1727n3.p1868v.C27009k;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.z.c.l;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleController.class */
public final class LifecycleController {

    /* renamed from: a */
    public final AbstractC27041z f905a;

    /* renamed from: b */
    public final AbstractC27028u f906b;

    /* renamed from: c */
    public final AbstractC27028u.EnumC27030b f907c;

    /* renamed from: d */
    public final C27009k f908d;

    public LifecycleController(AbstractC27028u abstractC27028u, AbstractC27028u.EnumC27030b enumC27030b, C27009k c27009k, p1 p1Var) {
        l.e(abstractC27028u, "lifecycle");
        l.e(enumC27030b, "minState");
        l.e(c27009k, "dispatchQueue");
        l.e(p1Var, "parentJob");
        this.f906b = abstractC27028u;
        this.f907c = enumC27030b;
        this.f908d = c27009k;
        observer.1 r0 = new observer.1(this, p1Var);
        this.f905a = r0;
        if (((C26994c0) abstractC27028u).f75501c != AbstractC27028u.EnumC27030b.DESTROYED) {
            abstractC27028u.mo988a(r0);
            return;
        }
        d.T(p1Var, (CancellationException) null, 1, (Object) null);
        m42873a();
    }

    /* renamed from: a */
    public final void m42873a() {
        this.f906b.mo987b(this.f905a);
        C27009k c27009k = this.f908d;
        c27009k.f75538b = true;
        c27009k.m1003b();
    }
}
