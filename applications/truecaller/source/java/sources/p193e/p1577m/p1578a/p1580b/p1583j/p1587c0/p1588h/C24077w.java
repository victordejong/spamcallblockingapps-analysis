package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h;

import java.util.concurrent.Executor;
import javax.inject.Provider;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b;
/* renamed from: e.m.a.b.j.c0.h.w */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/h/w.class */
public final class C24077w implements Object<C24076v> {

    /* renamed from: a */
    public final Provider<Executor> f66754a;

    /* renamed from: b */
    public final Provider<AbstractC24080a0> f66755b;

    /* renamed from: c */
    public final Provider<AbstractC24078x> f66756c;

    /* renamed from: d */
    public final Provider<AbstractC24127b> f66757d;

    public C24077w(Provider<Executor> provider, Provider<AbstractC24080a0> provider2, Provider<AbstractC24078x> provider3, Provider<AbstractC24127b> provider4) {
        this.f66754a = provider;
        this.f66755b = provider2;
        this.f66756c = provider3;
        this.f66757d = provider4;
    }

    public Object get() {
        return new C24076v((Executor) this.f66754a.get(), (AbstractC24080a0) this.f66755b.get(), (AbstractC24078x) this.f66756c.get(), (AbstractC24127b) this.f66757d.get());
    }
}
