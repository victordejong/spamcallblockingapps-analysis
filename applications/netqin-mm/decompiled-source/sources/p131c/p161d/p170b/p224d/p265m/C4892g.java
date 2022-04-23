package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.m.g */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/g.class */
public final class C4892g<TResult> implements AbstractC4902q<TResult> {

    /* renamed from: a */
    public final Executor f17512a;

    /* renamed from: b */
    public final Object f17513b = new Object();

    /* renamed from: c */
    public OnCanceledListener f17514c;

    public C4892g(Executor executor, OnCanceledListener onCanceledListener) {
        this.f17512a = executor;
        this.f17514c = onCanceledListener;
    }

    @Override // p131c.p161d.p170b.p224d.p265m.AbstractC4902q
    /* renamed from: a */
    public final void mo24855a(Task<TResult> task) {
        if (task.mo8603c()) {
            synchronized (this.f17513b) {
                if (this.f17514c != null) {
                    this.f17512a.execute(new RunnableC4891f(this));
                }
            }
        }
    }
}
