package p193e.p194a.p1129p5.p1132s0;

import java.io.IOException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.n;
import s1.z.c.l;
import u3.f;
import u3.g;
import u3.k0;
/* renamed from: e.a.p5.s0.p */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/p.class */
public final class C19304p implements g {

    /* renamed from: a */
    public final /* synthetic */ n f53735a;

    public C19304p(n nVar) {
        this.f53735a = nVar;
    }

    public void onFailure(f fVar, IOException iOException) {
        l.e(fVar, "call");
        l.e(iOException, "e");
        if (this.f53735a.isCancelled()) {
            return;
        }
        this.f53735a.c(C25225a.m3935a0(iOException));
    }

    public void onResponse(f fVar, k0 k0Var) {
        l.e(fVar, "call");
        l.e(k0Var, "response");
        C19291g.m13552f1(this.f53735a, k0Var);
    }
}
