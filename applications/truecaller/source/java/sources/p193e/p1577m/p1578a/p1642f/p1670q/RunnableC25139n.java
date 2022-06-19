package p193e.p1577m.p1578a.p1642f.p1670q;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
/* renamed from: e.m.a.f.q.n */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/q/n.class */
public final class RunnableC25139n implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f70376a;

    /* renamed from: b */
    public final /* synthetic */ o f70377b;

    public RunnableC25139n(o oVar, Task task) {
        this.f70377b = oVar;
        this.f70376a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f70377b.b) {
            OnCompleteListener onCompleteListener = this.f70377b.c;
            if (onCompleteListener != null) {
                onCompleteListener.onComplete(this.f70376a);
            }
        }
    }
}
