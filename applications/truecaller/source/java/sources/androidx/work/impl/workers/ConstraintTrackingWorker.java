package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.List;
import n3.m0.c0.t.w.c;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c;
import p1727n3.p1834m0.p1835c0.p1840q.C26725d;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
import p1727n3.p1834m0.p1835c0.p1848u.RunnableC26824a;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker.class */
public class ConstraintTrackingWorker extends ListenableWorker implements AbstractC26724c {

    /* renamed from: f */
    public static final String f1592f = AbstractC26839p.m1295e("ConstraintTrkngWrkr");

    /* renamed from: a */
    public WorkerParameters f1593a;

    /* renamed from: b */
    public final Object f1594b = new Object();

    /* renamed from: c */
    public volatile boolean f1595c = false;

    /* renamed from: d */
    public c<ListenableWorker.AbstractC0414a> f1596d = new c<>();

    /* renamed from: e */
    public ListenableWorker f1597e;

    /* renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker$a.class */
    public class RunnableC0422a implements Runnable {
        public RunnableC0422a() {
            ConstraintTrackingWorker.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ConstraintTrackingWorker constraintTrackingWorker = ConstraintTrackingWorker.this;
            String m1301f = constraintTrackingWorker.getInputData().m1301f("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
            if (TextUtils.isEmpty(m1301f)) {
                AbstractC26839p.m1296c().mo1293b(ConstraintTrackingWorker.f1592f, "No worker to delegate to.", new Throwable[0]);
                constraintTrackingWorker.m42599n();
                return;
            }
            ListenableWorker m1451b = constraintTrackingWorker.getWorkerFactory().m1451b(constraintTrackingWorker.getApplicationContext(), m1301f, constraintTrackingWorker.f1593a);
            constraintTrackingWorker.f1597e = m1451b;
            if (m1451b == null) {
                AbstractC26839p.m1296c().mo1294a(ConstraintTrackingWorker.f1592f, "No worker to delegate to.", new Throwable[0]);
                constraintTrackingWorker.m42599n();
                return;
            }
            C26760p m1346k = ((C26767t) C26702l.m1431n(constraintTrackingWorker.getApplicationContext()).f74725c.m42606f()).m1346k(constraintTrackingWorker.getId().toString());
            if (m1346k == null) {
                constraintTrackingWorker.m42599n();
                return;
            }
            C26725d c26725d = new C26725d(constraintTrackingWorker.getApplicationContext(), constraintTrackingWorker.getTaskExecutor(), constraintTrackingWorker);
            c26725d.m1394b(Collections.singletonList(m1346k));
            if (!c26725d.m1395a(constraintTrackingWorker.getId().toString())) {
                AbstractC26839p.m1296c().mo1294a(ConstraintTrackingWorker.f1592f, String.format("Constraints not met for delegate %s. Requesting retry.", m1301f), new Throwable[0]);
                constraintTrackingWorker.m42598o();
                return;
            }
            AbstractC26839p.m1296c().mo1294a(ConstraintTrackingWorker.f1592f, String.format("Constraints met for delegate %s", m1301f), new Throwable[0]);
            try {
                ListenableFuture<ListenableWorker.AbstractC0414a> startWork = constraintTrackingWorker.f1597e.startWork();
                startWork.addListener(new RunnableC26824a(constraintTrackingWorker, startWork), constraintTrackingWorker.getBackgroundExecutor());
            } catch (Throwable th) {
                AbstractC26839p m1296c = AbstractC26839p.m1296c();
                String str = ConstraintTrackingWorker.f1592f;
                m1296c.mo1294a(str, String.format("Delegated worker %s threw exception in startWork.", m1301f), th);
                synchronized (constraintTrackingWorker.f1594b) {
                    if (constraintTrackingWorker.f1595c) {
                        AbstractC26839p.m1296c().mo1294a(str, "Constraints were unmet, Retrying.", new Throwable[0]);
                        constraintTrackingWorker.m42598o();
                    } else {
                        constraintTrackingWorker.m42599n();
                    }
                }
            }
        }
    }

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f1593a = workerParameters;
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c
    /* renamed from: c */
    public void mo1375c(List<String> list) {
        AbstractC26839p.m1296c().mo1294a(f1592f, String.format("Constraints changed for %s", list), new Throwable[0]);
        synchronized (this.f1594b) {
            this.f1595c = true;
        }
    }

    @Override // androidx.work.ListenableWorker
    public AbstractC26821a getTaskExecutor() {
        return C26702l.m1431n(getApplicationContext()).f74726d;
    }

    @Override // androidx.work.ListenableWorker
    public boolean isRunInForeground() {
        ListenableWorker listenableWorker = this.f1597e;
        return listenableWorker != null && listenableWorker.isRunInForeground();
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c
    /* renamed from: m */
    public void mo1371m(List<String> list) {
    }

    /* renamed from: n */
    public void m42599n() {
        this.f1596d.i(new ListenableWorker.AbstractC0414a.C0415a());
    }

    /* renamed from: o */
    public void m42598o() {
        this.f1596d.i(new ListenableWorker.AbstractC0414a.C0416b());
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.f1597e;
        if (listenableWorker == null || listenableWorker.isStopped()) {
            return;
        }
        this.f1597e.stop();
    }

    @Override // androidx.work.ListenableWorker
    public ListenableFuture<ListenableWorker.AbstractC0414a> startWork() {
        getBackgroundExecutor().execute(new RunnableC0422a());
        return this.f1596d;
    }
}
