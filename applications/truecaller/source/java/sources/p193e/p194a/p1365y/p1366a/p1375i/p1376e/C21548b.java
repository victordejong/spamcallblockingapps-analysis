package p193e.p194a.p1365y.p1366a.p1375i.p1376e;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.i.e.b */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/i/e/b.class */
public final class C21548b implements Provider<AbstractC21606g0> {

    /* renamed from: a */
    public final AbstractC21666a f60143a;

    public C21548b(AbstractC21666a abstractC21666a) {
        this.f60143a = abstractC21666a;
    }

    public Object get() {
        AbstractC21606g0 mo9206i = this.f60143a.mo9206i();
        Objects.requireNonNull(mo9206i, "Cannot return null from a non-@Nullable component method");
        return mo9206i;
    }
}
