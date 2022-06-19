package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1382c.AbstractC21653p;
import p193e.p194a.p1365y.p1382c.C21654q;
import s1.z.c.l;
import u3.e0;
/* renamed from: e.a.y.c.x.b.f */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/f.class */
public final class C21686f implements Object<AbstractC21653p> {

    /* renamed from: a */
    public final C21681a f60447a;

    /* renamed from: b */
    public final Provider<e0> f60448b;

    public C21686f(C21681a c21681a, Provider<e0> provider) {
        this.f60447a = c21681a;
        this.f60448b = provider;
    }

    public Object get() {
        C21681a c21681a = this.f60447a;
        e0 e0Var = (e0) this.f60448b.get();
        Objects.requireNonNull(c21681a);
        l.e(e0Var, "httpClient");
        return new C21654q(e0Var);
    }
}
