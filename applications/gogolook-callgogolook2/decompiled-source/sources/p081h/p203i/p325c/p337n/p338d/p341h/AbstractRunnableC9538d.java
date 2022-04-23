package p081h.p203i.p325c.p337n.p338d.p341h;

import android.os.Process;
/* renamed from: h.i.c.n.d.h.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/d.class */
public abstract class AbstractRunnableC9538d implements Runnable {
    /* renamed from: a */
    public abstract void mo14192a();

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        mo14192a();
    }
}
