package p081h.p203i.p204a.p206b.p209j.p217y.p218j;

import android.content.Context;
import java.util.concurrent.Executor;
import javax.inject.Provider;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6596e;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c;
import p081h.p203i.p204a.p206b.p209j.p220z.AbstractC6698b;
/* renamed from: h.i.a.b.j.y.j.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/n.class */
public final class C6645n implements AbstractC6610b<C6644m> {

    /* renamed from: a */
    public final Provider<Context> f16497a;

    /* renamed from: b */
    public final Provider<AbstractC6596e> f16498b;

    /* renamed from: c */
    public final Provider<AbstractC6661c> f16499c;

    /* renamed from: d */
    public final Provider<AbstractC6650s> f16500d;

    /* renamed from: e */
    public final Provider<Executor> f16501e;

    /* renamed from: f */
    public final Provider<AbstractC6698b> f16502f;

    /* renamed from: g */
    public final Provider<AbstractC6550a> f16503g;

    public C6645n(Provider<Context> provider, Provider<AbstractC6596e> provider2, Provider<AbstractC6661c> provider3, Provider<AbstractC6650s> provider4, Provider<Executor> provider5, Provider<AbstractC6698b> provider6, Provider<AbstractC6550a> provider7) {
        this.f16497a = provider;
        this.f16498b = provider2;
        this.f16499c = provider3;
        this.f16500d = provider4;
        this.f16501e = provider5;
        this.f16502f = provider6;
        this.f16503g = provider7;
    }

    /* renamed from: a */
    public static C6644m m22178a(Context context, AbstractC6596e eVar, AbstractC6661c cVar, AbstractC6650s sVar, Executor executor, AbstractC6698b bVar, AbstractC6550a aVar) {
        return new C6644m(context, eVar, cVar, sVar, executor, bVar, aVar);
    }

    /* renamed from: a */
    public static C6645n m22177a(Provider<Context> provider, Provider<AbstractC6596e> provider2, Provider<AbstractC6661c> provider3, Provider<AbstractC6650s> provider4, Provider<Executor> provider5, Provider<AbstractC6698b> provider6, Provider<AbstractC6550a> provider7) {
        return new C6645n(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    @Override // javax.inject.Provider
    public C6644m get() {
        return m22178a(this.f16497a.get(), this.f16498b.get(), this.f16499c.get(), this.f16500d.get(), this.f16501e.get(), this.f16502f.get(), this.f16503g.get());
    }
}
