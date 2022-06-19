package p193e.p194a.p1365y.p1366a.p1377j;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21614m;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.j.f */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/j/f.class */
public final class C21557f implements Provider<AbstractC21614m> {

    /* renamed from: a */
    public final AbstractC21666a f60155a;

    public C21557f(AbstractC21666a abstractC21666a) {
        this.f60155a = abstractC21666a;
    }

    public Object get() {
        AbstractC21614m mo9201n = this.f60155a.mo9201n();
        Objects.requireNonNull(mo9201n, "Cannot return null from a non-@Nullable component method");
        return mo9201n;
    }
}
