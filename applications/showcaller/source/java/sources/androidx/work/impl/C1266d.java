package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.core.content.C0586a;
import androidx.work.AbstractC1404j;
import androidx.work.C1230a;
import androidx.work.C1240e;
import androidx.work.WorkerParameters;
import androidx.work.impl.RunnableC1290k;
import androidx.work.impl.foreground.AbstractC1273a;
import androidx.work.impl.foreground.C1274b;
import androidx.work.impl.utils.C1387j;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import com.google.common.util.concurrent.AbstractFutureC8832a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
/* renamed from: androidx.work.impl.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/d.class */
public class C1266d implements AbstractC1250b, AbstractC1273a {

    /* renamed from: d */
    private static final String f5376d = AbstractC1404j.m30159f("Processor");

    /* renamed from: f */
    private Context f5378f;

    /* renamed from: g */
    private C1230a f5379g;

    /* renamed from: h */
    private AbstractC1399a f5380h;

    /* renamed from: i */
    private WorkDatabase f5381i;

    /* renamed from: l */
    private List<AbstractC1268e> f5384l;

    /* renamed from: k */
    private Map<String, RunnableC1290k> f5383k = new HashMap();

    /* renamed from: j */
    private Map<String, RunnableC1290k> f5382j = new HashMap();

    /* renamed from: m */
    private Set<String> f5385m = new HashSet();

    /* renamed from: n */
    private final List<AbstractC1250b> f5386n = new ArrayList();

    /* renamed from: e */
    private PowerManager.WakeLock f5377e = null;

    /* renamed from: o */
    private final Object f5387o = new Object();

    /* renamed from: androidx.work.impl.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/d$a.class */
    public static class RunnableC1267a implements Runnable {

        /* renamed from: d */
        private AbstractC1250b f5388d;

        /* renamed from: e */
        private String f5389e;

        /* renamed from: f */
        private AbstractFutureC8832a<Boolean> f5390f;

        RunnableC1267a(AbstractC1250b abstractC1250b, String str, AbstractFutureC8832a<Boolean> abstractFutureC8832a) {
            this.f5388d = abstractC1250b;
            this.f5389e = str;
            this.f5390f = abstractFutureC8832a;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            try {
                z = this.f5390f.get().booleanValue();
            } catch (InterruptedException | ExecutionException e) {
                z = true;
            }
            this.f5388d.mo30356d(this.f5389e, z);
        }
    }

    public C1266d(Context context, C1230a c1230a, AbstractC1399a abstractC1399a, WorkDatabase workDatabase, List<AbstractC1268e> list) {
        this.f5378f = context;
        this.f5379g = c1230a;
        this.f5380h = abstractC1399a;
        this.f5381i = workDatabase;
        this.f5384l = list;
    }

    /* renamed from: e */
    private static boolean m30447e(String str, RunnableC1290k runnableC1290k) {
        if (runnableC1290k == null) {
            AbstractC1404j.m30161c().mo30158a(f5376d, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
            return false;
        }
        runnableC1290k.m30375d();
        AbstractC1404j.m30161c().mo30158a(f5376d, String.format("WorkerWrapper interrupted for %s", str), new Throwable[0]);
        return true;
    }

    /* renamed from: m */
    private void m30439m() {
        synchronized (this.f5387o) {
            if (!(!this.f5382j.isEmpty())) {
                this.f5378f.startService(C1274b.m30428e(this.f5378f));
                PowerManager.WakeLock wakeLock = this.f5377e;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.f5377e = null;
                }
            }
        }
    }

    @Override // androidx.work.impl.foreground.AbstractC1273a
    /* renamed from: a */
    public void mo30432a(String str, C1240e c1240e) {
        synchronized (this.f5387o) {
            AbstractC1404j.m30161c().mo30156d(f5376d, String.format("Moving WorkSpec (%s) to the foreground", str), new Throwable[0]);
            RunnableC1290k remove = this.f5383k.remove(str);
            if (remove != null) {
                if (this.f5377e == null) {
                    PowerManager.WakeLock m30180b = C1387j.m30180b(this.f5378f, "ProcessorForegroundLck");
                    this.f5377e = m30180b;
                    m30180b.acquire();
                }
                this.f5382j.put(str, remove);
                C0586a.m33342l(this.f5378f, C1274b.m30429c(this.f5378f, str, c1240e));
            }
        }
    }

    @Override // androidx.work.impl.foreground.AbstractC1273a
    /* renamed from: b */
    public void mo30431b(String str) {
        synchronized (this.f5387o) {
            this.f5382j.remove(str);
            m30439m();
        }
    }

    /* renamed from: c */
    public void m30448c(AbstractC1250b abstractC1250b) {
        synchronized (this.f5387o) {
            this.f5386n.add(abstractC1250b);
        }
    }

    @Override // androidx.work.impl.AbstractC1250b
    /* renamed from: d */
    public void mo30356d(String str, boolean z) {
        synchronized (this.f5387o) {
            this.f5383k.remove(str);
            AbstractC1404j.m30161c().mo30158a(f5376d, String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z)), new Throwable[0]);
            for (AbstractC1250b abstractC1250b : this.f5386n) {
                abstractC1250b.mo30356d(str, z);
            }
        }
    }

    /* renamed from: f */
    public boolean m30446f(String str) {
        boolean contains;
        synchronized (this.f5387o) {
            contains = this.f5385m.contains(str);
        }
        return contains;
    }

    /* renamed from: g */
    public boolean m30445g(String str) {
        boolean z;
        synchronized (this.f5387o) {
            if (!this.f5383k.containsKey(str) && !this.f5382j.containsKey(str)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* renamed from: h */
    public boolean m30444h(String str) {
        boolean containsKey;
        synchronized (this.f5387o) {
            containsKey = this.f5382j.containsKey(str);
        }
        return containsKey;
    }

    /* renamed from: i */
    public void m30443i(AbstractC1250b abstractC1250b) {
        synchronized (this.f5387o) {
            this.f5386n.remove(abstractC1250b);
        }
    }

    /* renamed from: j */
    public boolean m30442j(String str) {
        return m30441k(str, null);
    }

    /* renamed from: k */
    public boolean m30441k(String str, WorkerParameters.C1229a c1229a) {
        synchronized (this.f5387o) {
            if (m30445g(str)) {
                AbstractC1404j.m30161c().mo30158a(f5376d, String.format("Work %s is already enqueued for processing", str), new Throwable[0]);
                return false;
            }
            RunnableC1290k m30363a = new RunnableC1290k.C1293c(this.f5378f, this.f5379g, this.f5380h, this, this.f5381i, str).m30361c(this.f5384l).m30362b(c1229a).m30363a();
            AbstractFutureC8832a<Boolean> m30377b = m30363a.m30377b();
            m30377b.mo2574e(new RunnableC1267a(this, str, m30377b), this.f5380h.mo30173a());
            this.f5383k.put(str, m30363a);
            this.f5380h.mo30171c().execute(m30363a);
            AbstractC1404j.m30161c().mo30158a(f5376d, String.format("%s: processing %s", C1266d.class.getSimpleName(), str), new Throwable[0]);
            return true;
        }
    }

    /* renamed from: l */
    public boolean m30440l(String str) {
        boolean m30447e;
        synchronized (this.f5387o) {
            boolean z = true;
            AbstractC1404j.m30161c().mo30158a(f5376d, String.format("Processor cancelling %s", str), new Throwable[0]);
            this.f5385m.add(str);
            RunnableC1290k remove = this.f5382j.remove(str);
            if (remove == null) {
                z = false;
            }
            RunnableC1290k runnableC1290k = remove;
            if (remove == null) {
                runnableC1290k = this.f5383k.remove(str);
            }
            m30447e = m30447e(str, runnableC1290k);
            if (z) {
                m30439m();
            }
        }
        return m30447e;
    }

    /* renamed from: n */
    public boolean m30438n(String str) {
        boolean m30447e;
        synchronized (this.f5387o) {
            AbstractC1404j.m30161c().mo30158a(f5376d, String.format("Processor stopping foreground work %s", str), new Throwable[0]);
            m30447e = m30447e(str, this.f5382j.remove(str));
        }
        return m30447e;
    }

    /* renamed from: o */
    public boolean m30437o(String str) {
        boolean m30447e;
        synchronized (this.f5387o) {
            AbstractC1404j.m30161c().mo30158a(f5376d, String.format("Processor stopping background work %s", str), new Throwable[0]);
            m30447e = m30447e(str, this.f5383k.remove(str));
        }
        return m30447e;
    }
}
