package p081h.p203i.p204a.p206b.p209j;

import javax.inject.Provider;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
import p081h.p203i.p204a.p206b.p209j.p217y.AbstractC6621e;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.C6644m;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.C6648q;
/* renamed from: h.i.a.b.j.t */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/t.class */
public final class C6589t implements AbstractC6610b<C6586r> {

    /* renamed from: a */
    public final Provider<AbstractC6550a> f16391a;

    /* renamed from: b */
    public final Provider<AbstractC6550a> f16392b;

    /* renamed from: c */
    public final Provider<AbstractC6621e> f16393c;

    /* renamed from: d */
    public final Provider<C6644m> f16394d;

    /* renamed from: e */
    public final Provider<C6648q> f16395e;

    public C6589t(Provider<AbstractC6550a> provider, Provider<AbstractC6550a> provider2, Provider<AbstractC6621e> provider3, Provider<C6644m> provider4, Provider<C6648q> provider5) {
        this.f16391a = provider;
        this.f16392b = provider2;
        this.f16393c = provider3;
        this.f16394d = provider4;
        this.f16395e = provider5;
    }

    /* renamed from: a */
    public static C6586r m22272a(AbstractC6550a aVar, AbstractC6550a aVar2, AbstractC6621e eVar, C6644m mVar, C6648q qVar) {
        return new C6586r(aVar, aVar2, eVar, mVar, qVar);
    }

    /* renamed from: a */
    public static C6589t m22271a(Provider<AbstractC6550a> provider, Provider<AbstractC6550a> provider2, Provider<AbstractC6621e> provider3, Provider<C6644m> provider4, Provider<C6648q> provider5) {
        return new C6589t(provider, provider2, provider3, provider4, provider5);
    }

    @Override // javax.inject.Provider
    public C6586r get() {
        return m22272a(this.f16391a.get(), this.f16392b.get(), this.f16393c.get(), this.f16394d.get(), this.f16395e.get());
    }
}
