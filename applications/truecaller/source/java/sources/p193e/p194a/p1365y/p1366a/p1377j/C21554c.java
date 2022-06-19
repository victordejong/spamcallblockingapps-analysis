package p193e.p194a.p1365y.p1366a.p1377j;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.j.c */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/j/c.class */
public final class C21554c implements Provider<AbstractC21603f> {

    /* renamed from: a */
    public final AbstractC21666a f60152a;

    public C21554c(AbstractC21666a abstractC21666a) {
        this.f60152a = abstractC21666a;
    }

    public Object get() {
        AbstractC21603f mo9199p = this.f60152a.mo9199p();
        Objects.requireNonNull(mo9199p, "Cannot return null from a non-@Nullable component method");
        return mo9199p;
    }
}
