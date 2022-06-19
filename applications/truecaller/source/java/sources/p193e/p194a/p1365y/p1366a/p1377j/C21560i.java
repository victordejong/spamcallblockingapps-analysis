package p193e.p194a.p1365y.p1366a.p1377j;

import e.m.e.k;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.j.i */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/j/i.class */
public final class C21560i implements Provider<k> {

    /* renamed from: a */
    public final AbstractC21666a f60158a;

    public C21560i(AbstractC21666a abstractC21666a) {
        this.f60158a = abstractC21666a;
    }

    public Object get() {
        k mo9194u = this.f60158a.mo9194u();
        Objects.requireNonNull(mo9194u, "Cannot return null from a non-@Nullable component method");
        return mo9194u;
    }
}
