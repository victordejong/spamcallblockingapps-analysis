package p193e.p194a.p1365y.p1366a.p1377j;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.j.k */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/j/k.class */
public final class C21562k implements Provider<AbstractC19219a0> {

    /* renamed from: a */
    public final AbstractC21666a f60160a;

    public C21562k(AbstractC21666a abstractC21666a) {
        this.f60160a = abstractC21666a;
    }

    public Object get() {
        AbstractC19219a0 mo9212c = this.f60160a.mo9212c();
        Objects.requireNonNull(mo9212c, "Cannot return null from a non-@Nullable component method");
        return mo9212c;
    }
}
