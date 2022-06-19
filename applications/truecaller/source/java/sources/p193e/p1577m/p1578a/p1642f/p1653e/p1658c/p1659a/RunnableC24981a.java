package p193e.p1577m.p1578a.p1642f.p1653e.p1658c.p1659a;

import android.os.Process;
/* renamed from: e.m.a.f.e.c.a.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/c/a/a.class */
public final class RunnableC24981a implements Runnable {

    /* renamed from: a */
    public final Runnable f69941a;

    public RunnableC24981a(Runnable runnable) {
        this.f69941a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.f69941a.run();
    }
}
