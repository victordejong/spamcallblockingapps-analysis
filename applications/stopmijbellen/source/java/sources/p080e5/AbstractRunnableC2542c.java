package p080e5;

import android.os.Process;
/* renamed from: e5.c */
/* loaded from: classes-dex2jar.jar:e5/c.class */
public abstract class AbstractRunnableC2542c implements Runnable {
    /* renamed from: b */
    public abstract void mo3460b();

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        mo3460b();
    }
}
