package androidx.work.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.AbstractC1290j;
import androidx.work.AbstractC1293l;
import androidx.work.C1126b;
import androidx.work.C1133e;
import androidx.work.C1308s;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.foreground.AbstractC1235a;
import androidx.work.impl.p055b.AbstractC1169b;
import androidx.work.impl.p055b.AbstractC1194q;
import androidx.work.impl.p055b.AbstractC1206t;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.utils.C1275d;
import androidx.work.impl.utils.C1282j;
import androidx.work.impl.utils.C1283k;
import androidx.work.impl.utils.p057a.C1269c;
import androidx.work.impl.utils.p058b.AbstractC1271a;
import com.google.p112a.p113a.p114a.AbstractFutureC2212a;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
/* renamed from: androidx.work.impl.j */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/j.class */
public class RunnableC1250j implements Runnable {

    /* renamed from: a */
    static final String f4205a = AbstractC1293l.m17541a("WorkerWrapper");

    /* renamed from: b */
    Context f4206b;

    /* renamed from: c */
    C1191p f4207c;

    /* renamed from: d */
    ListenableWorker f4208d;

    /* renamed from: e */
    ListenableWorker.AbstractC1119a f4209e = ListenableWorker.AbstractC1119a.m17965c();

    /* renamed from: f */
    C1269c<Boolean> f4210f = C1269c.m17587d();

    /* renamed from: g */
    AbstractFutureC2212a<ListenableWorker.AbstractC1119a> f4211g = null;

    /* renamed from: h */
    private String f4212h;

    /* renamed from: i */
    private List<AbstractC1228d> f4213i;

    /* renamed from: j */
    private WorkerParameters.C1124a f4214j;

    /* renamed from: k */
    private C1126b f4215k;

    /* renamed from: l */
    private AbstractC1271a f4216l;

    /* renamed from: m */
    private AbstractC1235a f4217m;

    /* renamed from: n */
    private WorkDatabase f4218n;

    /* renamed from: o */
    private AbstractC1194q f4219o;

    /* renamed from: p */
    private AbstractC1169b f4220p;

    /* renamed from: q */
    private AbstractC1206t f4221q;

    /* renamed from: r */
    private List<String> f4222r;

    /* renamed from: s */
    private String f4223s;

    /* renamed from: t */
    private volatile boolean f4224t;

    /* renamed from: androidx.work.impl.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/j$a.class */
    public static class C1253a {

        /* renamed from: a */
        Context f4230a;

        /* renamed from: b */
        ListenableWorker f4231b;

        /* renamed from: c */
        AbstractC1235a f4232c;

        /* renamed from: d */
        AbstractC1271a f4233d;

        /* renamed from: e */
        C1126b f4234e;

        /* renamed from: f */
        WorkDatabase f4235f;

        /* renamed from: g */
        String f4236g;

        /* renamed from: h */
        List<AbstractC1228d> f4237h;

        /* renamed from: i */
        WorkerParameters.C1124a f4238i = new WorkerParameters.C1124a();

        public C1253a(Context context, C1126b c1126b, AbstractC1271a abstractC1271a, AbstractC1235a abstractC1235a, WorkDatabase workDatabase, String str) {
            this.f4230a = context.getApplicationContext();
            this.f4233d = abstractC1271a;
            this.f4232c = abstractC1235a;
            this.f4234e = c1126b;
            this.f4235f = workDatabase;
            this.f4236g = str;
        }

        /* renamed from: a */
        public C1253a m17627a(WorkerParameters.C1124a c1124a) {
            if (c1124a != null) {
                this.f4238i = c1124a;
            }
            return this;
        }

        /* renamed from: a */
        public C1253a m17626a(List<AbstractC1228d> list) {
            this.f4237h = list;
            return this;
        }

        /* renamed from: a */
        public RunnableC1250j m17628a() {
            return new RunnableC1250j(this);
        }
    }

    RunnableC1250j(C1253a c1253a) {
        this.f4206b = c1253a.f4230a;
        this.f4216l = c1253a.f4233d;
        this.f4217m = c1253a.f4232c;
        this.f4212h = c1253a.f4236g;
        this.f4213i = c1253a.f4237h;
        this.f4214j = c1253a.f4238i;
        this.f4208d = c1253a.f4231b;
        this.f4215k = c1253a.f4234e;
        this.f4218n = c1253a.f4235f;
        this.f4219o = this.f4218n.mo17885o();
        this.f4220p = this.f4218n.mo17884p();
        this.f4221q = this.f4218n.mo17883q();
    }

    /* renamed from: a */
    private String m17640a(List<String> list) {
        StringBuilder append = new StringBuilder("Work [ id=").append(this.f4212h).append(", tags={ ");
        boolean z = true;
        for (String str : list) {
            if (z) {
                z = false;
            } else {
                append.append(", ");
            }
            append.append(str);
        }
        append.append(" } ]");
        return append.toString();
    }

    /* renamed from: a */
    private void m17642a(ListenableWorker.AbstractC1119a abstractC1119a) {
        if (abstractC1119a instanceof ListenableWorker.AbstractC1119a.C1122c) {
            AbstractC1293l.m17543a().mo17538c(f4205a, String.format("Worker result SUCCESS for %s", this.f4223s), new Throwable[0]);
            if (this.f4207c.m17808a()) {
                m17630j();
            } else {
                m17629k();
            }
        } else if (abstractC1119a instanceof ListenableWorker.AbstractC1119a.C1121b) {
            AbstractC1293l.m17543a().mo17538c(f4205a, String.format("Worker result RETRY for %s", this.f4223s), new Throwable[0]);
            m17631i();
        } else {
            AbstractC1293l.m17543a().mo17538c(f4205a, String.format("Worker result FAILURE for %s", this.f4223s), new Throwable[0]);
            if (this.f4207c.m17808a()) {
                m17630j();
            } else {
                m17636d();
            }
        }
    }

    /* renamed from: a */
    private void m17641a(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.f4219o.mo17787f(str2) != C1308s.EnumC1309a.CANCELLED) {
                this.f4219o.mo17799a(C1308s.EnumC1309a.FAILED, str2);
            }
            linkedList.addAll(this.f4220p.mo17823b(str2));
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private void m17639a(boolean z) {
        boolean z2 = false;
        this.f4218n.m18291g();
        try {
            List<String> mo17802a = this.f4218n.mo17885o().mo17802a();
            if (mo17802a == null || mo17802a.isEmpty()) {
                z2 = true;
            }
            if (z2) {
                C1275d.m17569a(this.f4206b, RescheduleReceiver.class, false);
            }
            if (z) {
                this.f4219o.mo17793b(this.f4212h, -1L);
            }
            if (this.f4207c != null && this.f4208d != null && this.f4208d.m17971i()) {
                this.f4217m.mo17684e(this.f4212h);
            }
            this.f4218n.m18288j();
            this.f4218n.m18290h();
            this.f4210f.mo17589a((C1269c<Boolean>) Boolean.valueOf(z));
        } catch (Throwable th) {
            this.f4218n.m18290h();
            throw th;
        }
    }

    /* renamed from: e */
    private void m17635e() {
        C1133e mo17547a;
        if (m17633g()) {
            return;
        }
        this.f4218n.m18291g();
        try {
            this.f4207c = this.f4219o.mo17794b(this.f4212h);
            if (this.f4207c == null) {
                AbstractC1293l.m17543a().mo17536e(f4205a, String.format("Didn't find WorkSpec for id %s", this.f4212h), new Throwable[0]);
                m17639a(false);
            } else if (this.f4207c.f4014b != C1308s.EnumC1309a.ENQUEUED) {
                m17634f();
                this.f4218n.m18288j();
                AbstractC1293l.m17543a().mo17539b(f4205a, String.format("%s is not in ENQUEUED state. Nothing more to do.", this.f4207c.f4015c), new Throwable[0]);
            } else {
                if (this.f4207c.m17808a() || this.f4207c.m17805b()) {
                    long currentTimeMillis = System.currentTimeMillis();
                    if (!(this.f4207c.f4026n == 0) && currentTimeMillis < this.f4207c.m17804c()) {
                        AbstractC1293l.m17543a().mo17539b(f4205a, String.format("Delaying execution for %s because it is being executed before schedule.", this.f4207c.f4015c), new Throwable[0]);
                        m17639a(true);
                        return;
                    }
                }
                this.f4218n.m18288j();
                this.f4218n.m18290h();
                if (this.f4207c.m17808a()) {
                    mo17547a = this.f4207c.f4017e;
                } else {
                    AbstractC1290j m17545b = this.f4215k.m17954d().m17545b(this.f4207c.f4016d);
                    if (m17545b == null) {
                        AbstractC1293l.m17543a().mo17536e(f4205a, String.format("Could not create Input Merger %s", this.f4207c.f4016d), new Throwable[0]);
                        m17636d();
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.f4207c.f4017e);
                    arrayList.addAll(this.f4219o.mo17786g(this.f4212h));
                    mo17547a = m17545b.mo17547a(arrayList);
                }
                WorkerParameters workerParameters = new WorkerParameters(UUID.fromString(this.f4212h), mo17547a, this.f4222r, this.f4214j, this.f4207c.f4023k, this.f4215k.m17957a(), this.f4216l, this.f4215k.m17955c(), new C1283k(this.f4218n, this.f4216l), new C1282j(this.f4217m, this.f4216l));
                if (this.f4208d == null) {
                    this.f4208d = this.f4215k.m17955c().m17520b(this.f4206b, this.f4207c.f4015c, workerParameters);
                }
                if (this.f4208d == null) {
                    AbstractC1293l.m17543a().mo17536e(f4205a, String.format("Could not create Worker %s", this.f4207c.f4015c), new Throwable[0]);
                    m17636d();
                } else if (this.f4208d.m17973g()) {
                    AbstractC1293l.m17543a().mo17536e(f4205a, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.f4207c.f4015c), new Throwable[0]);
                    m17636d();
                } else {
                    this.f4208d.m17972h();
                    if (!m17632h()) {
                        m17634f();
                    } else if (m17633g()) {
                    } else {
                        final C1269c m17587d = C1269c.m17587d();
                        this.f4216l.mo17578a().execute(new Runnable() { // from class: androidx.work.impl.j.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    AbstractC1293l.m17543a().mo17539b(RunnableC1250j.f4205a, String.format("Starting work for %s", RunnableC1250j.this.f4207c.f4015c), new Throwable[0]);
                                    RunnableC1250j.this.f4211g = RunnableC1250j.this.f4208d.mo17555d();
                                    m17587d.mo17590a((AbstractFutureC2212a) RunnableC1250j.this.f4211g);
                                } catch (Throwable th) {
                                    m17587d.mo17588a(th);
                                }
                            }
                        });
                        final String str = this.f4223s;
                        m17587d.mo14921a(new Runnable() { // from class: androidx.work.impl.j.2
                            @Override // java.lang.Runnable
                            @SuppressLint({"SyntheticAccessor"})
                            public void run() {
                                try {
                                    try {
                                        ListenableWorker.AbstractC1119a abstractC1119a = (ListenableWorker.AbstractC1119a) m17587d.get();
                                        if (abstractC1119a == null) {
                                            AbstractC1293l.m17543a().mo17536e(RunnableC1250j.f4205a, String.format("%s returned a null result. Treating it as a failure.", RunnableC1250j.this.f4207c.f4015c), new Throwable[0]);
                                        } else {
                                            AbstractC1293l.m17543a().mo17539b(RunnableC1250j.f4205a, String.format("%s returned a %s result.", RunnableC1250j.this.f4207c.f4015c, abstractC1119a), new Throwable[0]);
                                            RunnableC1250j.this.f4209e = abstractC1119a;
                                        }
                                        RunnableC1250j.this.m17638b();
                                    } catch (InterruptedException e) {
                                        e = e;
                                        AbstractC1293l.m17543a().mo17536e(RunnableC1250j.f4205a, String.format("%s failed because it threw an exception/error", str), e);
                                        RunnableC1250j.this.m17638b();
                                    } catch (CancellationException e2) {
                                        AbstractC1293l.m17543a().mo17538c(RunnableC1250j.f4205a, String.format("%s was cancelled", str), e2);
                                        RunnableC1250j.this.m17638b();
                                    } catch (ExecutionException e3) {
                                        e = e3;
                                        AbstractC1293l.m17543a().mo17536e(RunnableC1250j.f4205a, String.format("%s failed because it threw an exception/error", str), e);
                                        RunnableC1250j.this.m17638b();
                                    }
                                } catch (Throwable th) {
                                    RunnableC1250j.this.m17638b();
                                    throw th;
                                }
                            }
                        }, this.f4216l.mo17576b());
                    }
                }
            }
        } finally {
            this.f4218n.m18290h();
        }
    }

    /* renamed from: f */
    private void m17634f() {
        C1308s.EnumC1309a mo17787f = this.f4219o.mo17787f(this.f4212h);
        if (mo17787f == C1308s.EnumC1309a.RUNNING) {
            AbstractC1293l.m17543a().mo17539b(f4205a, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.f4212h), new Throwable[0]);
            m17639a(true);
            return;
        }
        AbstractC1293l.m17543a().mo17539b(f4205a, String.format("Status for %s is %s; not doing any work", this.f4212h, mo17787f), new Throwable[0]);
        m17639a(false);
    }

    /* renamed from: g */
    private boolean m17633g() {
        boolean z;
        boolean z2 = false;
        if (this.f4224t) {
            AbstractC1293l.m17543a().mo17539b(f4205a, String.format("Work interrupted for %s", this.f4223s), new Throwable[0]);
            C1308s.EnumC1309a mo17787f = this.f4219o.mo17787f(this.f4212h);
            if (mo17787f == null) {
                m17639a(false);
                z = true;
            } else {
                if (!mo17787f.m17532a()) {
                    z2 = true;
                }
                m17639a(z2);
                z = true;
            }
        } else {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: h */
    private boolean m17632h() {
        boolean z = true;
        this.f4218n.m18291g();
        try {
            if (this.f4219o.mo17787f(this.f4212h) == C1308s.EnumC1309a.ENQUEUED) {
                this.f4219o.mo17799a(C1308s.EnumC1309a.RUNNING, this.f4212h);
                this.f4219o.mo17789d(this.f4212h);
            } else {
                z = false;
            }
            this.f4218n.m18288j();
            this.f4218n.m18290h();
            return z;
        } catch (Throwable th) {
            this.f4218n.m18290h();
            throw th;
        }
    }

    /* renamed from: i */
    private void m17631i() {
        this.f4218n.m18291g();
        try {
            this.f4219o.mo17799a(C1308s.EnumC1309a.ENQUEUED, this.f4212h);
            this.f4219o.mo17797a(this.f4212h, System.currentTimeMillis());
            this.f4219o.mo17793b(this.f4212h, -1L);
            this.f4218n.m18288j();
        } finally {
            this.f4218n.m18290h();
            m17639a(true);
        }
    }

    /* renamed from: j */
    private void m17630j() {
        this.f4218n.m18291g();
        try {
            this.f4219o.mo17797a(this.f4212h, System.currentTimeMillis());
            this.f4219o.mo17799a(C1308s.EnumC1309a.ENQUEUED, this.f4212h);
            this.f4219o.mo17788e(this.f4212h);
            this.f4219o.mo17793b(this.f4212h, -1L);
            this.f4218n.m18288j();
        } finally {
            this.f4218n.m18290h();
            m17639a(false);
        }
    }

    /* renamed from: k */
    private void m17629k() {
        this.f4218n.m18291g();
        try {
            this.f4219o.mo17799a(C1308s.EnumC1309a.SUCCEEDED, this.f4212h);
            this.f4219o.mo17796a(this.f4212h, ((ListenableWorker.AbstractC1119a.C1122c) this.f4209e).m17963d());
            long currentTimeMillis = System.currentTimeMillis();
            for (String str : this.f4220p.mo17823b(this.f4212h)) {
                if (this.f4219o.mo17787f(str) == C1308s.EnumC1309a.BLOCKED && this.f4220p.mo17824a(str)) {
                    AbstractC1293l.m17543a().mo17538c(f4205a, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                    this.f4219o.mo17799a(C1308s.EnumC1309a.ENQUEUED, str);
                    this.f4219o.mo17797a(str, currentTimeMillis);
                }
            }
            this.f4218n.m18288j();
        } finally {
            this.f4218n.m18290h();
            m17639a(false);
        }
    }

    /* renamed from: a */
    public AbstractFutureC2212a<Boolean> m17643a() {
        return this.f4210f;
    }

    /* renamed from: b */
    void m17638b() {
        if (!m17633g()) {
            this.f4218n.m18291g();
            try {
                C1308s.EnumC1309a mo17787f = this.f4219o.mo17787f(this.f4212h);
                this.f4218n.mo17880t().mo17810a(this.f4212h);
                if (mo17787f == null) {
                    m17639a(false);
                } else if (mo17787f == C1308s.EnumC1309a.RUNNING) {
                    m17642a(this.f4209e);
                } else if (!mo17787f.m17532a()) {
                    m17631i();
                }
                this.f4218n.m18288j();
            } finally {
                this.f4218n.m18290h();
            }
        }
        if (this.f4213i != null) {
            for (AbstractC1228d abstractC1228d : this.f4213i) {
                abstractC1228d.mo17704a(this.f4212h);
            }
            C1229e.m17700a(this.f4215k, this.f4218n, this.f4213i);
        }
    }

    /* renamed from: c */
    public void m17637c() {
        boolean z;
        this.f4224t = true;
        m17633g();
        if (this.f4211g != null) {
            z = this.f4211g.isDone();
            this.f4211g.cancel(true);
        } else {
            z = false;
        }
        if (this.f4208d == null || z) {
            AbstractC1293l.m17543a().mo17539b(f4205a, String.format("WorkSpec %s is already done. Not interrupting.", this.f4207c), new Throwable[0]);
        } else {
            this.f4208d.m17974e();
        }
    }

    /* renamed from: d */
    void m17636d() {
        this.f4218n.m18291g();
        try {
            m17641a(this.f4212h);
            this.f4219o.mo17796a(this.f4212h, ((ListenableWorker.AbstractC1119a.C1120a) this.f4209e).m17964d());
            this.f4218n.m18288j();
        } finally {
            this.f4218n.m18290h();
            m17639a(false);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4222r = this.f4221q.mo17782a(this.f4212h);
        this.f4223s = m17640a(this.f4222r);
        m17635e();
    }
}
