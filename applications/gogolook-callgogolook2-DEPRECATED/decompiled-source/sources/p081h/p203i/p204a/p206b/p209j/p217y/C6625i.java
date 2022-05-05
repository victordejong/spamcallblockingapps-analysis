package p081h.p203i.p204a.p206b.p209j.p217y;

import android.content.Context;
import javax.inject.Provider;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.C6612d;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6650s;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c;
/* renamed from: h.i.a.b.j.y.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/i.class */
public final class C6625i implements AbstractC6610b<AbstractC6650s> {

    /* renamed from: a */
    public final Provider<Context> f16446a;

    /* renamed from: b */
    public final Provider<AbstractC6661c> f16447b;

    /* renamed from: c */
    public final Provider<AbstractC6634g> f16448c;

    /* renamed from: d */
    public final Provider<AbstractC6550a> f16449d;

    public C6625i(Provider<Context> provider, Provider<AbstractC6661c> provider2, Provider<AbstractC6634g> provider3, Provider<AbstractC6550a> provider4) {
        this.f16446a = provider;
        this.f16447b = provider2;
        this.f16448c = provider3;
        this.f16449d = provider4;
    }

    /* renamed from: a */
    public static C6625i m22217a(Provider<Context> provider, Provider<AbstractC6661c> provider2, Provider<AbstractC6634g> provider3, Provider<AbstractC6550a> provider4) {
        return new C6625i(provider, provider2, provider3, provider4);
    }

    /* renamed from: a */
    public static AbstractC6650s m22218a(Context context, AbstractC6661c cVar, AbstractC6634g gVar, AbstractC6550a aVar) {
        AbstractC6650s a = AbstractC6624h.m22219a(context, cVar, gVar, aVar);
        C6612d.m22238a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // javax.inject.Provider
    public AbstractC6650s get() {
        return m22218a(this.f16446a.get(), this.f16447b.get(), this.f16448c.get(), this.f16449d.get());
    }
}
