package p193e.p194a.p1365y.p1366a.p1377j;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1382c.AbstractC21644k;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.j.g */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/j/g.class */
public final class C21558g implements Provider<AbstractC21644k> {

    /* renamed from: a */
    public final AbstractC21666a f60156a;

    public C21558g(AbstractC21666a abstractC21666a) {
        this.f60156a = abstractC21666a;
    }

    public Object get() {
        AbstractC21644k mo9205j = this.f60156a.mo9205j();
        Objects.requireNonNull(mo9205j, "Cannot return null from a non-@Nullable component method");
        return mo9205j;
    }
}
