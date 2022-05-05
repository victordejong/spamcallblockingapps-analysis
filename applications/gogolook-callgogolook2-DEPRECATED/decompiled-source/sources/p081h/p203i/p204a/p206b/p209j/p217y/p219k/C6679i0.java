package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import android.content.Context;
import javax.inject.Provider;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
/* renamed from: h.i.a.b.j.y.k.i0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/i0.class */
public final class C6679i0 implements AbstractC6610b<C6676h0> {

    /* renamed from: a */
    public final Provider<Context> f16556a;

    /* renamed from: b */
    public final Provider<String> f16557b;

    /* renamed from: c */
    public final Provider<Integer> f16558c;

    public C6679i0(Provider<Context> provider, Provider<String> provider2, Provider<Integer> provider3) {
        this.f16556a = provider;
        this.f16557b = provider2;
        this.f16558c = provider3;
    }

    /* renamed from: a */
    public static C6676h0 m22083a(Context context, String str, int i) {
        return new C6676h0(context, str, i);
    }

    /* renamed from: a */
    public static C6679i0 m22082a(Provider<Context> provider, Provider<String> provider2, Provider<Integer> provider3) {
        return new C6679i0(provider, provider2, provider3);
    }

    @Override // javax.inject.Provider
    public C6676h0 get() {
        return m22083a(this.f16556a.get(), this.f16557b.get(), this.f16558c.get().intValue());
    }
}
