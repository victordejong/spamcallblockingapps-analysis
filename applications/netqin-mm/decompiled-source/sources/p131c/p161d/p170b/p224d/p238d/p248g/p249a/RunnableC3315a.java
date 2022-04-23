package p131c.p161d.p170b.p224d.p238d.p248g.p249a;

import android.os.Process;
/* renamed from: c.d.b.d.d.g.a.a */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/g/a/a.class */
public final class RunnableC3315a implements Runnable {

    /* renamed from: a */
    public final Runnable f12034a;

    /* renamed from: b */
    public final int f12035b;

    public RunnableC3315a(Runnable runnable, int i) {
        this.f12034a = runnable;
        this.f12035b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f12035b);
        this.f12034a.run();
    }
}
