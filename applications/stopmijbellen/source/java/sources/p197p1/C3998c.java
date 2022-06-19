package p197p1;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PowerManager;
import androidx.work.C0677a;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.C0703a;
import androidx.work.impl.foreground.SystemForegroundService;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import p003a2.AbstractC0008a;
import p003a2.C0009b;
import p066d0.C2134a;
import p186o1.AbstractC3824h;
import p186o1.C3820d;
import p197p1.RunnableC4007k;
import p271w1.AbstractC4729a;
import p292y1.C4967m;
import p302z1.C5035c;
/* renamed from: p1.c */
/* loaded from: classes-dex2jar.jar:p1/c.class */
public class C3998c implements AbstractC3996a, AbstractC4729a {

    /* renamed from: l */
    public static final String f12550l = AbstractC3824h.m1773e("Processor");

    /* renamed from: b */
    public Context f12552b;

    /* renamed from: c */
    public C0677a f12553c;

    /* renamed from: d */
    public AbstractC0008a f12554d;

    /* renamed from: e */
    public WorkDatabase f12555e;

    /* renamed from: h */
    public List<AbstractC4000d> f12558h;

    /* renamed from: g */
    public Map<String, RunnableC4007k> f12557g = new HashMap();

    /* renamed from: f */
    public Map<String, RunnableC4007k> f12556f = new HashMap();

    /* renamed from: i */
    public Set<String> f12559i = new HashSet();

    /* renamed from: j */
    public final List<AbstractC3996a> f12560j = new ArrayList();

    /* renamed from: a */
    public PowerManager.WakeLock f12551a = null;

    /* renamed from: k */
    public final Object f12561k = new Object();

    /* renamed from: p1.c$a */
    /* loaded from: classes-dex2jar.jar:p1/c$a.class */
    public static class RunnableC3999a implements Runnable {

        /* renamed from: a */
        public AbstractC3996a f12562a;

        /* renamed from: b */
        public String f12563b;

        /* renamed from: c */
        public ListenableFuture<Boolean> f12564c;

        public RunnableC3999a(AbstractC3996a abstractC3996a, String str, ListenableFuture<Boolean> listenableFuture) {
            this.f12562a = abstractC3996a;
            this.f12563b = str;
            this.f12564c = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            try {
                z = ((Boolean) this.f12564c.get()).booleanValue();
            } catch (InterruptedException | ExecutionException e) {
                z = true;
            }
            this.f12562a.mo1352a(this.f12563b, z);
        }
    }

    public C3998c(Context context, C0677a c0677a, AbstractC0008a abstractC0008a, WorkDatabase workDatabase, List<AbstractC4000d> list) {
        this.f12552b = context;
        this.f12553c = c0677a;
        this.f12554d = abstractC0008a;
        this.f12555e = workDatabase;
        this.f12558h = list;
    }

    /* renamed from: c */
    public static boolean m1550c(String str, RunnableC4007k runnableC4007k) {
        if (runnableC4007k == null) {
            AbstractC3824h.m1774c().mo1772a(f12550l, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
            return false;
        }
        runnableC4007k.m1529b();
        AbstractC3824h.m1774c().mo1772a(f12550l, String.format("WorkerWrapper interrupted for %s", str), new Throwable[0]);
        return true;
    }

    @Override // p197p1.AbstractC3996a
    /* renamed from: a */
    public void mo1352a(String str, boolean z) {
        synchronized (this.f12561k) {
            this.f12557g.remove(str);
            AbstractC3824h.m1774c().mo1772a(f12550l, String.format("%s %s executed; reschedule = %s", C3998c.class.getSimpleName(), str, Boolean.valueOf(z)), new Throwable[0]);
            for (AbstractC3996a abstractC3996a : this.f12560j) {
                abstractC3996a.mo1352a(str, z);
            }
        }
    }

    /* renamed from: b */
    public void m1551b(AbstractC3996a abstractC3996a) {
        synchronized (this.f12561k) {
            this.f12560j.add(abstractC3996a);
        }
    }

    /* renamed from: d */
    public boolean m1549d(String str) {
        boolean z;
        synchronized (this.f12561k) {
            if (!this.f12557g.containsKey(str) && !this.f12556f.containsKey(str)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* renamed from: e */
    public void m1548e(AbstractC3996a abstractC3996a) {
        synchronized (this.f12561k) {
            this.f12560j.remove(abstractC3996a);
        }
    }

    /* renamed from: f */
    public void m1547f(String str, C3820d c3820d) {
        synchronized (this.f12561k) {
            AbstractC3824h.m1774c().mo1770d(f12550l, String.format("Moving WorkSpec (%s) to the foreground", str), new Throwable[0]);
            RunnableC4007k remove = this.f12557g.remove(str);
            if (remove != null) {
                if (this.f12551a == null) {
                    PowerManager.WakeLock m171a = C4967m.m171a(this.f12552b, "ProcessorForegroundLck");
                    this.f12551a = m171a;
                    m171a.acquire();
                }
                this.f12556f.put(str, remove);
                Intent m7456d = C0703a.m7456d(this.f12552b, str, c3820d);
                Context context = this.f12552b;
                Object obj = C2134a.f7832a;
                if (Build.VERSION.SDK_INT >= 26) {
                    C2134a.C2139e.m3833a(context, m7456d);
                } else {
                    context.startService(m7456d);
                }
            }
        }
    }

    /* renamed from: g */
    public boolean m1546g(String str, WorkerParameters.C0676a c0676a) {
        synchronized (this.f12561k) {
            if (m1549d(str)) {
                AbstractC3824h.m1774c().mo1772a(f12550l, String.format("Work %s is already enqueued for processing", str), new Throwable[0]);
                return false;
            }
            RunnableC4007k.C4010c c4010c = new RunnableC4007k.C4010c(this.f12552b, this.f12553c, this.f12554d, this, this.f12555e, str);
            c4010c.f12623g = this.f12558h;
            if (c0676a != null) {
                c4010c.f12624h = c0676a;
            }
            RunnableC4007k runnableC4007k = new RunnableC4007k(c4010c);
            C5035c<Boolean> c5035c = runnableC4007k.f12608q;
            c5035c.addListener(new RunnableC3999a(this, str, c5035c), ((C0009b) this.f12554d).f10c);
            this.f12557g.put(str, runnableC4007k);
            ((C0009b) this.f12554d).f8a.execute(runnableC4007k);
            AbstractC3824h.m1774c().mo1772a(f12550l, String.format("%s: processing %s", C3998c.class.getSimpleName(), str), new Throwable[0]);
            return true;
        }
    }

    /* renamed from: h */
    public final void m1545h() {
        synchronized (this.f12561k) {
            if (!(!this.f12556f.isEmpty())) {
                Context context = this.f12552b;
                String str = C0703a.f2719k;
                Intent intent = new Intent(context, SystemForegroundService.class);
                intent.setAction("ACTION_STOP_FOREGROUND");
                this.f12552b.startService(intent);
                PowerManager.WakeLock wakeLock = this.f12551a;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.f12551a = null;
                }
            }
        }
    }

    /* renamed from: i */
    public boolean m1544i(String str) {
        boolean m1550c;
        synchronized (this.f12561k) {
            AbstractC3824h.m1774c().mo1772a(f12550l, String.format("Processor stopping foreground work %s", str), new Throwable[0]);
            m1550c = m1550c(str, this.f12556f.remove(str));
        }
        return m1550c;
    }

    /* renamed from: j */
    public boolean m1543j(String str) {
        boolean m1550c;
        synchronized (this.f12561k) {
            AbstractC3824h.m1774c().mo1772a(f12550l, String.format("Processor stopping background work %s", str), new Throwable[0]);
            m1550c = m1550c(str, this.f12557g.remove(str));
        }
        return m1550c;
    }
}
