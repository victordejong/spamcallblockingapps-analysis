package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
/* renamed from: c.d.b.d.m.m */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/m.class */
public final class RunnableC4898m implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f17528a;

    /* renamed from: b */
    public final /* synthetic */ C4897l f17529b;

    public RunnableC4898m(C4897l lVar, Task task) {
        this.f17529b = lVar;
        this.f17528a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnSuccessListener onSuccessListener;
        OnSuccessListener onSuccessListener2;
        obj = this.f17529b.f17526b;
        synchronized (obj) {
            onSuccessListener = this.f17529b.f17527c;
            if (onSuccessListener != null) {
                onSuccessListener2 = this.f17529b.f17527c;
                onSuccessListener2.onSuccess(this.f17528a.mo8606b());
            }
        }
    }
}
