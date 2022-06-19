package p1727n3.p1834m0.p1835c0;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.SystemForegroundService;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import n3.m0.c0.t.w.c;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26678c;
import p1727n3.p1834m0.C26833i;
import p1727n3.p1834m0.p1835c0.RunnableC26706o;
import p1727n3.p1834m0.p1835c0.p1843r.AbstractC26736a;
import p1727n3.p1834m0.p1835c0.p1843r.C26738c;
import p1727n3.p1834m0.p1835c0.p1845t.C26797q;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* renamed from: n3.m0.c0.d */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/d.class */
public class C26684d implements AbstractC26682b, AbstractC26736a {

    /* renamed from: l */
    public static final String f74682l = AbstractC26839p.m1295e("Processor");

    /* renamed from: b */
    public Context f74684b;

    /* renamed from: c */
    public C26678c f74685c;

    /* renamed from: d */
    public AbstractC26821a f74686d;

    /* renamed from: e */
    public WorkDatabase f74687e;

    /* renamed from: h */
    public List<AbstractC26686e> f74690h;

    /* renamed from: g */
    public Map<String, RunnableC26706o> f74689g = new HashMap();

    /* renamed from: f */
    public Map<String, RunnableC26706o> f74688f = new HashMap();

    /* renamed from: i */
    public Set<String> f74691i = new HashSet();

    /* renamed from: j */
    public final List<AbstractC26682b> f74692j = new ArrayList();

    /* renamed from: a */
    public PowerManager.WakeLock f74683a = null;

    /* renamed from: k */
    public final Object f74693k = new Object();

    /* renamed from: n3.m0.c0.d$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/d$a.class */
    public static class RunnableC26685a implements Runnable {

        /* renamed from: a */
        public AbstractC26682b f74694a;

        /* renamed from: b */
        public String f74695b;

        /* renamed from: c */
        public ListenableFuture<Boolean> f74696c;

        public RunnableC26685a(AbstractC26682b abstractC26682b, String str, ListenableFuture<Boolean> listenableFuture) {
            this.f74694a = abstractC26682b;
            this.f74695b = str;
            this.f74696c = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            try {
                z = this.f74696c.get().booleanValue();
            } catch (InterruptedException | ExecutionException e) {
                z = true;
            }
            this.f74694a.mo1376b(this.f74695b, z);
        }
    }

    public C26684d(Context context, C26678c c26678c, AbstractC26821a abstractC26821a, WorkDatabase workDatabase, List<AbstractC26686e> list) {
        this.f74684b = context;
        this.f74685c = c26678c;
        this.f74686d = abstractC26821a;
        this.f74687e = workDatabase;
        this.f74690h = list;
    }

    /* renamed from: c */
    public static boolean m1446c(String str, RunnableC26706o runnableC26706o) {
        boolean z;
        if (runnableC26706o == null) {
            AbstractC26839p.m1296c().mo1294a(f74682l, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
            return false;
        }
        runnableC26706o.f74757s = true;
        runnableC26706o.m1418i();
        ListenableFuture<ListenableWorker.AbstractC0414a> listenableFuture = runnableC26706o.f74756r;
        if (listenableFuture != null) {
            z = listenableFuture.isDone();
            runnableC26706o.f74756r.cancel(true);
        } else {
            z = false;
        }
        ListenableWorker listenableWorker = runnableC26706o.f74744f;
        if (listenableWorker == null || z) {
            AbstractC26839p.m1296c().mo1294a(RunnableC26706o.f74738t, String.format("WorkSpec %s is already done. Not interrupting.", runnableC26706o.f74743e), new Throwable[0]);
        } else {
            listenableWorker.stop();
        }
        AbstractC26839p.m1296c().mo1294a(f74682l, String.format("WorkerWrapper interrupted for %s", str), new Throwable[0]);
        return true;
    }

    /* renamed from: a */
    public void m1447a(AbstractC26682b abstractC26682b) {
        synchronized (this.f74693k) {
            this.f74692j.add(abstractC26682b);
        }
    }

    @Override // p1727n3.p1834m0.p1835c0.AbstractC26682b
    /* renamed from: b */
    public void mo1376b(String str, boolean z) {
        synchronized (this.f74693k) {
            this.f74689g.remove(str);
            AbstractC26839p.m1296c().mo1294a(f74682l, String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z)), new Throwable[0]);
            for (AbstractC26682b abstractC26682b : this.f74692j) {
                abstractC26682b.mo1376b(str, z);
            }
        }
    }

    /* renamed from: d */
    public boolean m1445d(String str) {
        boolean z;
        synchronized (this.f74693k) {
            if (!this.f74689g.containsKey(str) && !this.f74688f.containsKey(str)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* renamed from: e */
    public void m1444e(AbstractC26682b abstractC26682b) {
        synchronized (this.f74693k) {
            this.f74692j.remove(abstractC26682b);
        }
    }

    /* renamed from: f */
    public void m1443f(String str, C26833i c26833i) {
        synchronized (this.f74693k) {
            AbstractC26839p.m1296c().mo1292d(f74682l, String.format("Moving WorkSpec (%s) to the foreground", str), new Throwable[0]);
            RunnableC26706o remove = this.f74689g.remove(str);
            if (remove != null) {
                if (this.f74683a == null) {
                    PowerManager.WakeLock m1326a = C26797q.m1326a(this.f74684b, "ProcessorForegroundLck");
                    this.f74683a = m1326a;
                    m1326a.acquire();
                }
                this.f74688f.put(str, remove);
                C26467a.m1796f(this.f74684b, C26738c.m1374d(this.f74684b, str, c26833i));
            }
        }
    }

    /* renamed from: g */
    public boolean m1442g(String str, WorkerParameters.C0420a c0420a) {
        synchronized (this.f74693k) {
            if (m1445d(str)) {
                AbstractC26839p.m1296c().mo1294a(f74682l, String.format("Work %s is already enqueued for processing", str), new Throwable[0]);
                return false;
            }
            RunnableC26706o.C26707a c26707a = new RunnableC26706o.C26707a(this.f74684b, this.f74685c, this.f74686d, this, this.f74687e, str);
            c26707a.f74764g = this.f74690h;
            if (c0420a != null) {
                c26707a.f74765h = c0420a;
            }
            RunnableC26706o runnableC26706o = new RunnableC26706o(c26707a);
            c<Boolean> cVar = runnableC26706o.f74755q;
            cVar.addListener(new RunnableC26685a(this, str, cVar), ((C26822b) this.f74686d).f75053c);
            this.f74689g.put(str, runnableC26706o);
            ((C26822b) this.f74686d).f75051a.execute(runnableC26706o);
            AbstractC26839p.m1296c().mo1294a(f74682l, String.format("%s: processing %s", C26684d.class.getSimpleName(), str), new Throwable[0]);
            return true;
        }
    }

    /* renamed from: h */
    public final void m1441h() {
        synchronized (this.f74693k) {
            if (!(!this.f74688f.isEmpty())) {
                Context context = this.f74684b;
                String str = C26738c.f74861k;
                Intent intent = new Intent(context, SystemForegroundService.class);
                intent.setAction("ACTION_STOP_FOREGROUND");
                this.f74684b.startService(intent);
                PowerManager.WakeLock wakeLock = this.f74683a;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.f74683a = null;
                }
            }
        }
    }

    /* renamed from: i */
    public boolean m1440i(String str) {
        boolean m1446c;
        synchronized (this.f74693k) {
            AbstractC26839p.m1296c().mo1294a(f74682l, String.format("Processor stopping foreground work %s", str), new Throwable[0]);
            m1446c = m1446c(str, this.f74688f.remove(str));
        }
        return m1446c;
    }

    /* renamed from: j */
    public boolean m1439j(String str) {
        boolean m1446c;
        synchronized (this.f74693k) {
            AbstractC26839p.m1296c().mo1294a(f74682l, String.format("Processor stopping background work %s", str), new Throwable[0]);
            m1446c = m1446c(str, this.f74689g.remove(str));
        }
        return m1446c;
    }
}
