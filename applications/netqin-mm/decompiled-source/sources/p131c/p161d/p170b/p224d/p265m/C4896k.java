package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.m.k */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/k.class */
public final class C4896k<TResult> implements AbstractC4902q<TResult> {

    /* renamed from: a */
    public final Executor f17522a;

    /* renamed from: b */
    public final Object f17523b = new Object();

    /* renamed from: c */
    public OnFailureListener f17524c;

    public C4896k(Executor executor, OnFailureListener onFailureListener) {
        this.f17522a = executor;
        this.f17524c = onFailureListener;
    }

    @Override // p131c.p161d.p170b.p224d.p265m.AbstractC4902q
    /* renamed from: a */
    public final void mo24855a(Task<TResult> task) {
        if (!task.mo8601e() && !task.mo8603c()) {
            synchronized (this.f17523b) {
                if (this.f17524c != null) {
                    this.f17522a.execute(new RunnableC4895j(this, task));
                }
            }
        }
    }
}
