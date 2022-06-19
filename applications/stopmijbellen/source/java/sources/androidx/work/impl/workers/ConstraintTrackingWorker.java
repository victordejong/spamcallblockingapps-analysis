package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.List;
import p003a2.AbstractC0008a;
import p186o1.AbstractC3824h;
import p197p1.C4006j;
import p238t1.AbstractC4354c;
import p238t1.C4355d;
import p282x1.C4832p;
import p282x1.C4835r;
import p302z1.C5035c;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker.class */
public class ConstraintTrackingWorker extends ListenableWorker implements AbstractC4354c {

    /* renamed from: f */
    public static final String f2735f = AbstractC3824h.m1773e("ConstraintTrkngWrkr");

    /* renamed from: a */
    public WorkerParameters f2736a;

    /* renamed from: b */
    public final Object f2737b = new Object();

    /* renamed from: c */
    public volatile boolean f2738c = false;

    /* renamed from: d */
    public C5035c<ListenableWorker.AbstractC0671a> f2739d = new C5035c<>();

    /* renamed from: e */
    public ListenableWorker f2740e;

    /* renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker$a.class */
    public class RunnableC0705a implements Runnable {
        public RunnableC0705a() {
            ConstraintTrackingWorker.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ConstraintTrackingWorker.this.m7447d();
        }
    }

    /* renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker$b.class */
    public class RunnableC0706b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ListenableFuture f2742a;

        public RunnableC0706b(ListenableFuture listenableFuture) {
            ConstraintTrackingWorker.this = r4;
            this.f2742a = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ConstraintTrackingWorker.this.f2737b) {
                if (ConstraintTrackingWorker.this.f2738c) {
                    ConstraintTrackingWorker.this.m7448b();
                } else {
                    ConstraintTrackingWorker.this.f2739d.mo118j(this.f2742a);
                }
            }
        }
    }

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f2736a = workerParameters;
    }

    /* renamed from: a */
    public void m7449a() {
        this.f2739d.m117k(new ListenableWorker.AbstractC0671a.C0672a());
    }

    /* renamed from: b */
    public void m7448b() {
        this.f2739d.m117k(new ListenableWorker.AbstractC0671a.C0673b());
    }

    @Override // p238t1.AbstractC4354c
    /* renamed from: c */
    public void mo1014c(List<String> list) {
        AbstractC3824h.m1774c().mo1772a(f2735f, String.format("Constraints changed for %s", list), new Throwable[0]);
        synchronized (this.f2737b) {
            this.f2738c = true;
        }
    }

    /* renamed from: d */
    public void m7447d() {
        String m7484b = getInputData().m7484b("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
        if (TextUtils.isEmpty(m7484b)) {
            AbstractC3824h.m1774c().mo1771b(f2735f, "No worker to delegate to.", new Throwable[0]);
            m7449a();
            return;
        }
        ListenableWorker m1764a = getWorkerFactory().m1764a(getApplicationContext(), m7484b, this.f2736a);
        this.f2740e = m1764a;
        if (m1764a == null) {
            AbstractC3824h.m1774c().mo1772a(f2735f, "No worker to delegate to.", new Throwable[0]);
            m7449a();
            return;
        }
        C4832p m380i = ((C4835r) C4006j.m1535c(getApplicationContext()).f12584c.mo7475q()).m380i(getId().toString());
        if (m380i == null) {
            m7449a();
            return;
        }
        C4355d c4355d = new C4355d(getApplicationContext(), getTaskExecutor(), this);
        c4355d.m1011b(Collections.singletonList(m380i));
        if (!c4355d.m1012a(getId().toString())) {
            AbstractC3824h.m1774c().mo1772a(f2735f, String.format("Constraints not met for delegate %s. Requesting retry.", m7484b), new Throwable[0]);
            m7448b();
            return;
        }
        AbstractC3824h.m1774c().mo1772a(f2735f, String.format("Constraints met for delegate %s", m7484b), new Throwable[0]);
        try {
            ListenableFuture<ListenableWorker.AbstractC0671a> startWork = this.f2740e.startWork();
            startWork.addListener(new RunnableC0706b(startWork), getBackgroundExecutor());
        } catch (Throwable th) {
            AbstractC3824h m1774c = AbstractC3824h.m1774c();
            String str = f2735f;
            m1774c.mo1772a(str, String.format("Delegated worker %s threw exception in startWork.", m7484b), th);
            synchronized (this.f2737b) {
                if (this.f2738c) {
                    AbstractC3824h.m1774c().mo1772a(str, "Constraints were unmet, Retrying.", new Throwable[0]);
                    m7448b();
                } else {
                    m7449a();
                }
            }
        }
    }

    @Override // p238t1.AbstractC4354c
    /* renamed from: e */
    public void mo1013e(List<String> list) {
    }

    @Override // androidx.work.ListenableWorker
    public AbstractC0008a getTaskExecutor() {
        return C4006j.m1535c(getApplicationContext()).f12585d;
    }

    @Override // androidx.work.ListenableWorker
    public boolean isRunInForeground() {
        ListenableWorker listenableWorker = this.f2740e;
        return listenableWorker != null && listenableWorker.isRunInForeground();
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.f2740e;
        if (listenableWorker == null || listenableWorker.isStopped()) {
            return;
        }
        this.f2740e.stop();
    }

    @Override // androidx.work.ListenableWorker
    public ListenableFuture<ListenableWorker.AbstractC0671a> startWork() {
        getBackgroundExecutor().execute(new RunnableC0705a());
        return this.f2739d;
    }
}
