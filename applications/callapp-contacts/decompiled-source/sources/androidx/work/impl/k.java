package androidx.work.impl;

import android.content.Context;
import androidx.work.Configuration;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.d;
import androidx.work.i;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.utils.a.c;
import androidx.work.impl.utils.l;
import androidx.work.impl.utils.m;
import androidx.work.t;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/k.class */
public final class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    static final String f6120a = androidx.work.k.a("WorkerWrapper");

    /* renamed from: b  reason: collision with root package name */
    Context f6121b;

    /* renamed from: c  reason: collision with root package name */
    WorkSpec f6122c;

    /* renamed from: d  reason: collision with root package name */
    ListenableWorker f6123d;
    ListenableWorker.a e = new ListenableWorker.a.C0121a();
    c<Boolean> f = c.a();
    com.google.common.util.concurrent.a<ListenableWorker.a> g = null;
    private String h;
    private List<e> i;
    private WorkerParameters.a j;
    private Configuration k;
    private androidx.work.impl.utils.b.a l;
    private androidx.work.impl.foreground.a m;
    private WorkDatabase n;
    private WorkSpecDao o;
    private DependencyDao p;
    private WorkTagDao q;
    private List<String> r;
    private String s;
    private volatile boolean t;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/k$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        Context f6129a;

        /* renamed from: b  reason: collision with root package name */
        ListenableWorker f6130b;

        /* renamed from: c  reason: collision with root package name */
        androidx.work.impl.foreground.a f6131c;

        /* renamed from: d  reason: collision with root package name */
        androidx.work.impl.utils.b.a f6132d;
        Configuration e;
        WorkDatabase f;
        String g;
        List<e> h;
        WorkerParameters.a i = new WorkerParameters.a();

        public a(Context context, Configuration configuration, androidx.work.impl.utils.b.a aVar, androidx.work.impl.foreground.a aVar2, WorkDatabase workDatabase, String str) {
            this.f6129a = context.getApplicationContext();
            this.f6132d = aVar;
            this.f6131c = aVar2;
            this.e = configuration;
            this.f = workDatabase;
            this.g = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(a aVar) {
        this.f6121b = aVar.f6129a;
        this.l = aVar.f6132d;
        this.m = aVar.f6131c;
        this.h = aVar.g;
        this.i = aVar.h;
        this.j = aVar.i;
        this.f6123d = aVar.f6130b;
        this.k = aVar.e;
        WorkDatabase workDatabase = aVar.f;
        this.n = workDatabase;
        this.o = workDatabase.j();
        this.p = this.n.k();
        this.q = this.n.l();
    }

    private void a(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.o.getState(str2) != t.a.CANCELLED) {
                this.o.setState(t.a.FAILED, str2);
            }
            linkedList.addAll(this.p.getDependentWorkIds(str2));
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002f A[Catch: all -> 0x00a5, TRY_ENTER, TryCatch #0 {all -> 0x00a5, blocks: (B:3:0x0007, B:5:0x0018, B:12:0x002f, B:15:0x003d, B:17:0x0067, B:19:0x006d, B:21:0x0076, B:23:0x007d, B:25:0x008b), top: B:31:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d A[Catch: all -> 0x00a5, TRY_ENTER, TryCatch #0 {all -> 0x00a5, blocks: (B:3:0x0007, B:5:0x0018, B:12:0x002f, B:15:0x003d, B:17:0x0067, B:19:0x006d, B:21:0x0076, B:23:0x007d, B:25:0x008b), top: B:31:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(boolean r8) {
        /*
            r7 = this;
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.n
            r0.e()
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.n     // Catch: all -> 0x00a5
            androidx.work.impl.model.WorkSpecDao r0 = r0.j()     // Catch: all -> 0x00a5
            java.util.List r0 = r0.getAllUnfinishedWork()     // Catch: all -> 0x00a5
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0029
            r0 = r9
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00a5
            if (r0 == 0) goto L_0x0024
            goto L_0x0029
        L_0x0024:
            r0 = 0
            r10 = r0
            goto L_0x002b
        L_0x0029:
            r0 = 1
            r10 = r0
        L_0x002b:
            r0 = r10
            if (r0 == 0) goto L_0x0039
            r0 = r7
            android.content.Context r0 = r0.f6121b     // Catch: all -> 0x00a5
            java.lang.Class<androidx.work.impl.background.systemalarm.RescheduleReceiver> r1 = androidx.work.impl.background.systemalarm.RescheduleReceiver.class
            r2 = 0
            androidx.work.impl.utils.d.a(r0, r1, r2)     // Catch: all -> 0x00a5
        L_0x0039:
            r0 = r8
            if (r0 == 0) goto L_0x0066
            r0 = r7
            androidx.work.impl.model.WorkSpecDao r0 = r0.o     // Catch: all -> 0x00a5
            androidx.work.t$a r1 = androidx.work.t.a.ENQUEUED     // Catch: all -> 0x00a5
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x00a5
            r3 = r2
            r4 = 0
            r5 = r7
            java.lang.String r5 = r5.h     // Catch: all -> 0x00a5
            r3[r4] = r5     // Catch: all -> 0x00a5
            int r0 = r0.setState(r1, r2)     // Catch: all -> 0x00a5
            r0 = r7
            androidx.work.impl.model.WorkSpecDao r0 = r0.o     // Catch: all -> 0x00a5
            r1 = r7
            java.lang.String r1 = r1.h     // Catch: all -> 0x00a5
            r2 = -1
            int r0 = r0.markWorkSpecScheduled(r1, r2)     // Catch: all -> 0x00a5
        L_0x0066:
            r0 = r7
            androidx.work.impl.model.WorkSpec r0 = r0.f6122c     // Catch: all -> 0x00a5
            if (r0 == 0) goto L_0x008a
            r0 = r7
            androidx.work.ListenableWorker r0 = r0.f6123d     // Catch: all -> 0x00a5
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x008a
            r0 = r9
            boolean r0 = r0.isRunInForeground()     // Catch: all -> 0x00a5
            if (r0 == 0) goto L_0x008a
            r0 = r7
            androidx.work.impl.foreground.a r0 = r0.m     // Catch: all -> 0x00a5
            r1 = r7
            java.lang.String r1 = r1.h     // Catch: all -> 0x00a5
            r0.d(r1)     // Catch: all -> 0x00a5
        L_0x008a:
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.n     // Catch: all -> 0x00a5
            r0.g()     // Catch: all -> 0x00a5
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.n
            r0.f()
            r0 = r7
            androidx.work.impl.utils.a.c<java.lang.Boolean> r0 = r0.f
            r1 = r8
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            boolean r0 = r0.a(r1)
            return
        L_0x00a5:
            r9 = move-exception
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.n
            r0.f()
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.k.a(boolean):void");
    }

    private void c() {
        t.a state = this.o.getState(this.h);
        if (state == t.a.RUNNING) {
            androidx.work.k.a();
            String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.h);
            a(true);
            return;
        }
        androidx.work.k.a();
        String.format("Status for %s is %s; not doing any work", this.h, state);
        a(false);
    }

    private boolean d() {
        boolean z = false;
        if (!this.t) {
            return false;
        }
        androidx.work.k.a();
        String.format("Work interrupted for %s", this.s);
        t.a state = this.o.getState(this.h);
        if (state != null && !state.isFinished()) {
            z = true;
        }
        a(z);
        return true;
    }

    private boolean e() {
        this.n.e();
        try {
            boolean z = true;
            if (this.o.getState(this.h) == t.a.ENQUEUED) {
                this.o.setState(t.a.RUNNING, this.h);
                this.o.incrementWorkSpecRunAttemptCount(this.h);
            } else {
                z = false;
            }
            this.n.g();
            return z;
        } finally {
            this.n.f();
        }
    }

    private void f() {
        this.n.e();
        try {
            a(this.h);
            this.o.setOutput(this.h, ((ListenableWorker.a.C0121a) this.e).f5955a);
            this.n.g();
        } finally {
            this.n.f();
            a(false);
        }
    }

    private void g() {
        this.n.e();
        try {
            this.o.setState(t.a.ENQUEUED, this.h);
            this.o.setPeriodStartTime(this.h, System.currentTimeMillis());
            this.o.markWorkSpecScheduled(this.h, -1L);
            this.n.g();
        } finally {
            this.n.f();
            a(true);
        }
    }

    private void h() {
        this.n.e();
        try {
            this.o.setPeriodStartTime(this.h, System.currentTimeMillis());
            this.o.setState(t.a.ENQUEUED, this.h);
            this.o.resetWorkSpecRunAttemptCount(this.h);
            this.o.markWorkSpecScheduled(this.h, -1L);
            this.n.g();
        } finally {
            this.n.f();
            a(false);
        }
    }

    final void a() {
        if (!d()) {
            this.n.e();
            try {
                t.a state = this.o.getState(this.h);
                this.n.o().delete(this.h);
                if (state == null) {
                    a(false);
                } else if (state == t.a.RUNNING) {
                    ListenableWorker.a aVar = this.e;
                    if (aVar instanceof ListenableWorker.a.c) {
                        androidx.work.k.a();
                        String.format("Worker result SUCCESS for %s", this.s);
                        if (this.f6122c.isPeriodic()) {
                            h();
                        } else {
                            this.n.e();
                            this.o.setState(t.a.SUCCEEDED, this.h);
                            this.o.setOutput(this.h, ((ListenableWorker.a.c) this.e).f5956a);
                            long currentTimeMillis = System.currentTimeMillis();
                            for (String str : this.p.getDependentWorkIds(this.h)) {
                                if (this.o.getState(str) == t.a.BLOCKED && this.p.hasCompletedAllPrerequisites(str)) {
                                    androidx.work.k.a();
                                    String.format("Setting status to enqueued for %s", str);
                                    this.o.setState(t.a.ENQUEUED, str);
                                    this.o.setPeriodStartTime(str, currentTimeMillis);
                                }
                            }
                            this.n.g();
                            this.n.f();
                            a(false);
                        }
                    } else if (aVar instanceof ListenableWorker.a.b) {
                        androidx.work.k.a();
                        String.format("Worker result RETRY for %s", this.s);
                        g();
                    } else {
                        androidx.work.k.a();
                        String.format("Worker result FAILURE for %s", this.s);
                        if (this.f6122c.isPeriodic()) {
                            h();
                        } else {
                            f();
                        }
                    }
                } else if (!state.isFinished()) {
                    g();
                }
                this.n.g();
            } finally {
                this.n.f();
            }
        }
        List<e> list = this.i;
        if (list != null) {
            for (e eVar : list) {
                eVar.a(this.h);
            }
            f.a(this.k, this.n, this.i);
        }
    }

    public final void b() {
        boolean z;
        this.t = true;
        d();
        com.google.common.util.concurrent.a<ListenableWorker.a> aVar = this.g;
        if (aVar != null) {
            z = aVar.isDone();
            this.g.cancel(true);
        } else {
            z = false;
        }
        ListenableWorker listenableWorker = this.f6123d;
        if (listenableWorker == null || z) {
            String.format("WorkSpec %s is already done. Not interrupting.", this.f6122c);
            androidx.work.k.a();
            return;
        }
        listenableWorker.stop();
    }

    @Override // java.lang.Runnable
    public final void run() {
        d dVar;
        List<String> tagsForWorkSpecId = this.q.getTagsForWorkSpecId(this.h);
        this.r = tagsForWorkSpecId;
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.h);
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
        this.s = sb.toString();
        if (!d()) {
            this.n.e();
            try {
                WorkSpec workSpec = this.o.getWorkSpec(this.h);
                this.f6122c = workSpec;
                if (workSpec == null) {
                    androidx.work.k.a().a(f6120a, String.format("Didn't find WorkSpec for id %s", this.h), new Throwable[0]);
                    a(false);
                    this.n.g();
                } else if (workSpec.state != t.a.ENQUEUED) {
                    c();
                    this.n.g();
                    androidx.work.k.a();
                    String.format("%s is not in ENQUEUED state. Nothing more to do.", this.f6122c.workerClassName);
                } else {
                    if (this.f6122c.isPeriodic() || this.f6122c.isBackedOff()) {
                        long currentTimeMillis = System.currentTimeMillis();
                        if (!(this.f6122c.periodStartTime == 0) && currentTimeMillis < this.f6122c.calculateNextRunTime()) {
                            androidx.work.k.a();
                            String.format("Delaying execution for %s because it is being executed before schedule.", this.f6122c.workerClassName);
                            a(true);
                            this.n.g();
                            return;
                        }
                    }
                    this.n.g();
                    this.n.f();
                    if (this.f6122c.isPeriodic()) {
                        dVar = this.f6122c.input;
                    } else {
                        this.k.getInputMergerFactory();
                        i a2 = i.a(this.f6122c.inputMergerClassName);
                        if (a2 == null) {
                            androidx.work.k.a().a(f6120a, String.format("Could not create Input Merger %s", this.f6122c.inputMergerClassName), new Throwable[0]);
                            f();
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(this.f6122c.input);
                        arrayList.addAll(this.o.getInputsFromPrerequisites(this.h));
                        dVar = a2.a(arrayList);
                    }
                    WorkerParameters workerParameters = new WorkerParameters(UUID.fromString(this.h), dVar, this.r, this.j, this.f6122c.runAttemptCount, this.k.getExecutor(), this.l, this.k.getWorkerFactory(), new m(this.n, this.l), new l(this.n, this.m, this.l));
                    if (this.f6123d == null) {
                        this.f6123d = this.k.getWorkerFactory().a(this.f6121b, this.f6122c.workerClassName, workerParameters);
                    }
                    ListenableWorker listenableWorker = this.f6123d;
                    if (listenableWorker == null) {
                        androidx.work.k.a().a(f6120a, String.format("Could not create Worker %s", this.f6122c.workerClassName), new Throwable[0]);
                        f();
                    } else if (listenableWorker.isUsed()) {
                        androidx.work.k.a().a(f6120a, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.f6122c.workerClassName), new Throwable[0]);
                        f();
                    } else {
                        this.f6123d.setUsed();
                        if (!e()) {
                            c();
                        } else if (!d()) {
                            final c a3 = c.a();
                            this.l.a().execute(new Runnable() { // from class: androidx.work.impl.k.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    try {
                                        androidx.work.k.a();
                                        String str2 = k.f6120a;
                                        String.format("Starting work for %s", k.this.f6122c.workerClassName);
                                        k kVar = k.this;
                                        kVar.g = kVar.f6123d.startWork();
                                        a3.a((com.google.common.util.concurrent.a) k.this.g);
                                    } catch (Throwable th) {
                                        a3.a(th);
                                    }
                                }
                            });
                            final String str2 = this.s;
                            a3.a(new Runnable() { // from class: androidx.work.impl.k.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Throwable e;
                                    try {
                                        try {
                                            ListenableWorker.a aVar = (ListenableWorker.a) a3.get();
                                            if (aVar == null) {
                                                androidx.work.k.a().a(k.f6120a, String.format("%s returned a null result. Treating it as a failure.", k.this.f6122c.workerClassName), new Throwable[0]);
                                            } else {
                                                androidx.work.k.a();
                                                String str3 = k.f6120a;
                                                String.format("%s returned a %s result.", k.this.f6122c.workerClassName, aVar);
                                                k.this.e = aVar;
                                            }
                                        } catch (InterruptedException e2) {
                                            e = e2;
                                            androidx.work.k.a().a(k.f6120a, String.format("%s failed because it threw an exception/error", str2), e);
                                        } catch (CancellationException e3) {
                                            androidx.work.k.a();
                                            String str4 = k.f6120a;
                                            String.format("%s was cancelled", str2);
                                        } catch (ExecutionException e4) {
                                            e = e4;
                                            androidx.work.k.a().a(k.f6120a, String.format("%s failed because it threw an exception/error", str2), e);
                                        }
                                    } finally {
                                        k.this.a();
                                    }
                                }
                            }, this.l.b());
                        }
                    }
                }
            } finally {
                this.n.f();
            }
        }
    }
}
