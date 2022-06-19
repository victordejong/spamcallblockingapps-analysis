package p193e.p1512i.p1516b.p1536w1;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* renamed from: e.i.b.w1.c */
/* loaded from: classes-dex2jar.jar:e/i/b/w1/c.class */
public class ExecutorC23149c implements Executor {

    /* renamed from: a */
    public final Handler f64119a = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (Thread.currentThread() == this.f64119a.getLooper().getThread()) {
            runnable.run();
        } else {
            this.f64119a.post(runnable);
        }
    }
}
