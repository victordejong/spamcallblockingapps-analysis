package p193e.p194a.p1365y.p1366a.p1374h;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
import s1.w.f;
/* renamed from: e.a.y.a.h.n */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/n.class */
public final class C21532n implements Provider<f> {

    /* renamed from: a */
    public final AbstractC21666a f60082a;

    public C21532n(AbstractC21666a abstractC21666a) {
        this.f60082a = abstractC21666a;
    }

    public Object get() {
        f mo9208g = this.f60082a.mo9208g();
        Objects.requireNonNull(mo9208g, "Cannot return null from a non-@Nullable component method");
        return mo9208g;
    }
}
