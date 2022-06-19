package p193e.p194a.p1365y.p1366a.p1374h;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21629z;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
import p193e.p194a.p1365y.p1387e.C21733i;
/* renamed from: e.a.y.a.h.d */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/d.class */
public final class C21522d implements Provider<AbstractC21629z<C21733i>> {

    /* renamed from: a */
    public final AbstractC21666a f60072a;

    public C21522d(AbstractC21666a abstractC21666a) {
        this.f60072a = abstractC21666a;
    }

    public Object get() {
        AbstractC21629z<C21733i> mo9204k = this.f60072a.mo9204k();
        Objects.requireNonNull(mo9204k, "Cannot return null from a non-@Nullable component method");
        return mo9204k;
    }
}
