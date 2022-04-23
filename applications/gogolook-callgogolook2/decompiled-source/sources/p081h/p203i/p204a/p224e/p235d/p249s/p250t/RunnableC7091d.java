package p081h.p203i.p204a.p224e.p235d.p249s.p250t;

import android.os.Process;
/* renamed from: h.i.a.e.d.s.t.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/t/d.class */
public final class RunnableC7091d implements Runnable {

    /* renamed from: a */
    public final Runnable f17203a;

    /* renamed from: b */
    public final int f17204b;

    public RunnableC7091d(Runnable runnable, int i) {
        this.f17203a = runnable;
        this.f17204b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f17204b);
        this.f17203a.run();
    }
}
