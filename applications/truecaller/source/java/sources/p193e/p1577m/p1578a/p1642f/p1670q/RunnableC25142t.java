package p193e.p1577m.p1578a.p1642f.p1670q;

import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskExecutors;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* renamed from: e.m.a.f.q.t */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/q/t.class */
public final class RunnableC25142t implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f70382a;

    /* renamed from: b */
    public final /* synthetic */ u f70383b;

    public RunnableC25142t(u uVar, Task task) {
        this.f70383b = uVar;
        this.f70382a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Task then = this.f70383b.b.then(this.f70382a.m38523o());
            if (then == null) {
                u uVar = this.f70383b;
                uVar.c.v(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.f6495b;
            then.m38529i(executor, this.f70383b);
            then.m38532f(executor, this.f70383b);
            then.m38536b(executor, this.f70383b);
        } catch (RuntimeExecutionException e) {
            if (!(e.getCause() instanceof Exception)) {
                this.f70383b.c.v(e);
                return;
            }
            u uVar2 = this.f70383b;
            uVar2.c.v((Exception) e.getCause());
        } catch (CancellationException e2) {
            this.f70383b.c.x();
        } catch (Exception e3) {
            this.f70383b.c.v(e3);
        }
    }
}
