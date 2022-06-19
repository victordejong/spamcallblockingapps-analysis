package p193e.p1485h.p1486a.p1493c.p1506v0;

import java.util.concurrent.Callable;
import p1727n3.p1789g0.C26232y;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.p1511z0.C22897a;
/* renamed from: e.h.a.c.v0.d */
/* loaded from: classes-dex2jar.jar:e/h/a/c/v0/d.class */
public class CallableC22854d implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ C22897a f63439a;

    /* renamed from: b */
    public final /* synthetic */ C22855e f63440b;

    public CallableC22854d(C22855e c22855e, C22897a c22897a) {
        this.f63440b = c22855e;
        this.f63439a = c22897a;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        synchronized (this) {
            try {
                String m7684b = this.f63440b.m7684b();
                this.f63439a.m7637a(m7684b);
                C22735g0 m42081b = this.f63440b.f63441a.m42081b();
                String m2317p0 = C26232y.m2317p0(this.f63440b.f63441a);
                m42081b.m7855b(m2317p0, "Deleted settings file" + m7684b);
            } catch (Exception e) {
                e.printStackTrace();
                C22735g0 m42081b2 = this.f63440b.f63441a.m42081b();
                String m2317p02 = C26232y.m2317p0(this.f63440b.f63441a);
                m42081b2.m7855b(m2317p02, "Error while resetting settings" + e.getLocalizedMessage());
            }
        }
        return null;
    }
}
