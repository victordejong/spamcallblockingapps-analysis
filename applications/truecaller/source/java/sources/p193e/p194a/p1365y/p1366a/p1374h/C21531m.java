package p193e.p194a.p1365y.p1366a.p1374h;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.h.m */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/m.class */
public final class C21531m implements Provider<AbstractC21606g0> {

    /* renamed from: a */
    public final AbstractC21666a f60081a;

    public C21531m(AbstractC21666a abstractC21666a) {
        this.f60081a = abstractC21666a;
    }

    public Object get() {
        AbstractC21606g0 mo9206i = this.f60081a.mo9206i();
        Objects.requireNonNull(mo9206i, "Cannot return null from a non-@Nullable component method");
        return mo9206i;
    }
}
