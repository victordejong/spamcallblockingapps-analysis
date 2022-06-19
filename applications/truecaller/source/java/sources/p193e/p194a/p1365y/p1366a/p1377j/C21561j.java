package p193e.p194a.p1365y.p1366a.p1377j;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21624u;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.j.j */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/j/j.class */
public final class C21561j implements Provider<AbstractC21624u> {

    /* renamed from: a */
    public final AbstractC21666a f60159a;

    public C21561j(AbstractC21666a abstractC21666a) {
        this.f60159a = abstractC21666a;
    }

    public Object get() {
        AbstractC21624u mo9202m = this.f60159a.mo9202m();
        Objects.requireNonNull(mo9202m, "Cannot return null from a non-@Nullable component method");
        return mo9202m;
    }
}
