package p1727n3.p1874y.p1876b.p1877a;

import java.util.Objects;
/* renamed from: n3.y.b.a.u */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/u.class */
public final /* synthetic */ class RunnableC27380u implements Runnable {

    /* renamed from: a */
    public final v f77066a;

    /* renamed from: b */
    public final C27085g0 f77067b;

    public RunnableC27380u(v vVar, C27085g0 c27085g0) {
        this.f77066a = vVar;
        this.f77067b = c27085g0;
    }

    @Override // java.lang.Runnable
    public void run() {
        v vVar = this.f77066a;
        C27085g0 c27085g0 = this.f77067b;
        Objects.requireNonNull(vVar);
        try {
            vVar.b(c27085g0);
        } catch (C27080f e) {
            throw new RuntimeException(e);
        }
    }
}
