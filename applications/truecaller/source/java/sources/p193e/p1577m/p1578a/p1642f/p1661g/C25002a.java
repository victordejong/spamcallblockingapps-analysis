package p193e.p1577m.p1578a.p1642f.p1661g;

import android.os.Process;
/* renamed from: e.m.a.f.g.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/g/a.class */
public final class C25002a extends Thread {
    public C25002a(ThreadGroup threadGroup) {
        super(threadGroup, "GmsDynamite");
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(19);
        synchronized (this) {
            while (true) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    return;
                }
            }
        }
    }
}
