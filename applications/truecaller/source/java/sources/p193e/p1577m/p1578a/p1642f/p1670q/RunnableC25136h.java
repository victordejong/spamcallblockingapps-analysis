package p193e.p1577m.p1578a.p1642f.p1670q;

import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
/* renamed from: e.m.a.f.q.h */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/q/h.class */
public final class RunnableC25136h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f70371a;

    /* renamed from: b */
    public final /* synthetic */ i f70372b;

    public RunnableC25136h(i iVar, Task task) {
        this.f70372b = iVar;
        this.f70371a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f70371a.m38521q()) {
            this.f70372b.c.x();
            return;
        }
        try {
            this.f70372b.c.w(this.f70372b.b.then(this.f70371a));
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.f70372b.c.v((Exception) e.getCause());
            } else {
                this.f70372b.c.v(e);
            }
        } catch (Exception e2) {
            this.f70372b.c.v(e2);
        }
    }
}
