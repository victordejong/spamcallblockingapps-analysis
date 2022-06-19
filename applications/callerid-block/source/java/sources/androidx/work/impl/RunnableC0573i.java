package androidx.work.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.AbstractC0554e;
import androidx.work.AbstractC0555f;
import androidx.work.C0545a;
import androidx.work.C0552d;
import androidx.work.ListenableWorker;
import androidx.work.WorkInfo$State;
import androidx.work.WorkerParameters;
import androidx.work.impl.p009l.AbstractC0584b;
import androidx.work.impl.p009l.AbstractC0591k;
import androidx.work.impl.p009l.AbstractC0593n;
import androidx.work.impl.p009l.C0589j;
import androidx.work.impl.utils.futures.a;
import androidx.work.impl.utils.p010j.AbstractC0607a;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
/* renamed from: androidx.work.impl.i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/i.class */
public class RunnableC0573i implements Runnable {

    /* renamed from: t */
    static final String f3027t = AbstractC0555f.m11738f("WorkerWrapper");

    /* renamed from: b */
    private Context f3028b;

    /* renamed from: c */
    private String f3029c;

    /* renamed from: d */
    private List<AbstractC0570d> f3030d;

    /* renamed from: e */
    private WorkerParameters.C0544a f3031e;

    /* renamed from: f */
    C0589j f3032f;

    /* renamed from: g */
    ListenableWorker f3033g;

    /* renamed from: i */
    private C0545a f3035i;

    /* renamed from: j */
    private AbstractC0607a f3036j;

    /* renamed from: k */
    private WorkDatabase f3037k;

    /* renamed from: l */
    private AbstractC0591k f3038l;

    /* renamed from: m */
    private AbstractC0584b f3039m;

    /* renamed from: n */
    private AbstractC0593n f3040n;

    /* renamed from: o */
    private List<String> f3041o;

    /* renamed from: p */
    private String f3042p;

    /* renamed from: s */
    private volatile boolean f3045s;

    /* renamed from: h */
    ListenableWorker.AbstractC0543a f3034h = ListenableWorker.AbstractC0543a.m11809a();

    /* renamed from: q */
    private a<Boolean> f3043q = a.u();

    /* renamed from: r */
    e.c.b.a.a.a<ListenableWorker.AbstractC0543a> f3044r = null;

    /* renamed from: androidx.work.impl.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/i$a.class */
    public class RunnableC0574a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ a f3046b;

        RunnableC0574a(a aVar) {
            RunnableC0573i.this = r4;
            this.f3046b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                AbstractC0555f.m11741c().m11743a(RunnableC0573i.f3027t, String.format("Starting work for %s", RunnableC0573i.this.f3032f.f3087c), new Throwable[0]);
                RunnableC0573i runnableC0573i = RunnableC0573i.this;
                runnableC0573i.f3044r = runnableC0573i.f3033g.startWork();
                this.f3046b.s(RunnableC0573i.this.f3044r);
            } catch (Throwable th) {
                this.f3046b.r(th);
            }
        }
    }

    /* renamed from: androidx.work.impl.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/i$b.class */
    public class RunnableC0575b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ a f3048b;

        /* renamed from: c */
        final /* synthetic */ String f3049c;

        RunnableC0575b(a aVar, String str) {
            RunnableC0573i.this = r4;
            this.f3048b = aVar;
            this.f3049c = str;
        }

        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public void run() {
            Throwable e;
            try {
                try {
                    ListenableWorker.AbstractC0543a abstractC0543a = (ListenableWorker.AbstractC0543a) this.f3048b.get();
                    if (abstractC0543a == null) {
                        AbstractC0555f.m11741c().m11742b(RunnableC0573i.f3027t, String.format("%s returned a null result. Treating it as a failure.", RunnableC0573i.this.f3032f.f3087c), new Throwable[0]);
                    } else {
                        AbstractC0555f.m11741c().m11743a(RunnableC0573i.f3027t, String.format("%s returned a %s result.", RunnableC0573i.this.f3032f.f3087c, abstractC0543a), new Throwable[0]);
                        RunnableC0573i.this.f3034h = abstractC0543a;
                    }
                } catch (InterruptedException e2) {
                    e = e2;
                    AbstractC0555f.m11741c().m11742b(RunnableC0573i.f3027t, String.format("%s failed because it threw an exception/error", this.f3049c), e);
                } catch (CancellationException e3) {
                    AbstractC0555f.m11741c().m11740d(RunnableC0573i.f3027t, String.format("%s was cancelled", this.f3049c), e3);
                } catch (ExecutionException e4) {
                    e = e4;
                    AbstractC0555f.m11741c().m11742b(RunnableC0573i.f3027t, String.format("%s failed because it threw an exception/error", this.f3049c), e);
                }
            } finally {
                RunnableC0573i.this.m11709f();
            }
        }
    }

    /* renamed from: androidx.work.impl.i$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/i$c.class */
    public static class C0576c {

        /* renamed from: a */
        Context f3051a;

        /* renamed from: b */
        ListenableWorker f3052b;

        /* renamed from: c */
        AbstractC0607a f3053c;

        /* renamed from: d */
        C0545a f3054d;

        /* renamed from: e */
        WorkDatabase f3055e;

        /* renamed from: f */
        String f3056f;

        /* renamed from: g */
        List<AbstractC0570d> f3057g;

        /* renamed from: h */
        WorkerParameters.C0544a f3058h = new WorkerParameters.C0544a();

        public C0576c(Context context, C0545a c0545a, AbstractC0607a abstractC0607a, WorkDatabase workDatabase, String str) {
            this.f3051a = context.getApplicationContext();
            this.f3053c = abstractC0607a;
            this.f3054d = c0545a;
            this.f3055e = workDatabase;
            this.f3056f = str;
        }

        /* renamed from: a */
        public RunnableC0573i m11699a() {
            return new RunnableC0573i(this);
        }

        /* renamed from: b */
        public C0576c m11698b(WorkerParameters.C0544a c0544a) {
            if (c0544a != null) {
                this.f3058h = c0544a;
            }
            return this;
        }

        /* renamed from: c */
        public C0576c m11697c(List<AbstractC0570d> list) {
            this.f3057g = list;
            return this;
        }
    }

    RunnableC0573i(C0576c c0576c) {
        this.f3028b = c0576c.f3051a;
        this.f3036j = c0576c.f3053c;
        this.f3029c = c0576c.f3056f;
        this.f3030d = c0576c.f3057g;
        this.f3031e = c0576c.f3058h;
        this.f3033g = c0576c.f3052b;
        this.f3035i = c0576c.f3054d;
        WorkDatabase workDatabase = c0576c.f3055e;
        this.f3037k = workDatabase;
        this.f3038l = workDatabase.y();
        this.f3039m = this.f3037k.s();
        this.f3040n = this.f3037k.z();
    }

    /* renamed from: a */
    private String m11714a(List<String> list) {
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.f3029c);
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
    private void m11712c(ListenableWorker.AbstractC0543a abstractC0543a) {
        if (abstractC0543a instanceof ListenableWorker.AbstractC0543a.c) {
            AbstractC0555f.m11741c().m11740d(f3027t, String.format("Worker result SUCCESS for %s", this.f3042p), new Throwable[0]);
            if (!this.f3032f.m11665d()) {
                m11702m();
                return;
            }
        } else if (abstractC0543a instanceof ListenableWorker.AbstractC0543a.b) {
            AbstractC0555f.m11741c().m11740d(f3027t, String.format("Worker result RETRY for %s", this.f3042p), new Throwable[0]);
            m11708g();
            return;
        } else {
            AbstractC0555f.m11741c().m11740d(f3027t, String.format("Worker result FAILURE for %s", this.f3042p), new Throwable[0]);
            if (!this.f3032f.m11665d()) {
                m11703l();
                return;
            }
        }
        m11707h();
    }

    /* renamed from: e */
    private void m11710e(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.f3038l.m11658g(str2) != WorkInfo$State.CANCELLED) {
                this.f3038l.m11664a(WorkInfo$State.FAILED, str2);
            }
            linkedList.addAll(this.f3039m.m11673d(str2));
        }
    }

    /* renamed from: g */
    private void m11708g() {
        this.f3037k.m12319c();
        try {
            this.f3038l.m11664a(WorkInfo$State.ENQUEUED, this.f3029c);
            this.f3038l.m11649p(this.f3029c, System.currentTimeMillis());
            this.f3038l.m11661d(this.f3029c, -1L);
            this.f3037k.m12305q();
        } finally {
            this.f3037k.m12315g();
            m11706i(true);
        }
    }

    /* renamed from: h */
    private void m11707h() {
        this.f3037k.m12319c();
        try {
            this.f3038l.m11649p(this.f3029c, System.currentTimeMillis());
            this.f3038l.m11664a(WorkInfo$State.ENQUEUED, this.f3029c);
            this.f3038l.m11655j(this.f3029c);
            this.f3038l.m11661d(this.f3029c, -1L);
            this.f3037k.m12305q();
        } finally {
            this.f3037k.m12315g();
            m11706i(false);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002f A[Catch: all -> 0x0055, TRY_ENTER, TryCatch #0 {all -> 0x0055, blocks: (B:3:0x0007, B:5:0x0018, B:12:0x002f, B:14:0x003b), top: B:20:0x0007 }] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m11706i(boolean r5) {
        /*
            r4 = this;
            r0 = r4
            androidx.work.impl.WorkDatabase r0 = r0.f3037k
            r0.m12319c()
            r0 = r4
            androidx.work.impl.WorkDatabase r0 = r0.f3037k     // Catch: java.lang.Throwable -> L55
            androidx.work.impl.l.k r0 = r0.y()     // Catch: java.lang.Throwable -> L55
            java.util.List r0 = r0.m11662c()     // Catch: java.lang.Throwable -> L55
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L29
            r0 = r6
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L55
            if (r0 == 0) goto L24
            goto L29
        L24:
            r0 = 0
            r7 = r0
            goto L2b
        L29:
            r0 = 1
            r7 = r0
        L2b:
            r0 = r7
            if (r0 == 0) goto L3a
            r0 = r4
            android.content.Context r0 = r0.f3028b     // Catch: java.lang.Throwable -> L55
            java.lang.Class<androidx.work.impl.background.systemalarm.RescheduleReceiver> r1 = androidx.work.impl.background.systemalarm.RescheduleReceiver.class
            r2 = 0
            androidx.work.impl.utils.C0599d.m11609a(r0, r1, r2)     // Catch: java.lang.Throwable -> L55
        L3a:
            r0 = r4
            androidx.work.impl.WorkDatabase r0 = r0.f3037k     // Catch: java.lang.Throwable -> L55
            r0.m12305q()     // Catch: java.lang.Throwable -> L55
            r0 = r4
            androidx.work.impl.WorkDatabase r0 = r0.f3037k
            r0.m12315g()
            r0 = r4
            androidx.work.impl.utils.futures.a<java.lang.Boolean> r0 = r0.f3043q
            r1 = r5
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            boolean r0 = r0.q(r1)
            return
        L55:
            r6 = move-exception
            r0 = r4
            androidx.work.impl.WorkDatabase r0 = r0.f3037k
            r0.m12315g()
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.RunnableC0573i.m11706i(boolean):void");
    }

    /* renamed from: j */
    private void m11705j() {
        WorkInfo$State m11658g = this.f3038l.m11658g(this.f3029c);
        if (m11658g == WorkInfo$State.RUNNING) {
            AbstractC0555f.m11741c().m11743a(f3027t, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.f3029c), new Throwable[0]);
            m11706i(true);
            return;
        }
        AbstractC0555f.m11741c().m11743a(f3027t, String.format("Status for %s is %s; not doing any work", this.f3029c, m11658g), new Throwable[0]);
        m11706i(false);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: k */
    private void m11704k() {
        C0552d c0552d;
        if (m11701n()) {
            return;
        }
        this.f3037k.m12319c();
        try {
            C0589j m11656i = this.f3038l.m11656i(this.f3029c);
            this.f3032f = m11656i;
            if (m11656i == null) {
                AbstractC0555f.m11741c().m11742b(f3027t, String.format("Didn't find WorkSpec for id %s", this.f3029c), new Throwable[0]);
                m11706i(false);
                this.f3037k.m12315g();
            } else if (m11656i.f3086b != WorkInfo$State.ENQUEUED) {
                m11705j();
                this.f3037k.m12305q();
                AbstractC0555f.m11741c().m11743a(f3027t, String.format("%s is not in ENQUEUED state. Nothing more to do.", this.f3032f.f3087c), new Throwable[0]);
                this.f3037k.m12315g();
            } else {
                if (m11656i.m11665d() || this.f3032f.m11666c()) {
                    long currentTimeMillis = System.currentTimeMillis();
                    C0589j c0589j = this.f3032f;
                    if (!(c0589j.f3098n == 0) && currentTimeMillis < c0589j.m11668a()) {
                        AbstractC0555f.m11741c().m11743a(f3027t, String.format("Delaying execution for %s because it is being executed before schedule.", this.f3032f.f3087c), new Throwable[0]);
                        m11706i(true);
                        this.f3037k.m12315g();
                        return;
                    }
                }
                this.f3037k.m12305q();
                this.f3037k.m12315g();
                if (this.f3032f.m11665d()) {
                    c0552d = this.f3032f.f3089e;
                } else {
                    AbstractC0554e m11745a = AbstractC0554e.m11745a(this.f3032f.f3088d);
                    if (m11745a == null) {
                        AbstractC0555f.m11741c().m11742b(f3027t, String.format("Could not create Input Merger %s", this.f3032f.f3088d), new Throwable[0]);
                        m11703l();
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.f3032f.f3089e);
                    arrayList.addAll(this.f3038l.m11651n(this.f3029c));
                    c0552d = m11745a.m11744b(arrayList);
                }
                WorkerParameters workerParameters = new WorkerParameters(UUID.fromString(this.f3029c), c0552d, this.f3041o, this.f3031e, this.f3032f.f3095k, this.f3035i.m11794b(), this.f3036j, this.f3035i.m11788h());
                if (this.f3033g == null) {
                    this.f3033g = this.f3035i.m11788h().m11577b(this.f3028b, this.f3032f.f3087c, workerParameters);
                }
                ListenableWorker listenableWorker = this.f3033g;
                if (listenableWorker == null) {
                    AbstractC0555f.m11741c().m11742b(f3027t, String.format("Could not create Worker %s", this.f3032f.f3087c), new Throwable[0]);
                    m11703l();
                } else if (listenableWorker.isUsed()) {
                    AbstractC0555f.m11741c().m11742b(f3027t, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.f3032f.f3087c), new Throwable[0]);
                    m11703l();
                } else {
                    this.f3033g.setUsed();
                    if (!m11700o()) {
                        m11705j();
                    } else if (m11701n()) {
                    } else {
                        a u = a.u();
                        this.f3036j.m11595a().execute(new RunnableC0574a(u));
                        u.h(new RunnableC0575b(u, this.f3042p), this.f3036j.m11593c());
                    }
                }
            }
        } catch (Throwable th) {
            this.f3037k.m12315g();
            throw th;
        }
    }

    /* renamed from: m */
    private void m11702m() {
        this.f3037k.m12319c();
        try {
            this.f3038l.m11664a(WorkInfo$State.SUCCEEDED, this.f3029c);
            this.f3038l.m11647r(this.f3029c, this.f3034h.e());
            long currentTimeMillis = System.currentTimeMillis();
            for (String str : this.f3039m.m11673d(this.f3029c)) {
                if (this.f3038l.m11658g(str) == WorkInfo$State.BLOCKED && this.f3039m.m11675b(str)) {
                    AbstractC0555f.m11741c().m11740d(f3027t, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                    this.f3038l.m11664a(WorkInfo$State.ENQUEUED, str);
                    this.f3038l.m11649p(str, currentTimeMillis);
                }
            }
            this.f3037k.m12305q();
            this.f3037k.m12315g();
            m11706i(false);
        } catch (Throwable th) {
            this.f3037k.m12315g();
            m11706i(false);
            throw th;
        }
    }

    /* renamed from: n */
    private boolean m11701n() {
        if (this.f3045s) {
            AbstractC0555f.m11741c().m11743a(f3027t, String.format("Work interrupted for %s", this.f3042p), new Throwable[0]);
            WorkInfo$State m11658g = this.f3038l.m11658g(this.f3029c);
            if (m11658g == null) {
                m11706i(false);
                return true;
            }
            m11706i(!m11658g.isFinished());
            return true;
        }
        return false;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: o */
    private boolean m11700o() {
        this.f3037k.m12319c();
        try {
            boolean z = true;
            if (this.f3038l.m11658g(this.f3029c) == WorkInfo$State.ENQUEUED) {
                this.f3038l.m11664a(WorkInfo$State.RUNNING, this.f3029c);
                this.f3038l.m11650o(this.f3029c);
            } else {
                z = false;
            }
            this.f3037k.m12305q();
            this.f3037k.m12315g();
            return z;
        } catch (Throwable th) {
            this.f3037k.m12315g();
            throw th;
        }
    }

    /* renamed from: b */
    public e.c.b.a.a.a<Boolean> m11713b() {
        return this.f3043q;
    }

    /* renamed from: d */
    public void m11711d(boolean z) {
        this.f3045s = true;
        m11701n();
        e.c.b.a.a.a<ListenableWorker.AbstractC0543a> aVar = this.f3044r;
        if (aVar != null) {
            aVar.cancel(true);
        }
        ListenableWorker listenableWorker = this.f3033g;
        if (listenableWorker != null) {
            listenableWorker.stop();
        }
    }

    /* renamed from: f */
    void m11709f() {
        boolean z = false;
        if (!m11701n()) {
            this.f3037k.m12319c();
            try {
                WorkInfo$State m11658g = this.f3038l.m11658g(this.f3029c);
                if (m11658g == null) {
                    m11706i(false);
                    z = true;
                } else if (m11658g == WorkInfo$State.RUNNING) {
                    m11712c(this.f3034h);
                    z = this.f3038l.m11658g(this.f3029c).isFinished();
                } else {
                    z = false;
                    if (!m11658g.isFinished()) {
                        m11708g();
                        z = false;
                    }
                }
                this.f3037k.m12305q();
            } finally {
                this.f3037k.m12315g();
            }
        }
        List<AbstractC0570d> list = this.f3030d;
        if (list != null) {
            if (z) {
                for (AbstractC0570d abstractC0570d : list) {
                    abstractC0570d.m11719b(this.f3029c);
                }
            }
            C0571e.m11716b(this.f3035i, this.f3037k, this.f3030d);
        }
    }

    /* renamed from: l */
    void m11703l() {
        this.f3037k.m12319c();
        try {
            m11710e(this.f3029c);
            this.f3038l.m11647r(this.f3029c, this.f3034h.e());
            this.f3037k.m12305q();
        } finally {
            this.f3037k.m12315g();
            m11706i(false);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        List<String> m11644b = this.f3040n.m11644b(this.f3029c);
        this.f3041o = m11644b;
        this.f3042p = m11714a(m11644b);
        m11704k();
    }
}
