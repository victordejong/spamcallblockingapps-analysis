package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskExecutors;
/* renamed from: c.d.b.d.m.e */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/e.class */
public final class RunnableC4890e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f17509a;

    /* renamed from: b */
    public final /* synthetic */ C4888c f17510b;

    public RunnableC4890e(C4888c cVar, Task task) {
        this.f17510b = cVar;
        this.f17509a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4904s sVar;
        C4904s sVar2;
        C4904s sVar3;
        Continuation continuation;
        try {
            continuation = this.f17510b.f17505b;
            Task task = (Task) continuation.mo8621a(this.f17509a);
            if (task == null) {
                this.f17510b.mo8583a(new NullPointerException("Continuation returned null"));
                return;
            }
            task.mo8608a(TaskExecutors.f30246b, (OnSuccessListener) this.f17510b);
            task.mo8609a(TaskExecutors.f30246b, (OnFailureListener) this.f17510b);
            task.mo8610a(TaskExecutors.f30246b, (OnCanceledListener) this.f17510b);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                sVar2 = this.f17510b.f17506c;
                sVar2.m24854a((Exception) e.getCause());
                return;
            }
            sVar = this.f17510b.f17506c;
            sVar.m24854a((Exception) e);
        } catch (Exception e2) {
            sVar3 = this.f17510b.f17506c;
            sVar3.m24854a(e2);
        }
    }
}
