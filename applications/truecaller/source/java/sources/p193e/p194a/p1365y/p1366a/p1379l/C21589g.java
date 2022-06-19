package p193e.p194a.p1365y.p1366a.p1379l;

import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import s1.w.f;
/* renamed from: e.a.y.a.l.g */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/l/g.class */
public final class C21589g implements Object<C21588f> {

    /* renamed from: a */
    public final Provider<f> f60244a;

    /* renamed from: b */
    public final Provider<f> f60245b;

    /* renamed from: c */
    public final Provider<AbstractC21631b> f60246c;

    /* renamed from: d */
    public final Provider<AbstractC21626w> f60247d;

    public C21589g(Provider<f> provider, Provider<f> provider2, Provider<AbstractC21631b> provider3, Provider<AbstractC21626w> provider4) {
        this.f60244a = provider;
        this.f60245b = provider2;
        this.f60246c = provider3;
        this.f60247d = provider4;
    }

    public Object get() {
        return new C21588f((f) this.f60244a.get(), (f) this.f60245b.get(), (AbstractC21631b) this.f60246c.get(), (AbstractC21626w) this.f60247d.get());
    }
}
