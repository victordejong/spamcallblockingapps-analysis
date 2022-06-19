package p193e.p194a.p1365y.p1366a.p1374h;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
import p193e.p194a.p1365y.p1391i.C21751a;
/* renamed from: e.a.y.a.h.h */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/h.class */
public final class C21526h implements Provider<C21751a> {

    /* renamed from: a */
    public final AbstractC21666a f60076a;

    public C21526h(AbstractC21666a abstractC21666a) {
        this.f60076a = abstractC21666a;
    }

    public Object get() {
        C21751a mo9198q = this.f60076a.mo9198q();
        Objects.requireNonNull(mo9198q, "Cannot return null from a non-@Nullable component method");
        return mo9198q;
    }
}
