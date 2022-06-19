package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0;

import android.content.Context;
import javax.inject.Provider;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24078x;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24069r;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
/* renamed from: e.m.a.b.j.c0.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/g.class */
public final class C24049g implements Object<AbstractC24078x> {

    /* renamed from: a */
    public final Provider<Context> f66683a;

    /* renamed from: b */
    public final Provider<AbstractC24080a0> f66684b;

    /* renamed from: c */
    public final Provider<AbstractC24070s> f66685c;

    /* renamed from: d */
    public final Provider<AbstractC24130a> f66686d;

    public C24049g(Provider<Context> provider, Provider<AbstractC24080a0> provider2, Provider<AbstractC24070s> provider3, Provider<AbstractC24130a> provider4) {
        this.f66683a = provider;
        this.f66684b = provider2;
        this.f66685c = provider3;
        this.f66686d = provider4;
    }

    public Object get() {
        Context context = (Context) this.f66683a.get();
        AbstractC24080a0 abstractC24080a0 = (AbstractC24080a0) this.f66684b.get();
        AbstractC24070s abstractC24070s = (AbstractC24070s) this.f66685c.get();
        AbstractC24130a abstractC24130a = (AbstractC24130a) this.f66686d.get();
        return new C24069r(context, abstractC24080a0, abstractC24070s);
    }
}
