package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1381b.AbstractC21629z;
import p193e.p194a.p1365y.p1381b.C21628y;
import p193e.p194a.p1365y.p1387e.C21733i;
import s1.z.c.l;
/* renamed from: e.a.y.c.x.b.n */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/n.class */
public final class C21694n implements Object<AbstractC21629z<C21733i>> {

    /* renamed from: a */
    public final C21681a f60460a;

    /* renamed from: b */
    public final Provider<AbstractC21626w> f60461b;

    public C21694n(C21681a c21681a, Provider<AbstractC21626w> provider) {
        this.f60460a = c21681a;
        this.f60461b = provider;
    }

    public Object get() {
        C21681a c21681a = this.f60460a;
        AbstractC21626w abstractC21626w = (AbstractC21626w) this.f60461b.get();
        Objects.requireNonNull(c21681a);
        l.e(abstractC21626w, "preferenceUtil");
        return new C21628y(abstractC21626w);
    }
}
