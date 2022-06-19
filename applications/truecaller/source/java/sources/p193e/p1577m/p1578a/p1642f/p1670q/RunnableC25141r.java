package p193e.p1577m.p1578a.p1642f.p1670q;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
/* renamed from: e.m.a.f.q.r */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/q/r.class */
public final class RunnableC25141r implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f70380a;

    /* renamed from: b */
    public final /* synthetic */ s f70381b;

    public RunnableC25141r(s sVar, Task task) {
        this.f70381b = sVar;
        this.f70380a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f70381b.b) {
            OnSuccessListener onSuccessListener = this.f70381b.c;
            if (onSuccessListener != null) {
                onSuccessListener.onSuccess(this.f70380a.m38523o());
            }
        }
    }
}
