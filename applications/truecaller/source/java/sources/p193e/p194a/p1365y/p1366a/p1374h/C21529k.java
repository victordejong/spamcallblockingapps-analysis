package p193e.p194a.p1365y.p1366a.p1374h;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.h.k */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/k.class */
public final class C21529k implements Provider<AbstractC19219a0> {

    /* renamed from: a */
    public final AbstractC21666a f60079a;

    public C21529k(AbstractC21666a abstractC21666a) {
        this.f60079a = abstractC21666a;
    }

    public Object get() {
        AbstractC19219a0 mo9212c = this.f60079a.mo9212c();
        Objects.requireNonNull(mo9212c, "Cannot return null from a non-@Nullable component method");
        return mo9212c;
    }
}
