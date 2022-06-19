package p193e.p1577m.p1578a.p1642f.p1670q;

import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.q.c0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/q/c0.class */
public final class RunnableC25135c0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ b0 f70369a;

    /* renamed from: b */
    public final /* synthetic */ Callable f70370b;

    public RunnableC25135c0(b0 b0Var, Callable callable) {
        this.f70369a = b0Var;
        this.f70370b = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f70369a.w(this.f70370b.call());
        } catch (Exception e) {
            this.f70369a.v(e);
        } catch (Throwable th) {
            this.f70369a.v(new RuntimeException(th));
        }
    }
}
