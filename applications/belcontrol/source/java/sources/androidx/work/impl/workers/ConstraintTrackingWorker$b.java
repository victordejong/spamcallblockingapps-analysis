package androidx.work.impl.workers;

import com.google.common.util.concurrent.ListenableFuture;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker$b.class */
public class ConstraintTrackingWorker$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ListenableFuture f1680a;

    /* renamed from: b */
    public final /* synthetic */ ConstraintTrackingWorker f1681b;

    public ConstraintTrackingWorker$b(ConstraintTrackingWorker constraintTrackingWorker, ListenableFuture listenableFuture) {
        this.f1681b = constraintTrackingWorker;
        this.f1680a = listenableFuture;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f1681b.b) {
            if (this.f1681b.c) {
                this.f1681b.d();
            } else {
                this.f1681b.d.q(this.f1680a);
            }
        }
    }
}
