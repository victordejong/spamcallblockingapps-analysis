package p193e.p194a.p1365y.p1366a.p1374h;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.h.l */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/l.class */
public final class C21530l implements Provider<AbstractC21626w> {

    /* renamed from: a */
    public final AbstractC21666a f60080a;

    public C21530l(AbstractC21666a abstractC21666a) {
        this.f60080a = abstractC21666a;
    }

    public Object get() {
        AbstractC21626w mo9214a = this.f60080a.mo9214a();
        Objects.requireNonNull(mo9214a, "Cannot return null from a non-@Nullable component method");
        return mo9214a;
    }
}
