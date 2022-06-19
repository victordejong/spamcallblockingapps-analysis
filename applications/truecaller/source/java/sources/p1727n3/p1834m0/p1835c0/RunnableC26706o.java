package p1727n3.p1834m0.p1835c0;

import android.content.Context;
import android.database.Cursor;
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
import n3.m0.c0.t.w.c;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26678c;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.p1835c0.p1843r.AbstractC26736a;
import p1727n3.p1834m0.p1835c0.p1844s.AbstractC26743b;
import p1727n3.p1834m0.p1835c0.p1844s.AbstractC26764q;
import p1727n3.p1834m0.p1835c0.p1844s.AbstractC26777v;
import p1727n3.p1834m0.p1835c0.p1844s.C26744c;
import p1727n3.p1834m0.p1835c0.p1844s.C26757o;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
import p1727n3.p1834m0.p1835c0.p1845t.C26787h;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
/* renamed from: n3.m0.c0.o */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/o.class */
public class RunnableC26706o implements Runnable {

    /* renamed from: t */
    public static final String f74738t = AbstractC26839p.m1295e("WorkerWrapper");

    /* renamed from: a */
    public Context f74739a;

    /* renamed from: b */
    public String f74740b;

    /* renamed from: c */
    public List<AbstractC26686e> f74741c;

    /* renamed from: d */
    public WorkerParameters.C0420a f74742d;

    /* renamed from: e */
    public C26760p f74743e;

    /* renamed from: g */
    public AbstractC26821a f74745g;

    /* renamed from: i */
    public C26678c f74747i;

    /* renamed from: j */
    public AbstractC26736a f74748j;

    /* renamed from: k */
    public WorkDatabase f74749k;

    /* renamed from: l */
    public AbstractC26764q f74750l;

    /* renamed from: m */
    public AbstractC26743b f74751m;

    /* renamed from: n */
    public AbstractC26777v f74752n;

    /* renamed from: o */
    public List<String> f74753o;

    /* renamed from: p */
    public String f74754p;

    /* renamed from: s */
    public volatile boolean f74757s;

    /* renamed from: h */
    public ListenableWorker.AbstractC0414a f74746h = new ListenableWorker.AbstractC0414a.C0415a();

    /* renamed from: q */
    public c<Boolean> f74755q = new c<>();

    /* renamed from: r */
    public ListenableFuture<ListenableWorker.AbstractC0414a> f74756r = null;

    /* renamed from: f */
    public ListenableWorker f74744f = null;

    /* renamed from: n3.m0.c0.o$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/o$a.class */
    public static class C26707a {

        /* renamed from: a */
        public Context f74758a;

        /* renamed from: b */
        public AbstractC26736a f74759b;

        /* renamed from: c */
        public AbstractC26821a f74760c;

        /* renamed from: d */
        public C26678c f74761d;

        /* renamed from: e */
        public WorkDatabase f74762e;

        /* renamed from: f */
        public String f74763f;

        /* renamed from: g */
        public List<AbstractC26686e> f74764g;

        /* renamed from: h */
        public WorkerParameters.C0420a f74765h = new WorkerParameters.C0420a();

        public C26707a(Context context, C26678c c26678c, AbstractC26821a abstractC26821a, AbstractC26736a abstractC26736a, WorkDatabase workDatabase, String str) {
            this.f74758a = context.getApplicationContext();
            this.f74760c = abstractC26821a;
            this.f74759b = abstractC26736a;
            this.f74761d = c26678c;
            this.f74762e = workDatabase;
            this.f74763f = str;
        }
    }

    public RunnableC26706o(C26707a c26707a) {
        this.f74739a = c26707a.f74758a;
        this.f74745g = c26707a.f74760c;
        this.f74748j = c26707a.f74759b;
        this.f74740b = c26707a.f74763f;
        this.f74741c = c26707a.f74764g;
        this.f74742d = c26707a.f74765h;
        this.f74747i = c26707a.f74761d;
        WorkDatabase workDatabase = c26707a.f74762e;
        this.f74749k = workDatabase;
        this.f74750l = workDatabase.m42606f();
        this.f74751m = this.f74749k.m42611a();
        this.f74752n = this.f74749k.m42605g();
    }

    /* renamed from: a */
    public final void m1426a(ListenableWorker.AbstractC0414a abstractC0414a) {
        if (!(abstractC0414a instanceof ListenableWorker.AbstractC0414a.C0417c)) {
            if (abstractC0414a instanceof ListenableWorker.AbstractC0414a.C0416b) {
                AbstractC26839p.m1296c().mo1292d(f74738t, String.format("Worker result RETRY for %s", this.f74754p), new Throwable[0]);
                m1423d();
                return;
            }
            AbstractC26839p.m1296c().mo1292d(f74738t, String.format("Worker result FAILURE for %s", this.f74754p), new Throwable[0]);
            if (this.f74743e.m1359c()) {
                m1422e();
                return;
            } else {
                m1419h();
                return;
            }
        }
        AbstractC26839p.m1296c().mo1292d(f74738t, String.format("Worker result SUCCESS for %s", this.f74754p), new Throwable[0]);
        if (this.f74743e.m1359c()) {
            m1422e();
            return;
        }
        this.f74749k.beginTransaction();
        try {
            AbstractC26764q abstractC26764q = this.f74750l;
            ((C26767t) abstractC26764q).m1339r(C26855x.EnumC26856a.SUCCEEDED, this.f74740b);
            ((C26767t) this.f74750l).m1341p(this.f74740b, ((ListenableWorker.AbstractC0414a.C0417c) this.f74746h).f1554a);
            long currentTimeMillis = System.currentTimeMillis();
            Iterator it = ((ArrayList) ((C26744c) this.f74751m).m1370a(this.f74740b)).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (((C26767t) this.f74750l).m1349h(str) == C26855x.EnumC26856a.BLOCKED && ((C26744c) this.f74751m).m1369b(str)) {
                    AbstractC26839p.m1296c().mo1292d(f74738t, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                    ((C26767t) this.f74750l).m1339r(C26855x.EnumC26856a.ENQUEUED, str);
                    ((C26767t) this.f74750l).m1340q(str, currentTimeMillis);
                }
            }
            this.f74749k.setTransactionSuccessful();
        } finally {
            this.f74749k.endTransaction();
            m1421f(false);
        }
    }

    /* renamed from: b */
    public final void m1425b(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (((C26767t) this.f74750l).m1349h(str2) != C26855x.EnumC26856a.CANCELLED) {
                ((C26767t) this.f74750l).m1339r(C26855x.EnumC26856a.FAILED, str2);
            }
            linkedList.addAll(((C26744c) this.f74751m).m1370a(str2));
        }
    }

    /* renamed from: c */
    public void m1424c() {
        if (!m1418i()) {
            this.f74749k.beginTransaction();
            try {
                C26855x.EnumC26856a m1349h = ((C26767t) this.f74750l).m1349h(this.f74740b);
                ((C26757o) this.f74749k.m42607e()).m1363a(this.f74740b);
                if (m1349h == null) {
                    m1421f(false);
                } else if (m1349h == C26855x.EnumC26856a.RUNNING) {
                    m1426a(this.f74746h);
                } else if (!m1349h.m1288a()) {
                    m1423d();
                }
                this.f74749k.setTransactionSuccessful();
            } finally {
                this.f74749k.endTransaction();
            }
        }
        List<AbstractC26686e> list = this.f74741c;
        if (list != null) {
            for (AbstractC26686e abstractC26686e : list) {
                abstractC26686e.mo1400d(this.f74740b);
            }
            C26687f.m1438a(this.f74747i, this.f74749k, this.f74741c);
        }
    }

    /* renamed from: d */
    public final void m1423d() {
        this.f74749k.beginTransaction();
        try {
            AbstractC26764q abstractC26764q = this.f74750l;
            ((C26767t) abstractC26764q).m1339r(C26855x.EnumC26856a.ENQUEUED, this.f74740b);
            ((C26767t) this.f74750l).m1340q(this.f74740b, System.currentTimeMillis());
            ((C26767t) this.f74750l).m1343n(this.f74740b, -1L);
            this.f74749k.setTransactionSuccessful();
        } finally {
            this.f74749k.endTransaction();
            m1421f(true);
        }
    }

    /* renamed from: e */
    public final void m1422e() {
        this.f74749k.beginTransaction();
        try {
            ((C26767t) this.f74750l).m1340q(this.f74740b, System.currentTimeMillis());
            AbstractC26764q abstractC26764q = this.f74750l;
            ((C26767t) abstractC26764q).m1339r(C26855x.EnumC26856a.ENQUEUED, this.f74740b);
            ((C26767t) this.f74750l).m1342o(this.f74740b);
            ((C26767t) this.f74750l).m1343n(this.f74740b, -1L);
            this.f74749k.setTransactionSuccessful();
        } finally {
            this.f74749k.endTransaction();
            m1421f(false);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    public final void m1421f(boolean z) {
        ListenableWorker listenableWorker;
        this.f74749k.beginTransaction();
        try {
            C26767t c26767t = (C26767t) this.f74749k.m42606f();
            Objects.requireNonNull(c26767t);
            C25686y m3059j = C25686y.m3059j("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
            c26767t.f74932a.assertNotSuspendingTransaction();
            Cursor m3090b = C25653b.m3090b(c26767t.f74932a, m3059j, false, null);
            boolean z2 = m3090b.moveToFirst() && m3090b.getInt(0) != 0;
            m3090b.close();
            m3059j.m3057l();
            if (!z2) {
                C26787h.m1330a(this.f74739a, RescheduleReceiver.class, false);
            }
            if (z) {
                ((C26767t) this.f74750l).m1339r(C26855x.EnumC26856a.ENQUEUED, this.f74740b);
                ((C26767t) this.f74750l).m1343n(this.f74740b, -1L);
            }
            if (this.f74743e != null && (listenableWorker = this.f74744f) != null && listenableWorker.isRunInForeground()) {
                AbstractC26736a abstractC26736a = this.f74748j;
                String str = this.f74740b;
                C26684d c26684d = (C26684d) abstractC26736a;
                synchronized (c26684d.f74693k) {
                    c26684d.f74688f.remove(str);
                    c26684d.m1441h();
                }
            }
            this.f74749k.setTransactionSuccessful();
            this.f74749k.endTransaction();
            this.f74755q.i(Boolean.valueOf(z));
        } catch (Throwable th) {
            this.f74749k.endTransaction();
            throw th;
        }
    }

    /* renamed from: g */
    public final void m1420g() {
        C26855x.EnumC26856a m1349h = ((C26767t) this.f74750l).m1349h(this.f74740b);
        if (m1349h == C26855x.EnumC26856a.RUNNING) {
            AbstractC26839p.m1296c().mo1294a(f74738t, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.f74740b), new Throwable[0]);
            m1421f(true);
            return;
        }
        AbstractC26839p.m1296c().mo1294a(f74738t, String.format("Status for %s is %s; not doing any work", this.f74740b, m1349h), new Throwable[0]);
        m1421f(false);
    }

    /* renamed from: h */
    public void m1419h() {
        this.f74749k.beginTransaction();
        try {
            m1425b(this.f74740b);
            ((C26767t) this.f74750l).m1341p(this.f74740b, ((ListenableWorker.AbstractC0414a.C0415a) this.f74746h).f1553a);
            this.f74749k.setTransactionSuccessful();
        } finally {
            this.f74749k.endTransaction();
            m1421f(false);
        }
    }

    /* renamed from: i */
    public final boolean m1418i() {
        if (this.f74757s) {
            AbstractC26839p.m1296c().mo1294a(f74738t, String.format("Work interrupted for %s", this.f74754p), new Throwable[0]);
            C26855x.EnumC26856a m1349h = ((C26767t) this.f74750l).m1349h(this.f74740b);
            if (m1349h == null) {
                m1421f(false);
                return true;
            }
            m1421f(!m1349h.m1288a());
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x013a, code lost:
        if ((r0.f74903b == r0 && r0.f74912k > 0) != false) goto L32;
     */
    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 1262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1834m0.p1835c0.RunnableC26706o.run():void");
    }
}
