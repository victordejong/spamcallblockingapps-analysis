package p193e.p194a.p1365y.p1366a.p1374h;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21624u;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.h.j */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/j.class */
public final class C21528j implements Provider<AbstractC21624u> {

    /* renamed from: a */
    public final AbstractC21666a f60078a;

    public C21528j(AbstractC21666a abstractC21666a) {
        this.f60078a = abstractC21666a;
    }

    public Object get() {
        AbstractC21624u mo9202m = this.f60078a.mo9202m();
        Objects.requireNonNull(mo9202m, "Cannot return null from a non-@Nullable component method");
        return mo9202m;
    }
}
