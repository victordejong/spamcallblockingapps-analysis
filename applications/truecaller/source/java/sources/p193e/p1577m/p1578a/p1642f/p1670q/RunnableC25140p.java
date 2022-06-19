package p193e.p1577m.p1578a.p1642f.p1670q;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import java.util.Objects;
/* renamed from: e.m.a.f.q.p */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/q/p.class */
public final class RunnableC25140p implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f70378a;

    /* renamed from: b */
    public final /* synthetic */ q f70379b;

    public RunnableC25140p(q qVar, Task task) {
        this.f70379b = qVar;
        this.f70378a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f70379b.b) {
            OnFailureListener onFailureListener = this.f70379b.c;
            if (onFailureListener != null) {
                Exception m38524n = this.f70378a.m38524n();
                Objects.requireNonNull(m38524n, "null reference");
                onFailureListener.onFailure(m38524n);
            }
        }
    }
}
