package p131c.p161d.p282e.p289l.p290d.p293h;

import android.os.Process;
/* renamed from: c.d.e.l.d.h.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/d.class */
public abstract class AbstractRunnableC5216d implements Runnable {
    /* renamed from: a */
    public abstract void mo23824a();

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        mo23824a();
    }
}
