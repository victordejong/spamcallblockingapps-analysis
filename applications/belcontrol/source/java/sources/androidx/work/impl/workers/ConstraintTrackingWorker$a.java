package androidx.work.impl.workers;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker$a.class */
public class ConstraintTrackingWorker$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ConstraintTrackingWorker f1679a;

    public ConstraintTrackingWorker$a(ConstraintTrackingWorker constraintTrackingWorker) {
        this.f1679a = constraintTrackingWorker;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1679a.f();
    }
}
