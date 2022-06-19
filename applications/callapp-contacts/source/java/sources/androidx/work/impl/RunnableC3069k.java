package androidx.work.impl;

import android.content.Context;
import androidx.work.AbstractC2998i;
import androidx.work.AbstractC3145k;
import androidx.work.C2992d;
import androidx.work.C3163t;
import androidx.work.Configuration;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.foreground.AbstractC3053a;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.utils.C3133l;
import androidx.work.impl.utils.C3135m;
import androidx.work.impl.utils.p089a.C3117c;
import androidx.work.impl.utils.p090b.AbstractC3119a;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
/* renamed from: androidx.work.impl.k */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/k.class */
public final class RunnableC3069k implements Runnable {

    /* renamed from: a */
    static final String f11363a = AbstractC3145k.m39275a("WorkerWrapper");

    /* renamed from: b */
    Context f11364b;

    /* renamed from: c */
    WorkSpec f11365c;

    /* renamed from: d */
    ListenableWorker f11366d;

    /* renamed from: e */
    ListenableWorker.AbstractC2980a f11367e = new ListenableWorker.AbstractC2980a.C2981a();

    /* renamed from: f */
    C3117c<Boolean> f11368f = C3117c.m39313a();

    /* renamed from: g */
    AbstractFutureC15579a<ListenableWorker.AbstractC2980a> f11369g = null;

    /* renamed from: h */
    private String f11370h;

    /* renamed from: i */
    private List<AbstractC3048e> f11371i;

    /* renamed from: j */
    private WorkerParameters.C2985a f11372j;

    /* renamed from: k */
    private Configuration f11373k;

    /* renamed from: l */
    private AbstractC3119a f11374l;

    /* renamed from: m */
    private AbstractC3053a f11375m;

    /* renamed from: n */
    private WorkDatabase f11376n;

    /* renamed from: o */
    private WorkSpecDao f11377o;

    /* renamed from: p */
    private DependencyDao f11378p;

    /* renamed from: q */
    private WorkTagDao f11379q;

    /* renamed from: r */
    private List<String> f11380r;

    /* renamed from: s */
    private String f11381s;

    /* renamed from: t */
    private volatile boolean f11382t;

    /* renamed from: androidx.work.impl.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/k$a.class */
    public static final class C3072a {

        /* renamed from: a */
        Context f11388a;

        /* renamed from: b */
        ListenableWorker f11389b;

        /* renamed from: c */
        AbstractC3053a f11390c;

        /* renamed from: d */
        AbstractC3119a f11391d;

        /* renamed from: e */
        Configuration f11392e;

        /* renamed from: f */
        WorkDatabase f11393f;

        /* renamed from: g */
        String f11394g;

        /* renamed from: h */
        List<AbstractC3048e> f11395h;

        /* renamed from: i */
        WorkerParameters.C2985a f11396i = new WorkerParameters.C2985a();

        public C3072a(Context context, Configuration configuration, AbstractC3119a abstractC3119a, AbstractC3053a abstractC3053a, WorkDatabase workDatabase, String str) {
            this.f11388a = context.getApplicationContext();
            this.f11391d = abstractC3119a;
            this.f11390c = abstractC3053a;
            this.f11392e = configuration;
            this.f11393f = workDatabase;
            this.f11394g = str;
        }
    }

    public RunnableC3069k(C3072a c3072a) {
        this.f11364b = c3072a.f11388a;
        this.f11374l = c3072a.f11391d;
        this.f11375m = c3072a.f11390c;
        this.f11370h = c3072a.f11394g;
        this.f11371i = c3072a.f11395h;
        this.f11372j = c3072a.f11396i;
        this.f11366d = c3072a.f11389b;
        this.f11373k = c3072a.f11392e;
        WorkDatabase workDatabase = c3072a.f11393f;
        this.f11376n = workDatabase;
        this.f11377o = workDatabase.mo39474j();
        this.f11378p = this.f11376n.mo39473k();
        this.f11379q = this.f11376n.mo39472l();
    }

    /* renamed from: a */
    private void m39352a(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.f11377o.getState(str2) != C3163t.EnumC3164a.CANCELLED) {
                this.f11377o.setState(C3163t.EnumC3164a.FAILED, str2);
            }
            linkedList.addAll(this.f11378p.getDependentWorkIds(str2));
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002f A[Catch: all -> 0x00a5, TRY_ENTER, TryCatch #0 {all -> 0x00a5, blocks: (B:3:0x0007, B:5:0x0018, B:12:0x002f, B:15:0x003d, B:17:0x0067, B:19:0x006d, B:21:0x0076, B:23:0x007d, B:25:0x008b), top: B:31:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d A[Catch: all -> 0x00a5, TRY_ENTER, TryCatch #0 {all -> 0x00a5, blocks: (B:3:0x0007, B:5:0x0018, B:12:0x002f, B:15:0x003d, B:17:0x0067, B:19:0x006d, B:21:0x0076, B:23:0x007d, B:25:0x008b), top: B:31:0x0007 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m39351a(boolean r8) {
        /*
            r7 = this;
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.f11376n
            r0.m39959e()
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.f11376n     // Catch: java.lang.Throwable -> La5
            androidx.work.impl.model.WorkSpecDao r0 = r0.mo39474j()     // Catch: java.lang.Throwable -> La5
            java.util.List r0 = r0.getAllUnfinishedWork()     // Catch: java.lang.Throwable -> La5
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L29
            r0 = r9
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> La5
            if (r0 == 0) goto L24
            goto L29
        L24:
            r0 = 0
            r10 = r0
            goto L2b
        L29:
            r0 = 1
            r10 = r0
        L2b:
            r0 = r10
            if (r0 == 0) goto L39
            r0 = r7
            android.content.Context r0 = r0.f11364b     // Catch: java.lang.Throwable -> La5
            java.lang.Class<androidx.work.impl.background.systemalarm.RescheduleReceiver> r1 = androidx.work.impl.background.systemalarm.RescheduleReceiver.class
            r2 = 0
            androidx.work.impl.utils.C3123d.m39295a(r0, r1, r2)     // Catch: java.lang.Throwable -> La5
        L39:
            r0 = r8
            if (r0 == 0) goto L66
            r0 = r7
            androidx.work.impl.model.WorkSpecDao r0 = r0.f11377o     // Catch: java.lang.Throwable -> La5
            androidx.work.t$a r1 = androidx.work.C3163t.EnumC3164a.ENQUEUED     // Catch: java.lang.Throwable -> La5
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> La5
            r3 = r2
            r4 = 0
            r5 = r7
            java.lang.String r5 = r5.f11370h     // Catch: java.lang.Throwable -> La5
            r3[r4] = r5     // Catch: java.lang.Throwable -> La5
            int r0 = r0.setState(r1, r2)     // Catch: java.lang.Throwable -> La5
            r0 = r7
            androidx.work.impl.model.WorkSpecDao r0 = r0.f11377o     // Catch: java.lang.Throwable -> La5
            r1 = r7
            java.lang.String r1 = r1.f11370h     // Catch: java.lang.Throwable -> La5
            r2 = -1
            int r0 = r0.markWorkSpecScheduled(r1, r2)     // Catch: java.lang.Throwable -> La5
        L66:
            r0 = r7
            androidx.work.impl.model.WorkSpec r0 = r0.f11365c     // Catch: java.lang.Throwable -> La5
            if (r0 == 0) goto L8a
            r0 = r7
            androidx.work.ListenableWorker r0 = r0.f11366d     // Catch: java.lang.Throwable -> La5
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L8a
            r0 = r9
            boolean r0 = r0.isRunInForeground()     // Catch: java.lang.Throwable -> La5
            if (r0 == 0) goto L8a
            r0 = r7
            androidx.work.impl.foreground.a r0 = r0.f11375m     // Catch: java.lang.Throwable -> La5
            r1 = r7
            java.lang.String r1 = r1.f11370h     // Catch: java.lang.Throwable -> La5
            r0.mo39380d(r1)     // Catch: java.lang.Throwable -> La5
        L8a:
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.f11376n     // Catch: java.lang.Throwable -> La5
            r0.m39957g()     // Catch: java.lang.Throwable -> La5
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.f11376n
            r0.m39958f()
            r0 = r7
            androidx.work.impl.utils.a.c<java.lang.Boolean> r0 = r0.f11368f
            r1 = r8
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            boolean r0 = r0.mo39311a(r1)
            return
        La5:
            r9 = move-exception
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.f11376n
            r0.m39958f()
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.RunnableC3069k.m39351a(boolean):void");
    }

    /* renamed from: c */
    private void m39349c() {
        C3163t.EnumC3164a state = this.f11377o.getState(this.f11370h);
        if (state == C3163t.EnumC3164a.RUNNING) {
            AbstractC3145k.m39277a();
            String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.f11370h);
            m39351a(true);
            return;
        }
        AbstractC3145k.m39277a();
        String.format("Status for %s is %s; not doing any work", this.f11370h, state);
        m39351a(false);
    }

    /* renamed from: d */
    private boolean m39348d() {
        boolean z = false;
        if (this.f11382t) {
            AbstractC3145k.m39277a();
            String.format("Work interrupted for %s", this.f11381s);
            C3163t.EnumC3164a state = this.f11377o.getState(this.f11370h);
            if (state != null && !state.isFinished()) {
                z = true;
            }
            m39351a(z);
            return true;
        }
        return false;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    private boolean m39347e() {
        this.f11376n.m39959e();
        try {
            boolean z = true;
            if (this.f11377o.getState(this.f11370h) == C3163t.EnumC3164a.ENQUEUED) {
                this.f11377o.setState(C3163t.EnumC3164a.RUNNING, this.f11370h);
                this.f11377o.incrementWorkSpecRunAttemptCount(this.f11370h);
            } else {
                z = false;
            }
            this.f11376n.m39957g();
            this.f11376n.m39958f();
            return z;
        } catch (Throwable th) {
            this.f11376n.m39958f();
            throw th;
        }
    }

    /* renamed from: f */
    private void m39346f() {
        this.f11376n.m39959e();
        try {
            m39352a(this.f11370h);
            this.f11377o.setOutput(this.f11370h, ((ListenableWorker.AbstractC2980a.C2981a) this.f11367e).f11113a);
            this.f11376n.m39957g();
        } finally {
            this.f11376n.m39958f();
            m39351a(false);
        }
    }

    /* renamed from: g */
    private void m39345g() {
        this.f11376n.m39959e();
        try {
            this.f11377o.setState(C3163t.EnumC3164a.ENQUEUED, this.f11370h);
            this.f11377o.setPeriodStartTime(this.f11370h, System.currentTimeMillis());
            this.f11377o.markWorkSpecScheduled(this.f11370h, -1L);
            this.f11376n.m39957g();
        } finally {
            this.f11376n.m39958f();
            m39351a(true);
        }
    }

    /* renamed from: h */
    private void m39344h() {
        this.f11376n.m39959e();
        try {
            this.f11377o.setPeriodStartTime(this.f11370h, System.currentTimeMillis());
            this.f11377o.setState(C3163t.EnumC3164a.ENQUEUED, this.f11370h);
            this.f11377o.resetWorkSpecRunAttemptCount(this.f11370h);
            this.f11377o.markWorkSpecScheduled(this.f11370h, -1L);
            this.f11376n.m39957g();
        } finally {
            this.f11376n.m39958f();
            m39351a(false);
        }
    }

    /* renamed from: a */
    final void m39353a() {
        if (!m39348d()) {
            this.f11376n.m39959e();
            try {
                C3163t.EnumC3164a state = this.f11377o.getState(this.f11370h);
                this.f11376n.mo39469o().delete(this.f11370h);
                if (state == null) {
                    m39351a(false);
                } else if (state == C3163t.EnumC3164a.RUNNING) {
                    ListenableWorker.AbstractC2980a abstractC2980a = this.f11367e;
                    if (abstractC2980a instanceof ListenableWorker.AbstractC2980a.C2983c) {
                        AbstractC3145k.m39277a();
                        String.format("Worker result SUCCESS for %s", this.f11381s);
                        if (this.f11365c.isPeriodic()) {
                            m39344h();
                        } else {
                            this.f11376n.m39959e();
                            this.f11377o.setState(C3163t.EnumC3164a.SUCCEEDED, this.f11370h);
                            this.f11377o.setOutput(this.f11370h, ((ListenableWorker.AbstractC2980a.C2983c) this.f11367e).f11114a);
                            long currentTimeMillis = System.currentTimeMillis();
                            for (String str : this.f11378p.getDependentWorkIds(this.f11370h)) {
                                if (this.f11377o.getState(str) == C3163t.EnumC3164a.BLOCKED && this.f11378p.hasCompletedAllPrerequisites(str)) {
                                    AbstractC3145k.m39277a();
                                    String.format("Setting status to enqueued for %s", str);
                                    this.f11377o.setState(C3163t.EnumC3164a.ENQUEUED, str);
                                    this.f11377o.setPeriodStartTime(str, currentTimeMillis);
                                }
                            }
                            this.f11376n.m39957g();
                            this.f11376n.m39958f();
                            m39351a(false);
                        }
                    } else if (abstractC2980a instanceof ListenableWorker.AbstractC2980a.C2982b) {
                        AbstractC3145k.m39277a();
                        String.format("Worker result RETRY for %s", this.f11381s);
                        m39345g();
                    } else {
                        AbstractC3145k.m39277a();
                        String.format("Worker result FAILURE for %s", this.f11381s);
                        if (this.f11365c.isPeriodic()) {
                            m39344h();
                        } else {
                            m39346f();
                        }
                    }
                } else if (!state.isFinished()) {
                    m39345g();
                }
                this.f11376n.m39957g();
            } finally {
                this.f11376n.m39958f();
            }
        }
        List<AbstractC3048e> list = this.f11371i;
        if (list != null) {
            for (AbstractC3048e abstractC3048e : list) {
                abstractC3048e.mo39387a(this.f11370h);
            }
            C3049f.m39383a(this.f11373k, this.f11376n, this.f11371i);
        }
    }

    /* renamed from: b */
    public final void m39350b() {
        boolean z;
        this.f11382t = true;
        m39348d();
        AbstractFutureC15579a<ListenableWorker.AbstractC2980a> abstractFutureC15579a = this.f11369g;
        if (abstractFutureC15579a != null) {
            z = abstractFutureC15579a.isDone();
            this.f11369g.cancel(true);
        } else {
            z = false;
        }
        ListenableWorker listenableWorker = this.f11366d;
        if (listenableWorker != null && !z) {
            listenableWorker.stop();
            return;
        }
        String.format("WorkSpec %s is already done. Not interrupting.", this.f11365c);
        AbstractC3145k.m39277a();
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2992d c2992d;
        List<String> tagsForWorkSpecId = this.f11379q.getTagsForWorkSpecId(this.f11370h);
        this.f11380r = tagsForWorkSpecId;
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.f11370h);
        sb.append(", tags={ ");
        boolean z = true;
        for (String str : tagsForWorkSpecId) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(" } ]");
        this.f11381s = sb.toString();
        if (!m39348d()) {
            this.f11376n.m39959e();
            try {
                WorkSpec workSpec = this.f11377o.getWorkSpec(this.f11370h);
                this.f11365c = workSpec;
                if (workSpec == null) {
                    AbstractC3145k.m39277a().mo39273a(f11363a, String.format("Didn't find WorkSpec for id %s", this.f11370h), new Throwable[0]);
                    m39351a(false);
                    this.f11376n.m39957g();
                } else if (workSpec.state != C3163t.EnumC3164a.ENQUEUED) {
                    m39349c();
                    this.f11376n.m39957g();
                    AbstractC3145k.m39277a();
                    String.format("%s is not in ENQUEUED state. Nothing more to do.", this.f11365c.workerClassName);
                } else {
                    if (this.f11365c.isPeriodic() || this.f11365c.isBackedOff()) {
                        long currentTimeMillis = System.currentTimeMillis();
                        if (!(this.f11365c.periodStartTime == 0) && currentTimeMillis < this.f11365c.calculateNextRunTime()) {
                            AbstractC3145k.m39277a();
                            String.format("Delaying execution for %s because it is being executed before schedule.", this.f11365c.workerClassName);
                            m39351a(true);
                            this.f11376n.m39957g();
                            return;
                        }
                    }
                    this.f11376n.m39957g();
                    this.f11376n.m39958f();
                    if (this.f11365c.isPeriodic()) {
                        c2992d = this.f11365c.input;
                    } else {
                        this.f11373k.getInputMergerFactory();
                        AbstractC2998i m39493a = AbstractC2998i.m39493a(this.f11365c.inputMergerClassName);
                        if (m39493a == null) {
                            AbstractC3145k.m39277a().mo39273a(f11363a, String.format("Could not create Input Merger %s", this.f11365c.inputMergerClassName), new Throwable[0]);
                            m39346f();
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(this.f11365c.input);
                        arrayList.addAll(this.f11377o.getInputsFromPrerequisites(this.f11370h));
                        c2992d = m39493a.mo39492a(arrayList);
                    }
                    WorkerParameters workerParameters = new WorkerParameters(UUID.fromString(this.f11370h), c2992d, this.f11380r, this.f11372j, this.f11365c.runAttemptCount, this.f11373k.getExecutor(), this.f11374l, this.f11373k.getWorkerFactory(), new C3135m(this.f11376n, this.f11374l), new C3133l(this.f11376n, this.f11375m, this.f11374l));
                    if (this.f11366d == null) {
                        this.f11366d = this.f11373k.getWorkerFactory().m39252a(this.f11364b, this.f11365c.workerClassName, workerParameters);
                    }
                    ListenableWorker listenableWorker = this.f11366d;
                    if (listenableWorker == null) {
                        AbstractC3145k.m39277a().mo39273a(f11363a, String.format("Could not create Worker %s", this.f11365c.workerClassName), new Throwable[0]);
                        m39346f();
                    } else if (listenableWorker.isUsed()) {
                        AbstractC3145k.m39277a().mo39273a(f11363a, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.f11365c.workerClassName), new Throwable[0]);
                        m39346f();
                    } else {
                        this.f11366d.setUsed();
                        if (!m39347e()) {
                            m39349c();
                        } else if (!m39348d()) {
                            final C3117c m39313a = C3117c.m39313a();
                            this.f11374l.mo39303a().execute(new Runnable() { // from class: androidx.work.impl.k.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    try {
                                        AbstractC3145k.m39277a();
                                        String str2 = RunnableC3069k.f11363a;
                                        String.format("Starting work for %s", RunnableC3069k.this.f11365c.workerClassName);
                                        RunnableC3069k runnableC3069k = RunnableC3069k.this;
                                        runnableC3069k.f11369g = runnableC3069k.f11366d.startWork();
                                        m39313a.mo39312a((AbstractFutureC15579a) RunnableC3069k.this.f11369g);
                                    } catch (Throwable th) {
                                        m39313a.mo39310a(th);
                                    }
                                }
                            });
                            final String str2 = this.f11381s;
                            m39313a.mo8638a(new Runnable() { // from class: androidx.work.impl.k.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Throwable e;
                                    try {
                                        try {
                                            ListenableWorker.AbstractC2980a abstractC2980a = (ListenableWorker.AbstractC2980a) m39313a.get();
                                            if (abstractC2980a == null) {
                                                AbstractC3145k.m39277a().mo39273a(RunnableC3069k.f11363a, String.format("%s returned a null result. Treating it as a failure.", RunnableC3069k.this.f11365c.workerClassName), new Throwable[0]);
                                            } else {
                                                AbstractC3145k.m39277a();
                                                String str3 = RunnableC3069k.f11363a;
                                                String.format("%s returned a %s result.", RunnableC3069k.this.f11365c.workerClassName, abstractC2980a);
                                                RunnableC3069k.this.f11367e = abstractC2980a;
                                            }
                                        } catch (InterruptedException e2) {
                                            e = e2;
                                            AbstractC3145k.m39277a().mo39273a(RunnableC3069k.f11363a, String.format("%s failed because it threw an exception/error", str2), e);
                                        } catch (CancellationException e3) {
                                            AbstractC3145k.m39277a();
                                            String str4 = RunnableC3069k.f11363a;
                                            String.format("%s was cancelled", str2);
                                        } catch (ExecutionException e4) {
                                            e = e4;
                                            AbstractC3145k.m39277a().mo39273a(RunnableC3069k.f11363a, String.format("%s failed because it threw an exception/error", str2), e);
                                        }
                                    } finally {
                                        RunnableC3069k.this.m39353a();
                                    }
                                }
                            }, this.f11374l.mo39301b());
                        }
                    }
                }
            } finally {
                this.f11376n.m39958f();
            }
        }
    }
}
