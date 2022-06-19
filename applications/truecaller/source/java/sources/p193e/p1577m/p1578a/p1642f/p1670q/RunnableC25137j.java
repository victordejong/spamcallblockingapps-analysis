package p193e.p1577m.p1578a.p1642f.p1670q;

import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskExecutors;
import java.util.concurrent.Executor;
/* renamed from: e.m.a.f.q.j */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/q/j.class */
public final class RunnableC25137j implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f70373a;

    /* renamed from: b */
    public final /* synthetic */ k f70374b;

    public RunnableC25137j(k kVar, Task task) {
        this.f70374b = kVar;
        this.f70373a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Task task = (Task) this.f70374b.b.then(this.f70373a);
            if (task == null) {
                k kVar = this.f70374b;
                kVar.c.v(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.f6495b;
            task.m38529i(executor, this.f70374b);
            task.m38532f(executor, this.f70374b);
            task.m38536b(executor, this.f70374b);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.f70374b.c.v((Exception) e.getCause());
            } else {
                this.f70374b.c.v(e);
            }
        } catch (Exception e2) {
            this.f70374b.c.v(e2);
        }
    }
}
