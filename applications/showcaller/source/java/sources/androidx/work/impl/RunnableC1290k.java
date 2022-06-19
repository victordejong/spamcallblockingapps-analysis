package androidx.work.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.AbstractC1243h;
import androidx.work.AbstractC1404j;
import androidx.work.C1230a;
import androidx.work.C1238d;
import androidx.work.ListenableWorker;
import androidx.work.WorkInfo$State;
import androidx.work.WorkerParameters;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.foreground.AbstractC1273a;
import androidx.work.impl.p018n.AbstractC1322b;
import androidx.work.impl.p018n.AbstractC1347q;
import androidx.work.impl.p018n.AbstractC1359t;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.utils.C1370d;
import androidx.work.impl.utils.C1391l;
import androidx.work.impl.utils.C1393m;
import androidx.work.impl.utils.RunnableC1388k;
import androidx.work.impl.utils.futures.C1382a;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import com.google.common.util.concurrent.AbstractFutureC8832a;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
/* renamed from: androidx.work.impl.k */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/k.class */
public class RunnableC1290k implements Runnable {

    /* renamed from: d */
    static final String f5456d = AbstractC1404j.m30159f("WorkerWrapper");

    /* renamed from: e */
    Context f5457e;

    /* renamed from: f */
    private String f5458f;

    /* renamed from: g */
    private List<AbstractC1268e> f5459g;

    /* renamed from: h */
    private WorkerParameters.C1229a f5460h;

    /* renamed from: i */
    C1344p f5461i;

    /* renamed from: j */
    ListenableWorker f5462j;

    /* renamed from: k */
    AbstractC1399a f5463k;

    /* renamed from: m */
    private C1230a f5465m;

    /* renamed from: n */
    private AbstractC1273a f5466n;

    /* renamed from: o */
    private WorkDatabase f5467o;

    /* renamed from: p */
    private AbstractC1347q f5468p;

    /* renamed from: q */
    private AbstractC1322b f5469q;

    /* renamed from: r */
    private AbstractC1359t f5470r;

    /* renamed from: s */
    private List<String> f5471s;

    /* renamed from: t */
    private String f5472t;

    /* renamed from: w */
    private volatile boolean f5475w;

    /* renamed from: l */
    ListenableWorker.AbstractC1224a f5464l = ListenableWorker.AbstractC1224a.m30618a();

    /* renamed from: u */
    C1382a<Boolean> f5473u = C1382a.m30184u();

    /* renamed from: v */
    AbstractFutureC8832a<ListenableWorker.AbstractC1224a> f5474v = null;

    /* renamed from: androidx.work.impl.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/k$a.class */
    public class RunnableC1291a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ AbstractFutureC8832a f5476d;

        /* renamed from: e */
        final /* synthetic */ C1382a f5477e;

        RunnableC1291a(AbstractFutureC8832a abstractFutureC8832a, C1382a c1382a) {
            RunnableC1290k.this = r4;
            this.f5476d = abstractFutureC8832a;
            this.f5477e = c1382a;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f5476d.get();
                AbstractC1404j.m30161c().mo30158a(RunnableC1290k.f5456d, String.format("Starting work for %s", RunnableC1290k.this.f5461i.f5580e), new Throwable[0]);
                RunnableC1290k runnableC1290k = RunnableC1290k.this;
                runnableC1290k.f5474v = runnableC1290k.f5462j.startWork();
                this.f5477e.mo30185s(RunnableC1290k.this.f5474v);
            } catch (Throwable th) {
                this.f5477e.mo30186r(th);
            }
        }
    }

    /* renamed from: androidx.work.impl.k$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/k$b.class */
    public class RunnableC1292b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ C1382a f5479d;

        /* renamed from: e */
        final /* synthetic */ String f5480e;

        RunnableC1292b(C1382a c1382a, String str) {
            RunnableC1290k.this = r4;
            this.f5479d = c1382a;
            this.f5480e = str;
        }

        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public void run() {
            Throwable e;
            try {
                try {
                    ListenableWorker.AbstractC1224a abstractC1224a = (ListenableWorker.AbstractC1224a) this.f5479d.get();
                    if (abstractC1224a == null) {
                        AbstractC1404j.m30161c().mo30157b(RunnableC1290k.f5456d, String.format("%s returned a null result. Treating it as a failure.", RunnableC1290k.this.f5461i.f5580e), new Throwable[0]);
                    } else {
                        AbstractC1404j.m30161c().mo30158a(RunnableC1290k.f5456d, String.format("%s returned a %s result.", RunnableC1290k.this.f5461i.f5580e, abstractC1224a), new Throwable[0]);
                        RunnableC1290k.this.f5464l = abstractC1224a;
                    }
                } catch (InterruptedException e2) {
                    e = e2;
                    AbstractC1404j.m30161c().mo30157b(RunnableC1290k.f5456d, String.format("%s failed because it threw an exception/error", this.f5480e), e);
                } catch (CancellationException e3) {
                    AbstractC1404j.m30161c().mo30156d(RunnableC1290k.f5456d, String.format("%s was cancelled", this.f5480e), e3);
                } catch (ExecutionException e4) {
                    e = e4;
                    AbstractC1404j.m30161c().mo30157b(RunnableC1290k.f5456d, String.format("%s failed because it threw an exception/error", this.f5480e), e);
                }
            } finally {
                RunnableC1290k.this.m30373f();
            }
        }
    }

    /* renamed from: androidx.work.impl.k$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/k$c.class */
    public static class C1293c {

        /* renamed from: a */
        Context f5482a;

        /* renamed from: b */
        ListenableWorker f5483b;

        /* renamed from: c */
        AbstractC1273a f5484c;

        /* renamed from: d */
        AbstractC1399a f5485d;

        /* renamed from: e */
        C1230a f5486e;

        /* renamed from: f */
        WorkDatabase f5487f;

        /* renamed from: g */
        String f5488g;

        /* renamed from: h */
        List<AbstractC1268e> f5489h;

        /* renamed from: i */
        WorkerParameters.C1229a f5490i = new WorkerParameters.C1229a();

        public C1293c(Context context, C1230a c1230a, AbstractC1399a abstractC1399a, AbstractC1273a abstractC1273a, WorkDatabase workDatabase, String str) {
            this.f5482a = context.getApplicationContext();
            this.f5485d = abstractC1399a;
            this.f5484c = abstractC1273a;
            this.f5486e = c1230a;
            this.f5487f = workDatabase;
            this.f5488g = str;
        }

        /* renamed from: a */
        public RunnableC1290k m30363a() {
            return new RunnableC1290k(this);
        }

        /* renamed from: b */
        public C1293c m30362b(WorkerParameters.C1229a c1229a) {
            if (c1229a != null) {
                this.f5490i = c1229a;
            }
            return this;
        }

        /* renamed from: c */
        public C1293c m30361c(List<AbstractC1268e> list) {
            this.f5489h = list;
            return this;
        }
    }

    RunnableC1290k(C1293c c1293c) {
        this.f5457e = c1293c.f5482a;
        this.f5463k = c1293c.f5485d;
        this.f5466n = c1293c.f5484c;
        this.f5458f = c1293c.f5488g;
        this.f5459g = c1293c.f5489h;
        this.f5460h = c1293c.f5490i;
        this.f5462j = c1293c.f5483b;
        this.f5465m = c1293c.f5486e;
        WorkDatabase workDatabase = c1293c.f5487f;
        this.f5467o = workDatabase;
        this.f5468p = workDatabase.mo30527B();
        this.f5469q = this.f5467o.mo30512t();
        this.f5470r = this.f5467o.mo30526C();
    }

    /* renamed from: a */
    private String m30378a(List<String> list) {
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.f5458f);
        sb.append(", tags={ ");
        boolean z = true;
        for (String str : list) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(" } ]");
        return sb.toString();
    }

    /* renamed from: c */
    private void m30376c(ListenableWorker.AbstractC1224a abstractC1224a) {
        if (abstractC1224a instanceof ListenableWorker.AbstractC1224a.C1227c) {
            AbstractC1404j.m30161c().mo30156d(f5456d, String.format("Worker result SUCCESS for %s", this.f5472t), new Throwable[0]);
            if (this.f5461i.m30283d()) {
                m30371h();
            } else {
                m30366m();
            }
        } else if (abstractC1224a instanceof ListenableWorker.AbstractC1224a.C1226b) {
            AbstractC1404j.m30161c().mo30156d(f5456d, String.format("Worker result RETRY for %s", this.f5472t), new Throwable[0]);
            m30372g();
        } else {
            AbstractC1404j.m30161c().mo30156d(f5456d, String.format("Worker result FAILURE for %s", this.f5472t), new Throwable[0]);
            if (this.f5461i.m30283d()) {
                m30371h();
            } else {
                m30367l();
            }
        }
    }

    /* renamed from: e */
    private void m30374e(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.f5468p.mo30270m(str2) != WorkInfo$State.CANCELLED) {
                this.f5468p.mo30281b(WorkInfo$State.FAILED, str2);
            }
            linkedList.addAll(this.f5469q.mo30305b(str2));
        }
    }

    /* renamed from: g */
    private void m30372g() {
        this.f5467o.m31293c();
        try {
            this.f5468p.mo30281b(WorkInfo$State.ENQUEUED, this.f5458f);
            this.f5468p.mo30264s(this.f5458f, System.currentTimeMillis());
            this.f5468p.mo30280c(this.f5458f, -1L);
            this.f5467o.m31280r();
        } finally {
            this.f5467o.m31291g();
            m30370i(true);
        }
    }

    /* renamed from: h */
    private void m30371h() {
        this.f5467o.m31293c();
        try {
            this.f5468p.mo30264s(this.f5458f, System.currentTimeMillis());
            this.f5468p.mo30281b(WorkInfo$State.ENQUEUED, this.f5458f);
            this.f5468p.mo30268o(this.f5458f);
            this.f5468p.mo30280c(this.f5458f, -1L);
            this.f5467o.m31280r();
        } finally {
            this.f5467o.m31291g();
            m30370i(false);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: i */
    private void m30370i(boolean z) {
        ListenableWorker listenableWorker;
        this.f5467o.m31293c();
        try {
            if (!this.f5467o.mo30527B().mo30272k()) {
                C1370d.m30215a(this.f5457e, RescheduleReceiver.class, false);
            }
            if (z) {
                this.f5468p.mo30281b(WorkInfo$State.ENQUEUED, this.f5458f);
                this.f5468p.mo30280c(this.f5458f, -1L);
            }
            if (this.f5461i != null && (listenableWorker = this.f5462j) != null && listenableWorker.isRunInForeground()) {
                this.f5466n.mo30431b(this.f5458f);
            }
            this.f5467o.m31280r();
            this.f5467o.m31291g();
            this.f5473u.mo30187q(Boolean.valueOf(z));
        } catch (Throwable th) {
            this.f5467o.m31291g();
            throw th;
        }
    }

    /* renamed from: j */
    private void m30369j() {
        WorkInfo$State mo30270m = this.f5468p.mo30270m(this.f5458f);
        if (mo30270m == WorkInfo$State.RUNNING) {
            AbstractC1404j.m30161c().mo30158a(f5456d, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.f5458f), new Throwable[0]);
            m30370i(true);
            return;
        }
        AbstractC1404j.m30161c().mo30158a(f5456d, String.format("Status for %s is %s; not doing any work", this.f5458f, mo30270m), new Throwable[0]);
        m30370i(false);
    }

    /* renamed from: k */
    private void m30368k() {
        C1238d c1238d;
        if (m30365n()) {
            return;
        }
        this.f5467o.m31293c();
        try {
            C1344p mo30269n = this.f5468p.mo30269n(this.f5458f);
            this.f5461i = mo30269n;
            if (mo30269n == null) {
                AbstractC1404j.m30161c().mo30157b(f5456d, String.format("Didn't find WorkSpec for id %s", this.f5458f), new Throwable[0]);
                m30370i(false);
                this.f5467o.m31280r();
            } else if (mo30269n.f5579d != WorkInfo$State.ENQUEUED) {
                m30369j();
                this.f5467o.m31280r();
                AbstractC1404j.m30161c().mo30158a(f5456d, String.format("%s is not in ENQUEUED state. Nothing more to do.", this.f5461i.f5580e), new Throwable[0]);
            } else {
                if (mo30269n.m30283d() || this.f5461i.m30284c()) {
                    long currentTimeMillis = System.currentTimeMillis();
                    C1344p c1344p = this.f5461i;
                    if (!(c1344p.f5591p == 0) && currentTimeMillis < c1344p.m30286a()) {
                        AbstractC1404j.m30161c().mo30158a(f5456d, String.format("Delaying execution for %s because it is being executed before schedule.", this.f5461i.f5580e), new Throwable[0]);
                        m30370i(true);
                        this.f5467o.m31280r();
                        return;
                    }
                }
                this.f5467o.m31280r();
                this.f5467o.m31291g();
                if (this.f5461i.m30283d()) {
                    c1238d = this.f5461i.f5582g;
                } else {
                    AbstractC1243h m30536b = this.f5465m.m30592f().m30536b(this.f5461i.f5581f);
                    if (m30536b == null) {
                        AbstractC1404j.m30161c().mo30157b(f5456d, String.format("Could not create Input Merger %s", this.f5461i.f5581f), new Throwable[0]);
                        m30367l();
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.f5461i.f5582g);
                    arrayList.addAll(this.f5468p.mo30266q(this.f5458f));
                    c1238d = m30536b.mo30537b(arrayList);
                }
                WorkerParameters workerParameters = new WorkerParameters(UUID.fromString(this.f5458f), c1238d, this.f5471s, this.f5460h, this.f5461i.f5588m, this.f5465m.m30593e(), this.f5463k, this.f5465m.m30585m(), new C1393m(this.f5467o, this.f5463k), new C1391l(this.f5467o, this.f5466n, this.f5463k));
                if (this.f5462j == null) {
                    this.f5462j = this.f5465m.m30585m().m30132b(this.f5457e, this.f5461i.f5580e, workerParameters);
                }
                ListenableWorker listenableWorker = this.f5462j;
                if (listenableWorker == null) {
                    AbstractC1404j.m30161c().mo30157b(f5456d, String.format("Could not create Worker %s", this.f5461i.f5580e), new Throwable[0]);
                    m30367l();
                } else if (listenableWorker.isUsed()) {
                    AbstractC1404j.m30161c().mo30157b(f5456d, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.f5461i.f5580e), new Throwable[0]);
                    m30367l();
                } else {
                    this.f5462j.setUsed();
                    if (!m30364o()) {
                        m30369j();
                    } else if (m30365n()) {
                    } else {
                        C1382a m30184u = C1382a.m30184u();
                        RunnableC1388k runnableC1388k = new RunnableC1388k(this.f5457e, this.f5461i, this.f5462j, workerParameters.m30608b(), this.f5463k);
                        this.f5463k.mo30173a().execute(runnableC1388k);
                        AbstractFutureC8832a<Void> m30179a = runnableC1388k.m30179a();
                        m30179a.mo2574e(new RunnableC1291a(m30179a, m30184u), this.f5463k.mo30173a());
                        m30184u.mo2574e(new RunnableC1292b(m30184u, this.f5472t), this.f5463k.mo30171c());
                    }
                }
            }
        } finally {
            this.f5467o.m31291g();
        }
    }

    /* renamed from: m */
    private void m30366m() {
        this.f5467o.m31293c();
        try {
            this.f5468p.mo30281b(WorkInfo$State.SUCCEEDED, this.f5458f);
            this.f5468p.mo30274i(this.f5458f, ((ListenableWorker.AbstractC1224a.C1227c) this.f5464l).m30613e());
            long currentTimeMillis = System.currentTimeMillis();
            for (String str : this.f5469q.mo30305b(this.f5458f)) {
                if (this.f5468p.mo30270m(str) == WorkInfo$State.BLOCKED && this.f5469q.mo30304c(str)) {
                    AbstractC1404j.m30161c().mo30156d(f5456d, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                    this.f5468p.mo30281b(WorkInfo$State.ENQUEUED, str);
                    this.f5468p.mo30264s(str, currentTimeMillis);
                }
            }
            this.f5467o.m31280r();
        } finally {
            this.f5467o.m31291g();
            m30370i(false);
        }
    }

    /* renamed from: n */
    private boolean m30365n() {
        if (this.f5475w) {
            AbstractC1404j.m30161c().mo30158a(f5456d, String.format("Work interrupted for %s", this.f5472t), new Throwable[0]);
            WorkInfo$State mo30270m = this.f5468p.mo30270m(this.f5458f);
            if (mo30270m == null) {
                m30370i(false);
                return true;
            }
            m30370i(!mo30270m.isFinished());
            return true;
        }
        return false;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: o */
    private boolean m30364o() {
        this.f5467o.m31293c();
        try {
            boolean z = true;
            if (this.f5468p.mo30270m(this.f5458f) == WorkInfo$State.ENQUEUED) {
                this.f5468p.mo30281b(WorkInfo$State.RUNNING, this.f5458f);
                this.f5468p.mo30265r(this.f5458f);
            } else {
                z = false;
            }
            this.f5467o.m31280r();
            this.f5467o.m31291g();
            return z;
        } catch (Throwable th) {
            this.f5467o.m31291g();
            throw th;
        }
    }

    /* renamed from: b */
    public AbstractFutureC8832a<Boolean> m30377b() {
        return this.f5473u;
    }

    /* renamed from: d */
    public void m30375d() {
        boolean z;
        this.f5475w = true;
        m30365n();
        AbstractFutureC8832a<ListenableWorker.AbstractC1224a> abstractFutureC8832a = this.f5474v;
        if (abstractFutureC8832a != null) {
            z = abstractFutureC8832a.isDone();
            this.f5474v.cancel(true);
        } else {
            z = false;
        }
        ListenableWorker listenableWorker = this.f5462j;
        if (listenableWorker == null || z) {
            AbstractC1404j.m30161c().mo30158a(f5456d, String.format("WorkSpec %s is already done. Not interrupting.", this.f5461i), new Throwable[0]);
        } else {
            listenableWorker.stop();
        }
    }

    /* renamed from: f */
    void m30373f() {
        if (!m30365n()) {
            this.f5467o.m31293c();
            try {
                WorkInfo$State mo30270m = this.f5468p.mo30270m(this.f5458f);
                this.f5467o.mo30528A().mo30290a(this.f5458f);
                if (mo30270m == null) {
                    m30370i(false);
                } else if (mo30270m == WorkInfo$State.RUNNING) {
                    m30376c(this.f5464l);
                } else if (!mo30270m.isFinished()) {
                    m30372g();
                }
                this.f5467o.m31280r();
            } finally {
                this.f5467o.m31291g();
            }
        }
        List<AbstractC1268e> list = this.f5459g;
        if (list != null) {
            for (AbstractC1268e abstractC1268e : list) {
                abstractC1268e.mo30355e(this.f5458f);
            }
            C1269f.m30435b(this.f5465m, this.f5467o, this.f5459g);
        }
    }

    /* renamed from: l */
    void m30367l() {
        this.f5467o.m31293c();
        try {
            m30374e(this.f5458f);
            this.f5468p.mo30274i(this.f5458f, ((ListenableWorker.AbstractC1224a.C1225a) this.f5464l).m30614e());
            this.f5467o.m31280r();
        } finally {
            this.f5467o.m31291g();
            m30370i(false);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        List<String> mo30259b = this.f5470r.mo30259b(this.f5458f);
        this.f5471s = mo30259b;
        this.f5472t = m30378a(mo30259b);
        m30368k();
    }
}
