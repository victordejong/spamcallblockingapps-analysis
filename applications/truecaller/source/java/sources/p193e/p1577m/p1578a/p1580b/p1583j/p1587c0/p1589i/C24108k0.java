package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import android.content.Context;
import javax.inject.Provider;
/* renamed from: e.m.a.b.j.c0.i.k0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/k0.class */
public final class C24108k0 implements Object<C24105j0> {

    /* renamed from: a */
    public final Provider<Context> f66801a;

    /* renamed from: b */
    public final Provider<String> f66802b;

    /* renamed from: c */
    public final Provider<Integer> f66803c;

    public C24108k0(Provider<Context> provider, Provider<String> provider2, Provider<Integer> provider3) {
        this.f66801a = provider;
        this.f66802b = provider2;
        this.f66803c = provider3;
    }

    public Object get() {
        return new C24105j0((Context) this.f66801a.get(), (String) this.f66802b.get(), ((Integer) this.f66803c.get()).intValue());
    }
}
