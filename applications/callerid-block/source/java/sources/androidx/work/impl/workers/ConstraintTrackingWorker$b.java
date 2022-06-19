package androidx.work.impl.workers;

import e.c.b.a.a.a;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker$b.class */
class ConstraintTrackingWorker$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ a f3156b;

    /* renamed from: c */
    final /* synthetic */ ConstraintTrackingWorker f3157c;

    ConstraintTrackingWorker$b(ConstraintTrackingWorker constraintTrackingWorker, a aVar) {
        this.f3157c = constraintTrackingWorker;
        this.f3156b = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f3157c.g) {
            if (this.f3157c.h) {
                this.f3157c.c();
            } else {
                this.f3157c.i.s(this.f3156b);
            }
        }
    }
}
