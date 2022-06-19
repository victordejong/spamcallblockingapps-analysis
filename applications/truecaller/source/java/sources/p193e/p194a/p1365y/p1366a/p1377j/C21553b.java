package p193e.p194a.p1365y.p1366a.p1377j;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
/* renamed from: e.a.y.a.j.b */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/j/b.class */
public final class C21553b implements Provider<AbstractC8541a> {

    /* renamed from: a */
    public final AbstractC21666a f60151a;

    public C21553b(AbstractC21666a abstractC21666a) {
        this.f60151a = abstractC21666a;
    }

    public Object get() {
        AbstractC8541a mo9211d = this.f60151a.mo9211d();
        Objects.requireNonNull(mo9211d, "Cannot return null from a non-@Nullable component method");
        return mo9211d;
    }
}
