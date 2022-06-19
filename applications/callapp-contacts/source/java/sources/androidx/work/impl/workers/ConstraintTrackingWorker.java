package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.AbstractC3145k;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.p085a.AbstractC3025c;
import androidx.work.impl.p085a.C3026d;
import androidx.work.impl.utils.p089a.C3117c;
import androidx.work.impl.utils.p090b.AbstractC3119a;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker.class */
public class ConstraintTrackingWorker extends ListenableWorker implements AbstractC3025c {

    /* renamed from: a */
    static final String f11497a = AbstractC3145k.m39275a("ConstraintTrkngWrkr");

    /* renamed from: b */
    WorkerParameters f11498b;

    /* renamed from: c */
    final Object f11499c = new Object();

    /* renamed from: d */
    volatile boolean f11500d = false;

    /* renamed from: e */
    C3117c<ListenableWorker.AbstractC2980a> f11501e = C3117c.m39313a();

    /* renamed from: f */
    ListenableWorker f11502f;

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f11498b = workerParameters;
    }

    /* renamed from: a */
    final void m39283a() {
        this.f11501e.mo39311a((C3117c<ListenableWorker.AbstractC2980a>) new ListenableWorker.AbstractC2980a.C2981a());
    }

    @Override // androidx.work.impl.p085a.AbstractC3025c
    /* renamed from: a */
    public final void mo39282a(List<String> list) {
    }

    /* renamed from: b */
    final void m39281b() {
        this.f11501e.mo39311a((C3117c<ListenableWorker.AbstractC2980a>) new ListenableWorker.AbstractC2980a.C2982b());
    }

    @Override // androidx.work.impl.p085a.AbstractC3025c
    /* renamed from: b */
    public final void mo39280b(List<String> list) {
        AbstractC3145k.m39277a();
        String.format("Constraints changed for %s", list);
        synchronized (this.f11499c) {
            this.f11500d = true;
        }
    }

    @Override // androidx.work.ListenableWorker
    public AbstractC3119a getTaskExecutor() {
        return C3068j.m39359b(getApplicationContext()).f11356d;
    }

    @Override // androidx.work.ListenableWorker
    public boolean isRunInForeground() {
        ListenableWorker listenableWorker = this.f11502f;
        return listenableWorker != null && listenableWorker.isRunInForeground();
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.f11502f;
        if (listenableWorker == null || listenableWorker.isStopped()) {
            return;
        }
        this.f11502f.stop();
    }

    @Override // androidx.work.ListenableWorker
    public AbstractFutureC15579a<ListenableWorker.AbstractC2980a> startWork() {
        getBackgroundExecutor().execute(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker.1
            @Override // java.lang.Runnable
            public final void run() {
                final ConstraintTrackingWorker constraintTrackingWorker = ConstraintTrackingWorker.this;
                String m39512a = constraintTrackingWorker.getInputData().m39512a("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
                if (TextUtils.isEmpty(m39512a)) {
                    AbstractC3145k.m39277a().mo39273a(ConstraintTrackingWorker.f11497a, "No worker to delegate to.", new Throwable[0]);
                    constraintTrackingWorker.m39283a();
                    return;
                }
                constraintTrackingWorker.f11502f = constraintTrackingWorker.getWorkerFactory().m39252a(constraintTrackingWorker.getApplicationContext(), m39512a, constraintTrackingWorker.f11498b);
                if (constraintTrackingWorker.f11502f == null) {
                    AbstractC3145k.m39277a();
                    constraintTrackingWorker.m39283a();
                    return;
                }
                WorkSpec workSpec = C3068j.m39359b(constraintTrackingWorker.getApplicationContext()).f11355c.mo39474j().getWorkSpec(constraintTrackingWorker.getId().toString());
                if (workSpec == null) {
                    constraintTrackingWorker.m39283a();
                    return;
                }
                C3026d c3026d = new C3026d(constraintTrackingWorker.getApplicationContext(), constraintTrackingWorker.getTaskExecutor(), constraintTrackingWorker);
                c3026d.m39441a((Iterable<WorkSpec>) Collections.singletonList(workSpec));
                if (!c3026d.m39440a(constraintTrackingWorker.getId().toString())) {
                    AbstractC3145k.m39277a();
                    String.format("Constraints not met for delegate %s. Requesting retry.", m39512a);
                    constraintTrackingWorker.m39281b();
                    return;
                }
                AbstractC3145k.m39277a();
                String.format("Constraints met for delegate %s", m39512a);
                try {
                    final AbstractFutureC15579a<ListenableWorker.AbstractC2980a> startWork = constraintTrackingWorker.f11502f.startWork();
                    startWork.mo8638a(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            synchronized (constraintTrackingWorker.f11499c) {
                                if (constraintTrackingWorker.f11500d) {
                                    constraintTrackingWorker.m39281b();
                                } else {
                                    constraintTrackingWorker.f11501e.mo39312a(startWork);
                                }
                            }
                        }
                    }, constraintTrackingWorker.getBackgroundExecutor());
                } catch (Throwable th) {
                    AbstractC3145k.m39277a();
                    String.format("Delegated worker %s threw exception in startWork.", m39512a);
                    synchronized (constraintTrackingWorker.f11499c) {
                        if (constraintTrackingWorker.f11500d) {
                            AbstractC3145k.m39277a();
                            constraintTrackingWorker.m39281b();
                        } else {
                            constraintTrackingWorker.m39283a();
                        }
                    }
                }
            }
        });
        return this.f11501e;
    }
}
