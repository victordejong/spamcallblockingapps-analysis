package p081h.p203i.p204a.p206b.p209j.p212u;

import android.content.Context;
import javax.inject.Provider;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
/* renamed from: h.i.a.b.j.u.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/u/l.class */
public final class C6606l implements AbstractC6610b<C6604k> {

    /* renamed from: a */
    public final Provider<Context> f16421a;

    /* renamed from: b */
    public final Provider<C6602i> f16422b;

    public C6606l(Provider<Context> provider, Provider<C6602i> provider2) {
        this.f16421a = provider;
        this.f16422b = provider2;
    }

    /* renamed from: a */
    public static C6604k m22247a(Context context, Object obj) {
        return new C6604k(context, (C6602i) obj);
    }

    /* renamed from: a */
    public static C6606l m22246a(Provider<Context> provider, Provider<C6602i> provider2) {
        return new C6606l(provider, provider2);
    }

    @Override // javax.inject.Provider
    public C6604k get() {
        return m22247a(this.f16421a.get(), this.f16422b.get());
    }
}
