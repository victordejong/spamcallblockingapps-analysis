package androidx.work.impl.workers;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker$a.class */
class ConstraintTrackingWorker$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ ConstraintTrackingWorker f3155b;

    ConstraintTrackingWorker$a(ConstraintTrackingWorker constraintTrackingWorker) {
        this.f3155b = constraintTrackingWorker;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3155b.f();
    }
}
