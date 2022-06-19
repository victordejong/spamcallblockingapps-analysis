package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.AbstractC1404j;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C1289j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p015m.AbstractC1299c;
import androidx.work.impl.p015m.C1300d;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.utils.futures.C1382a;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import com.google.common.util.concurrent.AbstractFutureC8832a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker.class */
public class ConstraintTrackingWorker extends ListenableWorker implements AbstractC1299c {

    /* renamed from: i */
    private static final String f5732i = AbstractC1404j.m30159f("ConstraintTrkngWrkr");

    /* renamed from: j */
    private WorkerParameters f5733j;

    /* renamed from: k */
    final Object f5734k = new Object();

    /* renamed from: l */
    volatile boolean f5735l = false;

    /* renamed from: m */
    C1382a<ListenableWorker.AbstractC1224a> f5736m = C1382a.m30184u();

    /* renamed from: n */
    private ListenableWorker f5737n;

    /* renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker$a.class */
    class RunnableC1402a implements Runnable {
        RunnableC1402a() {
            ConstraintTrackingWorker.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ConstraintTrackingWorker.this.m30165e();
        }
    }

    /* renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker$b.class */
    public class RunnableC1403b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ AbstractFutureC8832a f5739d;

        RunnableC1403b(AbstractFutureC8832a abstractFutureC8832a) {
            ConstraintTrackingWorker.this = r4;
            this.f5739d = abstractFutureC8832a;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ConstraintTrackingWorker.this.f5734k) {
                if (ConstraintTrackingWorker.this.f5735l) {
                    ConstraintTrackingWorker.this.m30166d();
                } else {
                    ConstraintTrackingWorker.this.f5736m.mo30185s(this.f5739d);
                }
            }
        }
    }

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f5733j = workerParameters;
    }

    /* renamed from: a */
    public WorkDatabase m30169a() {
        return C1289j.m30392k(getApplicationContext()).m30388o();
    }

    @Override // androidx.work.impl.p015m.AbstractC1299c
    /* renamed from: b */
    public void mo30168b(List<String> list) {
        AbstractC1404j.m30161c().mo30158a(f5732i, String.format("Constraints changed for %s", list), new Throwable[0]);
        synchronized (this.f5734k) {
            this.f5735l = true;
        }
    }

    /* renamed from: c */
    void m30167c() {
        this.f5736m.mo30187q(ListenableWorker.AbstractC1224a.m30618a());
    }

    /* renamed from: d */
    void m30166d() {
        this.f5736m.mo30187q(ListenableWorker.AbstractC1224a.m30617b());
    }

    /* renamed from: e */
    void m30165e() {
        String m30550i = getInputData().m30550i("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
        if (TextUtils.isEmpty(m30550i)) {
            AbstractC1404j.m30161c().mo30157b(f5732i, "No worker to delegate to.", new Throwable[0]);
            m30167c();
            return;
        }
        ListenableWorker m30132b = getWorkerFactory().m30132b(getApplicationContext(), m30550i, this.f5733j);
        this.f5737n = m30132b;
        if (m30132b == null) {
            AbstractC1404j.m30161c().mo30158a(f5732i, "No worker to delegate to.", new Throwable[0]);
            m30167c();
            return;
        }
        C1344p mo30269n = m30169a().mo30527B().mo30269n(getId().toString());
        if (mo30269n == null) {
            m30167c();
            return;
        }
        C1300d c1300d = new C1300d(getApplicationContext(), getTaskExecutor(), this);
        c1300d.m30346d(Collections.singletonList(mo30269n));
        if (!c1300d.m30347c(getId().toString())) {
            AbstractC1404j.m30161c().mo30158a(f5732i, String.format("Constraints not met for delegate %s. Requesting retry.", m30550i), new Throwable[0]);
            m30166d();
            return;
        }
        AbstractC1404j.m30161c().mo30158a(f5732i, String.format("Constraints met for delegate %s", m30550i), new Throwable[0]);
        try {
            AbstractFutureC8832a<ListenableWorker.AbstractC1224a> startWork = this.f5737n.startWork();
            startWork.mo2574e(new RunnableC1403b(startWork), getBackgroundExecutor());
        } catch (Throwable th) {
            AbstractC1404j m30161c = AbstractC1404j.m30161c();
            String str = f5732i;
            m30161c.mo30158a(str, String.format("Delegated worker %s threw exception in startWork.", m30550i), th);
            synchronized (this.f5734k) {
                if (this.f5735l) {
                    AbstractC1404j.m30161c().mo30158a(str, "Constraints were unmet, Retrying.", new Throwable[0]);
                    m30166d();
                } else {
                    m30167c();
                }
            }
        }
    }

    @Override // androidx.work.impl.p015m.AbstractC1299c
    /* renamed from: f */
    public void mo30164f(List<String> list) {
    }

    @Override // androidx.work.ListenableWorker
    public AbstractC1399a getTaskExecutor() {
        return C1289j.m30392k(getApplicationContext()).m30387p();
    }

    @Override // androidx.work.ListenableWorker
    public boolean isRunInForeground() {
        ListenableWorker listenableWorker = this.f5737n;
        return listenableWorker != null && listenableWorker.isRunInForeground();
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.f5737n;
        if (listenableWorker == null || listenableWorker.isStopped()) {
            return;
        }
        this.f5737n.stop();
    }

    @Override // androidx.work.ListenableWorker
    public AbstractFutureC8832a<ListenableWorker.AbstractC1224a> startWork() {
        getBackgroundExecutor().execute(new RunnableC1402a());
        return this.f5736m;
    }
}
