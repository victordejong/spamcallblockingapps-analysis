package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
/* renamed from: c.d.b.d.m.j */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/j.class */
public final class RunnableC4895j implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f17520a;

    /* renamed from: b */
    public final /* synthetic */ C4896k f17521b;

    public RunnableC4895j(C4896k kVar, Task task) {
        this.f17521b = kVar;
        this.f17520a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnFailureListener onFailureListener;
        OnFailureListener onFailureListener2;
        obj = this.f17521b.f17523b;
        synchronized (obj) {
            onFailureListener = this.f17521b.f17524c;
            if (onFailureListener != null) {
                onFailureListener2 = this.f17521b.f17524c;
                onFailureListener2.mo8583a(this.f17520a.mo8617a());
            }
        }
    }
}
