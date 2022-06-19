package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1391i.C21751a;
import s1.z.c.l;
/* renamed from: e.a.y.c.x.b.g */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/g.class */
public final class C21687g implements Object<C21751a> {

    /* renamed from: a */
    public final C21681a f60449a;

    /* renamed from: b */
    public final Provider<AbstractC21626w> f60450b;

    public C21687g(C21681a c21681a, Provider<AbstractC21626w> provider) {
        this.f60449a = c21681a;
        this.f60450b = provider;
    }

    public Object get() {
        C21681a c21681a = this.f60449a;
        AbstractC21626w abstractC21626w = (AbstractC21626w) this.f60450b.get();
        Objects.requireNonNull(c21681a);
        l.e(abstractC21626w, "preferenceUtil");
        return new C21751a(abstractC21626w);
    }
}
