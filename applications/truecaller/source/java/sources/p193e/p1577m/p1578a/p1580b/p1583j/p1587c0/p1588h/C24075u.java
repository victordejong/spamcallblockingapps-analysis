package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h;

import android.content.Context;
import java.util.concurrent.Executor;
import javax.inject.Provider;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24124z;
import p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24171e;
/* renamed from: e.m.a.b.j.c0.h.u */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/h/u.class */
public final class C24075u implements Object<C24074t> {

    /* renamed from: a */
    public final Provider<Context> f66741a;

    /* renamed from: b */
    public final Provider<AbstractC24171e> f66742b;

    /* renamed from: c */
    public final Provider<AbstractC24080a0> f66743c;

    /* renamed from: d */
    public final Provider<AbstractC24078x> f66744d;

    /* renamed from: e */
    public final Provider<Executor> f66745e;

    /* renamed from: f */
    public final Provider<AbstractC24127b> f66746f;

    /* renamed from: g */
    public final Provider<AbstractC24130a> f66747g;

    /* renamed from: h */
    public final Provider<AbstractC24130a> f66748h;

    /* renamed from: i */
    public final Provider<AbstractC24124z> f66749i;

    public C24075u(Provider<Context> provider, Provider<AbstractC24171e> provider2, Provider<AbstractC24080a0> provider3, Provider<AbstractC24078x> provider4, Provider<Executor> provider5, Provider<AbstractC24127b> provider6, Provider<AbstractC24130a> provider7, Provider<AbstractC24130a> provider8, Provider<AbstractC24124z> provider9) {
        this.f66741a = provider;
        this.f66742b = provider2;
        this.f66743c = provider3;
        this.f66744d = provider4;
        this.f66745e = provider5;
        this.f66746f = provider6;
        this.f66747g = provider7;
        this.f66748h = provider8;
        this.f66749i = provider9;
    }

    public Object get() {
        return new C24074t((Context) this.f66741a.get(), (AbstractC24171e) this.f66742b.get(), (AbstractC24080a0) this.f66743c.get(), (AbstractC24078x) this.f66744d.get(), (Executor) this.f66745e.get(), (AbstractC24127b) this.f66746f.get(), (AbstractC24130a) this.f66747g.get(), (AbstractC24130a) this.f66748h.get(), (AbstractC24124z) this.f66749i.get());
    }
}
