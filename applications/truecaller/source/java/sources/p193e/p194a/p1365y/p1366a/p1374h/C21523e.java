package p193e.p194a.p1365y.p1366a.p1374h;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21607h;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.h.e */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/e.class */
public final class C21523e implements Provider<AbstractC21607h> {

    /* renamed from: a */
    public final AbstractC21666a f60073a;

    public C21523e(AbstractC21666a abstractC21666a) {
        this.f60073a = abstractC21666a;
    }

    public Object get() {
        AbstractC21607h mo9196s = this.f60073a.mo9196s();
        Objects.requireNonNull(mo9196s, "Cannot return null from a non-@Nullable component method");
        return mo9196s;
    }
}
