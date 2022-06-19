package p193e.p194a.p1399z;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.AbstractC8412c;
/* renamed from: e.a.z.c */
/* loaded from: classes11-dex2jar.jar:e/a/z/c.class */
public final class C21829c implements Provider<C20592g> {

    /* renamed from: a */
    public final AbstractC8412c f60693a;

    public C21829c(AbstractC8412c abstractC8412c) {
        this.f60693a = abstractC8412c;
    }

    public Object get() {
        C20592g mo12343i5 = this.f60693a.mo12343i5();
        Objects.requireNonNull(mo12343i5, "Cannot return null from a non-@Nullable component method");
        return mo12343i5;
    }
}
