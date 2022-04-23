package p131c.p161d.p282e.p340u.p342e;

import com.google.firebase.perf.util.Timer;
/* renamed from: c.d.e.u.e.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/e/e.class */
public final /* synthetic */ class RunnableC5952e implements Runnable {

    /* renamed from: a */
    public final C5953f f19324a;

    /* renamed from: b */
    public final Timer f19325b;

    public RunnableC5952e(C5953f fVar, Timer timer) {
        this.f19324a = fVar;
        this.f19325b = timer;
    }

    /* renamed from: a */
    public static Runnable m22580a(C5953f fVar, Timer timer) {
        return new RunnableC5952e(fVar, timer);
    }

    @Override // java.lang.Runnable
    public void run() {
        C5953f.m22576a(this.f19324a, this.f19325b);
    }
}
