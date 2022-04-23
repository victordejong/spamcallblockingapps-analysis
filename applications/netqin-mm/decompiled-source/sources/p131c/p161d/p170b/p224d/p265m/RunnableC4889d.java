package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
/* renamed from: c.d.b.d.m.d */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/d.class */
public final class RunnableC4889d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f17507a;

    /* renamed from: b */
    public final /* synthetic */ C4887b f17508b;

    public RunnableC4889d(C4887b bVar, Task task) {
        this.f17508b = bVar;
        this.f17507a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4904s sVar;
        C4904s sVar2;
        C4904s sVar3;
        Continuation continuation;
        C4904s sVar4;
        C4904s sVar5;
        if (this.f17507a.mo8603c()) {
            sVar5 = this.f17508b.f17503c;
            sVar5.m24849f();
            return;
        }
        try {
            continuation = this.f17508b.f17502b;
            Object a = continuation.mo8621a(this.f17507a);
            sVar4 = this.f17508b.f17503c;
            sVar4.m24853a((C4904s) a);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                sVar2 = this.f17508b.f17503c;
                sVar2.m24854a((Exception) e.getCause());
                return;
            }
            sVar = this.f17508b.f17503c;
            sVar.m24854a((Exception) e);
        } catch (Exception e2) {
            sVar3 = this.f17508b.f17503c;
            sVar3.m24854a(e2);
        }
    }
}
