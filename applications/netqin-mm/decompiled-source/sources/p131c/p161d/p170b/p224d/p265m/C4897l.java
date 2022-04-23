package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.m.l */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/l.class */
public final class C4897l<TResult> implements AbstractC4902q<TResult> {

    /* renamed from: a */
    public final Executor f17525a;

    /* renamed from: b */
    public final Object f17526b = new Object();

    /* renamed from: c */
    public OnSuccessListener<? super TResult> f17527c;

    public C4897l(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        this.f17525a = executor;
        this.f17527c = onSuccessListener;
    }

    @Override // p131c.p161d.p170b.p224d.p265m.AbstractC4902q
    /* renamed from: a */
    public final void mo24855a(Task<TResult> task) {
        if (task.mo8601e()) {
            synchronized (this.f17526b) {
                if (this.f17527c != null) {
                    this.f17525a.execute(new RunnableC4898m(this, task));
                }
            }
        }
    }
}
