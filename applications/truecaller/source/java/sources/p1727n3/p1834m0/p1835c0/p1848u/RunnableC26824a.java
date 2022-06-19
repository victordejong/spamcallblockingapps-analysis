package p1727n3.p1834m0.p1835c0.p1848u;

import androidx.work.impl.workers.ConstraintTrackingWorker;
import com.google.common.util.concurrent.ListenableFuture;
/* renamed from: n3.m0.c0.u.a */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/u/a.class */
public class RunnableC26824a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ListenableFuture f75055a;

    /* renamed from: b */
    public final /* synthetic */ ConstraintTrackingWorker f75056b;

    public RunnableC26824a(ConstraintTrackingWorker constraintTrackingWorker, ListenableFuture listenableFuture) {
        this.f75056b = constraintTrackingWorker;
        this.f75055a = listenableFuture;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f75056b.f1594b) {
            if (this.f75056b.f1595c) {
                this.f75056b.m42598o();
            } else {
                this.f75056b.f1596d.k(this.f75055a);
            }
        }
    }
}
