package p193e.p1577m.p1578a.p1580b.p1583j;

import javax.inject.Provider;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.AbstractC24047e;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24074t;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24076v;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
/* renamed from: e.m.a.b.j.x */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/x.class */
public final class C24165x implements Object<C24163v> {

    /* renamed from: a */
    public final Provider<AbstractC24130a> f66898a;

    /* renamed from: b */
    public final Provider<AbstractC24130a> f66899b;

    /* renamed from: c */
    public final Provider<AbstractC24047e> f66900c;

    /* renamed from: d */
    public final Provider<C24074t> f66901d;

    /* renamed from: e */
    public final Provider<C24076v> f66902e;

    public C24165x(Provider<AbstractC24130a> provider, Provider<AbstractC24130a> provider2, Provider<AbstractC24047e> provider3, Provider<C24074t> provider4, Provider<C24076v> provider5) {
        this.f66898a = provider;
        this.f66899b = provider2;
        this.f66900c = provider3;
        this.f66901d = provider4;
        this.f66902e = provider5;
    }

    public Object get() {
        return new C24163v((AbstractC24130a) this.f66898a.get(), (AbstractC24130a) this.f66899b.get(), (AbstractC24047e) this.f66900c.get(), (C24074t) this.f66901d.get(), (C24076v) this.f66902e.get());
    }
}
