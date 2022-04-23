package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.a.c;
import androidx.work.impl.a.d;
import androidx.work.impl.j;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.b.a;
import androidx.work.k;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker.class */
public class ConstraintTrackingWorker extends ListenableWorker implements c {

    /* renamed from: a  reason: collision with root package name */
    static final String f6221a = k.a("ConstraintTrkngWrkr");

    /* renamed from: b  reason: collision with root package name */
    WorkerParameters f6222b;

    /* renamed from: c  reason: collision with root package name */
    final Object f6223c = new Object();

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f6224d = false;
    androidx.work.impl.utils.a.c<ListenableWorker.a> e = androidx.work.impl.utils.a.c.a();
    ListenableWorker f;

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f6222b = workerParameters;
    }

    final void a() {
        this.e.a((androidx.work.impl.utils.a.c<ListenableWorker.a>) new ListenableWorker.a.C0121a());
    }

    @Override // androidx.work.impl.a.c
    public final void a(List<String> list) {
    }

    final void b() {
        this.e.a((androidx.work.impl.utils.a.c<ListenableWorker.a>) new ListenableWorker.a.b());
    }

    @Override // androidx.work.impl.a.c
    public final void b(List<String> list) {
        k.a();
        String.format("Constraints changed for %s", list);
        synchronized (this.f6223c) {
            this.f6224d = true;
        }
    }

    @Override // androidx.work.ListenableWorker
    public a getTaskExecutor() {
        return j.b(getApplicationContext()).f6119d;
    }

    @Override // androidx.work.ListenableWorker
    public boolean isRunInForeground() {
        ListenableWorker listenableWorker = this.f;
        return listenableWorker != null && listenableWorker.isRunInForeground();
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.f;
        if (listenableWorker != null && !listenableWorker.isStopped()) {
            this.f.stop();
        }
    }

    @Override // androidx.work.ListenableWorker
    public com.google.common.util.concurrent.a<ListenableWorker.a> startWork() {
        getBackgroundExecutor().execute(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker.1
            @Override // java.lang.Runnable
            public final void run() {
                final ConstraintTrackingWorker constraintTrackingWorker = ConstraintTrackingWorker.this;
                String a2 = constraintTrackingWorker.getInputData().a("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
                if (TextUtils.isEmpty(a2)) {
                    k.a().a(ConstraintTrackingWorker.f6221a, "No worker to delegate to.", new Throwable[0]);
                    constraintTrackingWorker.a();
                    return;
                }
                constraintTrackingWorker.f = constraintTrackingWorker.getWorkerFactory().a(constraintTrackingWorker.getApplicationContext(), a2, constraintTrackingWorker.f6222b);
                if (constraintTrackingWorker.f == null) {
                    k.a();
                    constraintTrackingWorker.a();
                    return;
                }
                WorkSpec workSpec = j.b(constraintTrackingWorker.getApplicationContext()).f6118c.j().getWorkSpec(constraintTrackingWorker.getId().toString());
                if (workSpec == null) {
                    constraintTrackingWorker.a();
                    return;
                }
                d dVar = new d(constraintTrackingWorker.getApplicationContext(), constraintTrackingWorker.getTaskExecutor(), constraintTrackingWorker);
                dVar.a((Iterable<WorkSpec>) Collections.singletonList(workSpec));
                if (dVar.a(constraintTrackingWorker.getId().toString())) {
                    k.a();
                    String.format("Constraints met for delegate %s", a2);
                    try {
                        final com.google.common.util.concurrent.a<ListenableWorker.a> startWork = constraintTrackingWorker.f.startWork();
                        startWork.a(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                synchronized (ConstraintTrackingWorker.this.f6223c) {
                                    if (ConstraintTrackingWorker.this.f6224d) {
                                        ConstraintTrackingWorker.this.b();
                                    } else {
                                        ConstraintTrackingWorker.this.e.a(startWork);
                                    }
                                }
                            }
                        }, constraintTrackingWorker.getBackgroundExecutor());
                    } catch (Throwable th) {
                        k.a();
                        String.format("Delegated worker %s threw exception in startWork.", a2);
                        synchronized (constraintTrackingWorker.f6223c) {
                            if (constraintTrackingWorker.f6224d) {
                                k.a();
                                constraintTrackingWorker.b();
                            } else {
                                constraintTrackingWorker.a();
                            }
                        }
                    }
                } else {
                    k.a();
                    String.format("Constraints not met for delegate %s. Requesting retry.", a2);
                    constraintTrackingWorker.b();
                }
            }
        });
        return this.e;
    }
}
