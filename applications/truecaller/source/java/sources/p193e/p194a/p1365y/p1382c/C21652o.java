package p193e.p194a.p1365y.p1382c;

import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1381b.AbstractC21614m;
import s1.w.f;
/* renamed from: e.a.y.c.o */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/o.class */
public final class C21652o implements Object<C21645l> {

    /* renamed from: a */
    public final Provider<f> f60356a;

    /* renamed from: b */
    public final Provider<AbstractC21653p> f60357b;

    /* renamed from: c */
    public final Provider<AbstractC21603f> f60358c;

    /* renamed from: d */
    public final Provider<AbstractC21614m> f60359d;

    public C21652o(Provider<f> provider, Provider<AbstractC21653p> provider2, Provider<AbstractC21603f> provider3, Provider<AbstractC21614m> provider4) {
        this.f60356a = provider;
        this.f60357b = provider2;
        this.f60358c = provider3;
        this.f60359d = provider4;
    }

    public Object get() {
        return new C21645l((f) this.f60356a.get(), (AbstractC21653p) this.f60357b.get(), (AbstractC21603f) this.f60358c.get(), (AbstractC21614m) this.f60359d.get());
    }
}
