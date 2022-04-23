package p131c.p161d.p282e.p340u.p346i;

import com.google.firebase.perf.internal.PerfSession;
import com.google.firebase.perf.metrics.Counter;
import com.google.firebase.perf.metrics.Trace;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p282e.p340u.p350m.C6039u;
import p131c.p161d.p282e.p340u.p350m.C6044w;
/* renamed from: c.d.e.u.i.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/i/a.class */
public class C5971a {

    /* renamed from: a */
    public final Trace f19385a;

    public C5971a(Trace trace) {
        this.f19385a = trace;
    }

    /* renamed from: a */
    public C6044w m22485a() {
        C6044w.C6046b O = C6044w.m22209O();
        O.m22183a(this.f19385a.m7238c());
        O.m22187a(this.f19385a.m7236e().m7216c());
        O.m22180b(this.f19385a.m7236e().m7218a(this.f19385a.m7239b()));
        for (Counter counter : this.f19385a.m7244a().values()) {
            O.m22182a(counter.m7246b(), counter.m7248a());
        }
        List<Trace> f = this.f19385a.m7235f();
        if (!f.isEmpty()) {
            for (Trace trace : f) {
                O.m22185a(new C5971a(trace).m22485a());
            }
        }
        O.m22178b(this.f19385a.getAttributes());
        C6039u[] a = PerfSession.m7265a(this.f19385a.m7237d());
        if (a != null) {
            O.m22184a(Arrays.asList(a));
        }
        return O.mo6937a();
    }
}
