package p081h.p203i.p204a.p224e.p293r;

import java.util.concurrent.Callable;
/* renamed from: h.i.a.e.r.h0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/h0.class */
public final class RunnableC9144h0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C9135d0 f20829a;

    /* renamed from: b */
    public final /* synthetic */ Callable f20830b;

    public RunnableC9144h0(C9135d0 d0Var, Callable callable) {
        this.f20829a = d0Var;
        this.f20830b = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f20829a.m16044a((C9135d0) this.f20830b.call());
        } catch (Exception e) {
            this.f20829a.m16045a(e);
        }
    }
}
