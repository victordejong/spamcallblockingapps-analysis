package p197p1;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import androidx.work.C0677a;
import androidx.work.C0680b;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import p003a2.AbstractC0008a;
import p067d1.C2158h;
import p088f1.C2709b;
import p186o1.AbstractC3824h;
import p186o1.EnumC3836m;
import p271w1.AbstractC4729a;
import p282x1.AbstractC4810b;
import p282x1.AbstractC4834q;
import p282x1.AbstractC4845t;
import p282x1.C4811c;
import p282x1.C4828o;
import p282x1.C4832p;
import p282x1.C4835r;
import p282x1.C4846u;
import p292y1.C4960g;
import p302z1.C5035c;
/* renamed from: p1.k */
/* loaded from: classes-dex2jar.jar:p1/k.class */
public class RunnableC4007k implements Runnable {

    /* renamed from: t */
    public static final String f12591t = AbstractC3824h.m1773e("WorkerWrapper");

    /* renamed from: a */
    public Context f12592a;

    /* renamed from: b */
    public String f12593b;

    /* renamed from: c */
    public List<AbstractC4000d> f12594c;

    /* renamed from: d */
    public WorkerParameters.C0676a f12595d;

    /* renamed from: e */
    public C4832p f12596e;

    /* renamed from: g */
    public AbstractC0008a f12598g;

    /* renamed from: i */
    public C0677a f12600i;

    /* renamed from: j */
    public AbstractC4729a f12601j;

    /* renamed from: k */
    public WorkDatabase f12602k;

    /* renamed from: l */
    public AbstractC4834q f12603l;

    /* renamed from: m */
    public AbstractC4810b f12604m;

    /* renamed from: n */
    public AbstractC4845t f12605n;

    /* renamed from: o */
    public List<String> f12606o;

    /* renamed from: p */
    public String f12607p;

    /* renamed from: s */
    public volatile boolean f12610s;

    /* renamed from: h */
    public ListenableWorker.AbstractC0671a f12599h = new ListenableWorker.AbstractC0671a.C0672a();

    /* renamed from: q */
    public C5035c<Boolean> f12608q = new C5035c<>();

    /* renamed from: r */
    public ListenableFuture<ListenableWorker.AbstractC0671a> f12609r = null;

    /* renamed from: f */
    public ListenableWorker f12597f = null;

    /* renamed from: p1.k$a */
    /* loaded from: classes-dex2jar.jar:p1/k$a.class */
    public class RunnableC4008a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ListenableFuture f12611a;

        /* renamed from: b */
        public final /* synthetic */ C5035c f12612b;

        public RunnableC4008a(ListenableFuture listenableFuture, C5035c c5035c) {
            RunnableC4007k.this = r4;
            this.f12611a = listenableFuture;
            this.f12612b = c5035c;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f12611a.get();
                AbstractC3824h.m1774c().mo1772a(RunnableC4007k.f12591t, String.format("Starting work for %s", RunnableC4007k.this.f12596e.f14833c), new Throwable[0]);
                RunnableC4007k runnableC4007k = RunnableC4007k.this;
                runnableC4007k.f12609r = runnableC4007k.f12597f.startWork();
                this.f12612b.mo118j(RunnableC4007k.this.f12609r);
            } catch (Throwable th) {
                this.f12612b.m116l(th);
            }
        }
    }

    /* renamed from: p1.k$b */
    /* loaded from: classes-dex2jar.jar:p1/k$b.class */
    public class RunnableC4009b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C5035c f12614a;

        /* renamed from: b */
        public final /* synthetic */ String f12615b;

        public RunnableC4009b(C5035c c5035c, String str) {
            RunnableC4007k.this = r4;
            this.f12614a = c5035c;
            this.f12615b = str;
        }

        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public void run() {
            Throwable e;
            try {
                try {
                    ListenableWorker.AbstractC0671a abstractC0671a = (ListenableWorker.AbstractC0671a) this.f12614a.m128e();
                    if (abstractC0671a == null) {
                        AbstractC3824h.m1774c().mo1771b(RunnableC4007k.f12591t, String.format("%s returned a null result. Treating it as a failure.", RunnableC4007k.this.f12596e.f14833c), new Throwable[0]);
                    } else {
                        AbstractC3824h.m1774c().mo1772a(RunnableC4007k.f12591t, String.format("%s returned a %s result.", RunnableC4007k.this.f12596e.f14833c, abstractC0671a), new Throwable[0]);
                        RunnableC4007k.this.f12599h = abstractC0671a;
                    }
                } catch (InterruptedException e2) {
                    e = e2;
                    AbstractC3824h.m1774c().mo1771b(RunnableC4007k.f12591t, String.format("%s failed because it threw an exception/error", this.f12615b), e);
                } catch (CancellationException e3) {
                    AbstractC3824h.m1774c().mo1770d(RunnableC4007k.f12591t, String.format("%s was cancelled", this.f12615b), e3);
                } catch (ExecutionException e4) {
                    e = e4;
                    AbstractC3824h.m1774c().mo1771b(RunnableC4007k.f12591t, String.format("%s failed because it threw an exception/error", this.f12615b), e);
                }
            } finally {
                RunnableC4007k.this.m1527d();
            }
        }
    }

    /* renamed from: p1.k$c */
    /* loaded from: classes-dex2jar.jar:p1/k$c.class */
    public static class C4010c {

        /* renamed from: a */
        public Context f12617a;

        /* renamed from: b */
        public AbstractC4729a f12618b;

        /* renamed from: c */
        public AbstractC0008a f12619c;

        /* renamed from: d */
        public C0677a f12620d;

        /* renamed from: e */
        public WorkDatabase f12621e;

        /* renamed from: f */
        public String f12622f;

        /* renamed from: g */
        public List<AbstractC4000d> f12623g;

        /* renamed from: h */
        public WorkerParameters.C0676a f12624h = new WorkerParameters.C0676a();

        public C4010c(Context context, C0677a c0677a, AbstractC0008a abstractC0008a, AbstractC4729a abstractC4729a, WorkDatabase workDatabase, String str) {
            this.f12617a = context.getApplicationContext();
            this.f12619c = abstractC0008a;
            this.f12618b = abstractC4729a;
            this.f12620d = c0677a;
            this.f12621e = workDatabase;
            this.f12622f = str;
        }
    }

    public RunnableC4007k(C4010c c4010c) {
        this.f12592a = c4010c.f12617a;
        this.f12598g = c4010c.f12619c;
        this.f12601j = c4010c.f12618b;
        this.f12593b = c4010c.f12622f;
        this.f12594c = c4010c.f12623g;
        this.f12595d = c4010c.f12624h;
        this.f12600i = c4010c.f12620d;
        WorkDatabase workDatabase = c4010c.f12621e;
        this.f12602k = workDatabase;
        this.f12603l = workDatabase.mo7475q();
        this.f12604m = this.f12602k.mo7480l();
        this.f12605n = this.f12602k.mo7474r();
    }

    /* renamed from: a */
    public final void m1530a(ListenableWorker.AbstractC0671a abstractC0671a) {
        if (!(abstractC0671a instanceof ListenableWorker.AbstractC0671a.C0674c)) {
            if (abstractC0671a instanceof ListenableWorker.AbstractC0671a.C0673b) {
                AbstractC3824h.m1774c().mo1770d(f12591t, String.format("Worker result RETRY for %s", this.f12607p), new Throwable[0]);
                m1526e();
                return;
            }
            AbstractC3824h.m1774c().mo1770d(f12591t, String.format("Worker result FAILURE for %s", this.f12607p), new Throwable[0]);
            if (this.f12596e.m389c()) {
                m1525f();
                return;
            } else {
                m1521j();
                return;
            }
        }
        AbstractC3824h.m1774c().mo1770d(f12591t, String.format("Worker result SUCCESS for %s", this.f12607p), new Throwable[0]);
        if (this.f12596e.m389c()) {
            m1525f();
            return;
        }
        this.f12602k.m3819c();
        try {
            ((C4835r) this.f12603l).m373p(EnumC3836m.SUCCEEDED, this.f12593b);
            ((C4835r) this.f12603l).m375n(this.f12593b, ((ListenableWorker.AbstractC0671a.C0674c) this.f12599h).f2615a);
            long currentTimeMillis = System.currentTimeMillis();
            Iterator it2 = ((ArrayList) ((C4811c) this.f12604m).m400a(this.f12593b)).iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                if (((C4835r) this.f12603l).m383f(str) == EnumC3836m.BLOCKED && ((C4811c) this.f12604m).m399b(str)) {
                    AbstractC3824h.m1774c().mo1770d(f12591t, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                    ((C4835r) this.f12603l).m373p(EnumC3836m.ENQUEUED, str);
                    ((C4835r) this.f12603l).m374o(str, currentTimeMillis);
                }
            }
            this.f12602k.m3811k();
        } finally {
            this.f12602k.m3815g();
            m1524g(false);
        }
    }

    /* renamed from: b */
    public void m1529b() {
        boolean z;
        this.f12610s = true;
        m1520k();
        ListenableFuture<ListenableWorker.AbstractC0671a> listenableFuture = this.f12609r;
        if (listenableFuture != null) {
            z = listenableFuture.isDone();
            this.f12609r.cancel(true);
        } else {
            z = false;
        }
        ListenableWorker listenableWorker = this.f12597f;
        if (listenableWorker == null || z) {
            AbstractC3824h.m1774c().mo1772a(f12591t, String.format("WorkSpec %s is already done. Not interrupting.", this.f12596e), new Throwable[0]);
        } else {
            listenableWorker.stop();
        }
    }

    /* renamed from: c */
    public final void m1528c(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (((C4835r) this.f12603l).m383f(str2) != EnumC3836m.CANCELLED) {
                ((C4835r) this.f12603l).m373p(EnumC3836m.FAILED, str2);
            }
            linkedList.addAll(((C4811c) this.f12604m).m400a(str2));
        }
    }

    /* renamed from: d */
    public void m1527d() {
        if (!m1520k()) {
            this.f12602k.m3819c();
            try {
                EnumC3836m m383f = ((C4835r) this.f12603l).m383f(this.f12593b);
                ((C4828o) this.f12602k.mo7476p()).m393a(this.f12593b);
                if (m383f == null) {
                    m1524g(false);
                } else if (m383f == EnumC3836m.RUNNING) {
                    m1530a(this.f12599h);
                } else if (!m383f.m1768a()) {
                    m1526e();
                }
                this.f12602k.m3811k();
            } finally {
                this.f12602k.m3815g();
            }
        }
        List<AbstractC4000d> list = this.f12594c;
        if (list != null) {
            for (AbstractC4000d abstractC4000d : list) {
                abstractC4000d.mo1126b(this.f12593b);
            }
            C4001e.m1542a(this.f12600i, this.f12602k, this.f12594c);
        }
    }

    /* renamed from: e */
    public final void m1526e() {
        this.f12602k.m3819c();
        try {
            ((C4835r) this.f12603l).m373p(EnumC3836m.ENQUEUED, this.f12593b);
            ((C4835r) this.f12603l).m374o(this.f12593b, System.currentTimeMillis());
            ((C4835r) this.f12603l).m377l(this.f12593b, -1L);
            this.f12602k.m3811k();
        } finally {
            this.f12602k.m3815g();
            m1524g(true);
        }
    }

    /* renamed from: f */
    public final void m1525f() {
        this.f12602k.m3819c();
        try {
            ((C4835r) this.f12603l).m374o(this.f12593b, System.currentTimeMillis());
            ((C4835r) this.f12603l).m373p(EnumC3836m.ENQUEUED, this.f12593b);
            ((C4835r) this.f12603l).m376m(this.f12593b);
            ((C4835r) this.f12603l).m377l(this.f12593b, -1L);
            this.f12602k.m3811k();
        } finally {
            this.f12602k.m3815g();
            m1524g(false);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: g */
    public final void m1524g(boolean z) {
        ListenableWorker listenableWorker;
        this.f12602k.m3819c();
        try {
            C4835r c4835r = (C4835r) this.f12602k.mo7475q();
            Objects.requireNonNull(c4835r);
            C2158h m3806l = C2158h.m3806l("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
            c4835r.f14851a.m3820b();
            Cursor m3217a = C2709b.m3217a(c4835r.f14851a, m3806l, false, null);
            boolean z2 = m3217a.moveToFirst() && m3217a.getInt(0) != 0;
            m3217a.close();
            m3806l.release();
            if (!z2) {
                C4960g.m174a(this.f12592a, RescheduleReceiver.class, false);
            }
            if (z) {
                ((C4835r) this.f12603l).m373p(EnumC3836m.ENQUEUED, this.f12593b);
                ((C4835r) this.f12603l).m377l(this.f12593b, -1L);
            }
            if (this.f12596e != null && (listenableWorker = this.f12597f) != null && listenableWorker.isRunInForeground()) {
                AbstractC4729a abstractC4729a = this.f12601j;
                String str = this.f12593b;
                C3998c c3998c = (C3998c) abstractC4729a;
                synchronized (c3998c.f12561k) {
                    c3998c.f12556f.remove(str);
                    c3998c.m1545h();
                }
            }
            this.f12602k.m3811k();
            this.f12602k.m3815g();
            this.f12608q.m117k(Boolean.valueOf(z));
        } catch (Throwable th) {
            this.f12602k.m3815g();
            throw th;
        }
    }

    /* renamed from: h */
    public final void m1523h() {
        EnumC3836m m383f = ((C4835r) this.f12603l).m383f(this.f12593b);
        if (m383f == EnumC3836m.RUNNING) {
            AbstractC3824h.m1774c().mo1772a(f12591t, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.f12593b), new Throwable[0]);
            m1524g(true);
            return;
        }
        AbstractC3824h.m1774c().mo1772a(f12591t, String.format("Status for %s is %s; not doing any work", this.f12593b, m383f), new Throwable[0]);
        m1524g(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c3, code lost:
        if ((r0.f14832b == r0 && r0.f14841k > 0) != false) goto L27;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1522i() {
        /*
            Method dump skipped, instructions count: 1109
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p197p1.RunnableC4007k.m1522i():void");
    }

    /* renamed from: j */
    public void m1521j() {
        this.f12602k.m3819c();
        try {
            m1528c(this.f12593b);
            C0680b c0680b = ((ListenableWorker.AbstractC0671a.C0672a) this.f12599h).f2614a;
            ((C4835r) this.f12603l).m375n(this.f12593b, c0680b);
            this.f12602k.m3811k();
        } finally {
            this.f12602k.m3815g();
            m1524g(false);
        }
    }

    /* renamed from: k */
    public final boolean m1520k() {
        if (this.f12610s) {
            AbstractC3824h.m1774c().mo1772a(f12591t, String.format("Work interrupted for %s", this.f12607p), new Throwable[0]);
            EnumC3836m m383f = ((C4835r) this.f12603l).m383f(this.f12593b);
            if (m383f == null) {
                m1524g(false);
                return true;
            }
            m1524g(!m383f.m1768a());
            return true;
        }
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        List<String> m372a = ((C4846u) this.f12605n).m372a(this.f12593b);
        this.f12606o = m372a;
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.f12593b);
        sb.append(", tags={ ");
        boolean z = true;
        for (String str : m372a) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(" } ]");
        this.f12607p = sb.toString();
        m1522i();
    }
}
