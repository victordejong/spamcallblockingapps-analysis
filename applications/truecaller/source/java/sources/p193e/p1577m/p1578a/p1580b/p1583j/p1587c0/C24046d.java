package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0;

import java.util.concurrent.Executor;
import javax.inject.Provider;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24078x;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24171e;
/* renamed from: e.m.a.b.j.c0.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/d.class */
public final class C24046d implements Object<C24045c> {

    /* renamed from: a */
    public final Provider<Executor> f66677a;

    /* renamed from: b */
    public final Provider<AbstractC24171e> f66678b;

    /* renamed from: c */
    public final Provider<AbstractC24078x> f66679c;

    /* renamed from: d */
    public final Provider<AbstractC24080a0> f66680d;

    /* renamed from: e */
    public final Provider<AbstractC24127b> f66681e;

    public C24046d(Provider<Executor> provider, Provider<AbstractC24171e> provider2, Provider<AbstractC24078x> provider3, Provider<AbstractC24080a0> provider4, Provider<AbstractC24127b> provider5) {
        this.f66677a = provider;
        this.f66678b = provider2;
        this.f66679c = provider3;
        this.f66680d = provider4;
        this.f66681e = provider5;
    }

    public Object get() {
        return new C24045c((Executor) this.f66677a.get(), (AbstractC24171e) this.f66678b.get(), (AbstractC24078x) this.f66679c.get(), (AbstractC24080a0) this.f66680d.get(), (AbstractC24127b) this.f66681e.get());
    }
}
