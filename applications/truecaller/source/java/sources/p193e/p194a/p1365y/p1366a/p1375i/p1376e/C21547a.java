package p193e.p194a.p1365y.p1366a.p1375i.p1376e;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.i.e.a */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/i/e/a.class */
public final class C21547a implements Provider<AbstractC21626w> {

    /* renamed from: a */
    public final AbstractC21666a f60142a;

    public C21547a(AbstractC21666a abstractC21666a) {
        this.f60142a = abstractC21666a;
    }

    public Object get() {
        AbstractC21626w mo9214a = this.f60142a.mo9214a();
        Objects.requireNonNull(mo9214a, "Cannot return null from a non-@Nullable component method");
        return mo9214a;
    }
}
