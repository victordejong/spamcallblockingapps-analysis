package p193e.p1485h.p1486a.p1493c.p1506v0;

import java.util.concurrent.Callable;
import p1727n3.p1789g0.C26232y;
import p193e.p1485h.p1486a.p1493c.p1506v0.C22847b;
/* renamed from: e.h.a.c.v0.c */
/* loaded from: classes-dex2jar.jar:e/h/a/c/v0/c.class */
public class CallableC22853c implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ C22847b f63438a;

    public CallableC22853c(C22847b c22847b) {
        this.f63438a = c22847b;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.f63438a.f63425e.m42081b().m7855b(C26232y.m2317p0(this.f63438a.f63425e), "Product Config: fetch Success");
        this.f63438a.m7687h(C22847b.EnumC22852e.FETCHED);
        return null;
    }
}
