package p193e.p1577m.p1578a.p1580b.p1583j.p1593y;

import android.content.Context;
import javax.inject.Provider;
/* renamed from: e.m.a.b.j.y.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/y/l.class */
public final class C24180l implements Object<C24178k> {

    /* renamed from: a */
    public final Provider<Context> f66927a;

    /* renamed from: b */
    public final Provider<C24176i> f66928b;

    public C24180l(Provider<Context> provider, Provider<C24176i> provider2) {
        this.f66927a = provider;
        this.f66928b = provider2;
    }

    public Object get() {
        return new C24178k((Context) this.f66927a.get(), (C24176i) this.f66928b.get());
    }
}
