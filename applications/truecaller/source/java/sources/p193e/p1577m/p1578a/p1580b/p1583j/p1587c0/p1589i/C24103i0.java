package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1594z.AbstractC24182a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1594z.p1595b.C24183a;
/* renamed from: e.m.a.b.j.c0.i.i0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/i0.class */
public final class C24103i0 implements Object<C24097h0> {

    /* renamed from: a */
    public final Provider<AbstractC24130a> f66784a;

    /* renamed from: b */
    public final Provider<AbstractC24130a> f66785b;

    /* renamed from: c */
    public final Provider<AbstractC24082b0> f66786c;

    /* renamed from: d */
    public final Provider<C24105j0> f66787d;

    /* renamed from: e */
    public final Provider<String> f66788e;

    public C24103i0(Provider<AbstractC24130a> provider, Provider<AbstractC24130a> provider2, Provider<AbstractC24082b0> provider3, Provider<C24105j0> provider4, Provider<String> provider5) {
        this.f66784a = provider;
        this.f66785b = provider2;
        this.f66786c = provider3;
        this.f66787d = provider4;
        this.f66788e = provider5;
    }

    public Object get() {
        C24183a c24183a;
        AbstractC24130a abstractC24130a = (AbstractC24130a) this.f66784a.get();
        AbstractC24130a abstractC24130a2 = (AbstractC24130a) this.f66785b.get();
        Object obj = this.f66786c.get();
        Object obj2 = this.f66787d.get();
        AbstractC24182a abstractC24182a = this.f66788e;
        Object obj3 = C24183a.f66929c;
        if (abstractC24182a instanceof AbstractC24182a) {
            c24183a = abstractC24182a;
        } else {
            Objects.requireNonNull(abstractC24182a);
            c24183a = new C24183a(abstractC24182a);
        }
        return new C24097h0(abstractC24130a, abstractC24130a2, (AbstractC24082b0) obj, (C24105j0) obj2, c24183a);
    }
}
