package p193e.p194a.p1365y.p1366a.p1374h;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21597c;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.h.a */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/a.class */
public final class C21519a implements Provider<AbstractC21597c> {

    /* renamed from: a */
    public final AbstractC21666a f60069a;

    public C21519a(AbstractC21666a abstractC21666a) {
        this.f60069a = abstractC21666a;
    }

    public Object get() {
        AbstractC21597c mo9210e = this.f60069a.mo9210e();
        Objects.requireNonNull(mo9210e, "Cannot return null from a non-@Nullable component method");
        return mo9210e;
    }
}
