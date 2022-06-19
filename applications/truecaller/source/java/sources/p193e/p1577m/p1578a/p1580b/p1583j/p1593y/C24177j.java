package p193e.p1577m.p1578a.p1580b.p1583j.p1593y;

import android.content.Context;
import javax.inject.Provider;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
/* renamed from: e.m.a.b.j.y.j */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/y/j.class */
public final class C24177j implements Object<C24176i> {

    /* renamed from: a */
    public final Provider<Context> f66919a;

    /* renamed from: b */
    public final Provider<AbstractC24130a> f66920b;

    /* renamed from: c */
    public final Provider<AbstractC24130a> f66921c;

    public C24177j(Provider<Context> provider, Provider<AbstractC24130a> provider2, Provider<AbstractC24130a> provider3) {
        this.f66919a = provider;
        this.f66920b = provider2;
        this.f66921c = provider3;
    }

    public Object get() {
        return new C24176i((Context) this.f66919a.get(), (AbstractC24130a) this.f66920b.get(), (AbstractC24130a) this.f66921c.get());
    }
}
