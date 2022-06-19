package p193e.p1485h.p1486a.p1493c.p1498n0;

import java.util.concurrent.Callable;
import p193e.p1485h.p1486a.p1493c.p1498n0.C22759e;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* renamed from: e.h.a.c.n0.f */
/* loaded from: classes-dex2jar.jar:e/h/a/c/n0/f.class */
public class RunnableC22765f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C22759e.CallableC22763d f63066a;

    /* renamed from: e.h.a.c.n0.f$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/n0/f$a.class */
    public class CallableC22766a implements Callable<Void> {
        public CallableC22766a() {
            RunnableC22765f.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C22759e.CallableC22763d callableC22763d = RunnableC22765f.this.f63066a;
            C22759e.this.f63050n.m7851b(callableC22763d.f63062c);
            C22759e.this.mo7813c();
            C22759e.CallableC22763d callableC22763d2 = RunnableC22765f.this.f63066a;
            C22759e.this.m7811e(callableC22763d2.f63062c, callableC22763d2.f63060a, callableC22763d2.f63061b);
            return null;
        }
    }

    public RunnableC22765f(C22759e.CallableC22763d callableC22763d) {
        this.f63066a = callableC22763d;
    }

    @Override // java.lang.Runnable
    public void run() {
        C22895k m7641c = C22882a.m7644a(C22759e.this.f63040d).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "queueEventWithDelay", new CallableC22766a()));
    }
}
