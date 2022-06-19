package p193e.p194a.p1365y.p1366a.p1374h;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.h.c */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/c.class */
public final class C21521c implements Provider<AbstractC21603f> {

    /* renamed from: a */
    public final AbstractC21666a f60071a;

    public C21521c(AbstractC21666a abstractC21666a) {
        this.f60071a = abstractC21666a;
    }

    public Object get() {
        AbstractC21603f mo9199p = this.f60071a.mo9199p();
        Objects.requireNonNull(mo9199p, "Cannot return null from a non-@Nullable component method");
        return mo9199p;
    }
}
