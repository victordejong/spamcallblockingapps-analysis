package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.AbstractC1293l;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C1249i;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p052a.AbstractC1165c;
import androidx.work.impl.p052a.C1166d;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.utils.p057a.C1269c;
import androidx.work.impl.utils.p058b.AbstractC1271a;
import com.google.p112a.p113a.p114a.AbstractFutureC2212a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/ConstraintTrackingWorker.class */
public class ConstraintTrackingWorker extends ListenableWorker implements AbstractC1165c {

    /* renamed from: d */
    private static final String f4319d = AbstractC1293l.m17541a("ConstraintTrkngWrkr");

    /* renamed from: a */
    final Object f4320a = new Object();

    /* renamed from: b */
    volatile boolean f4321b = false;

    /* renamed from: c */
    C1269c<ListenableWorker.AbstractC1119a> f4322c = C1269c.m17587d();

    /* renamed from: e */
    private WorkerParameters f4323e;

    /* renamed from: f */
    private ListenableWorker f4324f;

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f4323e = workerParameters;
    }

    @Override // androidx.work.impl.p052a.AbstractC1165c
    /* renamed from: a */
    public void mo17557a(List<String> list) {
    }

    @Override // androidx.work.impl.p052a.AbstractC1165c
    /* renamed from: b */
    public void mo17556b(List<String> list) {
        AbstractC1293l.m17543a().mo17539b(f4319d, String.format("Constraints changed for %s", list), new Throwable[0]);
        synchronized (this.f4320a) {
            this.f4321b = true;
        }
    }

    @Override // androidx.work.ListenableWorker
    /* renamed from: d */
    public AbstractFutureC2212a<ListenableWorker.AbstractC1119a> mo17555d() {
        m17970j().execute(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker.1
            @Override // java.lang.Runnable
            public void run() {
                ConstraintTrackingWorker.this.m17552m();
            }
        });
        return this.f4322c;
    }

    @Override // androidx.work.ListenableWorker
    /* renamed from: f */
    public void mo17554f() {
        super.mo17554f();
        if (this.f4324f != null) {
            this.f4324f.m17974e();
        }
    }

    @Override // androidx.work.ListenableWorker
    /* renamed from: k */
    public AbstractC1271a mo17553k() {
        return C1249i.m17656b(m17977a()).m17647g();
    }

    /* renamed from: m */
    void m17552m() {
        String m17921a = m17975c().m17921a("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
        if (TextUtils.isEmpty(m17921a)) {
            AbstractC1293l.m17543a().mo17536e(f4319d, "No worker to delegate to.", new Throwable[0]);
            m17551n();
            return;
        }
        this.f4324f = m17969l().m17520b(m17977a(), m17921a, this.f4323e);
        if (this.f4324f == null) {
            AbstractC1293l.m17543a().mo17539b(f4319d, "No worker to delegate to.", new Throwable[0]);
            m17551n();
            return;
        }
        C1191p mo17794b = m17549p().mo17885o().mo17794b(m17976b().toString());
        if (mo17794b == null) {
            m17551n();
            return;
        }
        C1166d c1166d = new C1166d(m17977a(), mo17553k(), this);
        c1166d.m17830a((Iterable<C1191p>) Collections.singletonList(mo17794b));
        if (!c1166d.m17829a(m17976b().toString())) {
            AbstractC1293l.m17543a().mo17539b(f4319d, String.format("Constraints not met for delegate %s. Requesting retry.", m17921a), new Throwable[0]);
            m17550o();
            return;
        }
        AbstractC1293l.m17543a().mo17539b(f4319d, String.format("Constraints met for delegate %s", m17921a), new Throwable[0]);
        try {
            final AbstractFutureC2212a<ListenableWorker.AbstractC1119a> mo17555d = this.f4324f.mo17555d();
            mo17555d.mo14921a(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker.2
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (ConstraintTrackingWorker.this.f4320a) {
                        if (ConstraintTrackingWorker.this.f4321b) {
                            ConstraintTrackingWorker.this.m17550o();
                        } else {
                            ConstraintTrackingWorker.this.f4322c.mo17590a(mo17555d);
                        }
                    }
                }
            }, m17970j());
        } catch (Throwable th) {
            AbstractC1293l.m17543a().mo17539b(f4319d, String.format("Delegated worker %s threw exception in startWork.", m17921a), th);
            synchronized (this.f4320a) {
                if (this.f4321b) {
                    AbstractC1293l.m17543a().mo17539b(f4319d, "Constraints were unmet, Retrying.", new Throwable[0]);
                    m17550o();
                } else {
                    m17551n();
                }
            }
        }
    }

    /* renamed from: n */
    void m17551n() {
        this.f4322c.mo17589a((C1269c<ListenableWorker.AbstractC1119a>) ListenableWorker.AbstractC1119a.m17965c());
    }

    /* renamed from: o */
    void m17550o() {
        this.f4322c.mo17589a((C1269c<ListenableWorker.AbstractC1119a>) ListenableWorker.AbstractC1119a.m17966b());
    }

    /* renamed from: p */
    public WorkDatabase m17549p() {
        return C1249i.m17656b(m17977a()).m17652c();
    }
}
