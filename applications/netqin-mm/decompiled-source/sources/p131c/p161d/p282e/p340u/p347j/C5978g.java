package p131c.p161d.p282e.p340u.p347j;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import p131c.p161d.p282e.p340u.p343f.C5954a;
import p131c.p161d.p282e.p340u.p348k.C5992l;
import p599h.AbstractC10210e;
import p599h.AbstractC10212f;
import p599h.C10091a0;
import p599h.C10236s;
import p599h.C10250y;
/* renamed from: c.d.e.u.j.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/j/g.class */
public class C5978g implements AbstractC10212f {

    /* renamed from: a */
    public final AbstractC10212f f19408a;

    /* renamed from: b */
    public final C5954a f19409b;

    /* renamed from: c */
    public final long f19410c;

    /* renamed from: d */
    public final Timer f19411d;

    public C5978g(AbstractC10212f fVar, C5992l lVar, Timer timer, long j) {
        this.f19408a = fVar;
        this.f19409b = C5954a.m22565a(lVar);
        this.f19410c = j;
        this.f19411d = timer;
    }

    @Override // p599h.AbstractC10212f
    /* renamed from: a */
    public void mo1059a(AbstractC10210e eVar, C10091a0 a0Var) throws IOException {
        FirebasePerfOkHttpClient.m7223a(a0Var, this.f19409b, this.f19410c, this.f19411d.m7217b());
        this.f19408a.mo1059a(eVar, a0Var);
    }

    @Override // p599h.AbstractC10212f
    /* renamed from: a */
    public void mo1058a(AbstractC10210e eVar, IOException iOException) {
        C10250y i = eVar.mo828i();
        if (i != null) {
            C10236s g = i.m813g();
            if (g != null) {
                this.f19409b.m22558c(g.m926o().toString());
            }
            if (i.m815e() != null) {
                this.f19409b.m22564a(i.m815e());
            }
        }
        this.f19409b.m22562b(this.f19410c);
        this.f19409b.m22553e(this.f19411d.m7217b());
        C5979h.m22430a(this.f19409b);
        this.f19408a.mo1058a(eVar, iOException);
    }
}
