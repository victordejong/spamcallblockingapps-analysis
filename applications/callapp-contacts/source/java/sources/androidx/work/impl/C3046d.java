package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.core.content.C0790b;
import androidx.work.AbstractC3145k;
import androidx.work.C2995f;
import androidx.work.Configuration;
import androidx.work.WorkerParameters;
import androidx.work.impl.RunnableC3069k;
import androidx.work.impl.foreground.AbstractC3053a;
import androidx.work.impl.foreground.C3054b;
import androidx.work.impl.utils.C3132k;
import androidx.work.impl.utils.p089a.C3117c;
import androidx.work.impl.utils.p090b.AbstractC3119a;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
/* renamed from: androidx.work.impl.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/d.class */
public final class C3046d implements AbstractC3027b, AbstractC3053a {

    /* renamed from: a */
    private static final String f11283a = AbstractC3145k.m39275a("Processor");

    /* renamed from: c */
    private Context f11285c;

    /* renamed from: d */
    private Configuration f11286d;

    /* renamed from: e */
    private AbstractC3119a f11287e;

    /* renamed from: f */
    private WorkDatabase f11288f;

    /* renamed from: i */
    private List<AbstractC3048e> f11291i;

    /* renamed from: h */
    private Map<String, RunnableC3069k> f11290h = new HashMap();

    /* renamed from: g */
    private Map<String, RunnableC3069k> f11289g = new HashMap();

    /* renamed from: j */
    private Set<String> f11292j = new HashSet();

    /* renamed from: k */
    private final List<AbstractC3027b> f11293k = new ArrayList();

    /* renamed from: b */
    private PowerManager.WakeLock f11284b = null;

    /* renamed from: l */
    private final Object f11294l = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/d$a.class */
    public static final class RunnableC3047a implements Runnable {

        /* renamed from: a */
        private AbstractC3027b f11295a;

        /* renamed from: b */
        private String f11296b;

        /* renamed from: c */
        private AbstractFutureC15579a<Boolean> f11297c;

        RunnableC3047a(AbstractC3027b abstractC3027b, String str, AbstractFutureC15579a<Boolean> abstractFutureC15579a) {
            this.f11295a = abstractC3027b;
            this.f11296b = str;
            this.f11297c = abstractFutureC15579a;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            try {
                z = this.f11297c.get().booleanValue();
            } catch (InterruptedException | ExecutionException e) {
                z = true;
            }
            this.f11295a.mo39374a(this.f11296b, z);
        }
    }

    public C3046d(Context context, Configuration configuration, AbstractC3119a abstractC3119a, WorkDatabase workDatabase, List<AbstractC3048e> list) {
        this.f11285c = context;
        this.f11286d = configuration;
        this.f11287e = abstractC3119a;
        this.f11288f = workDatabase;
        this.f11291i = list;
    }

    /* renamed from: a */
    private void m39399a() {
        synchronized (this.f11294l) {
            if (!(!this.f11289g.isEmpty())) {
                this.f11285c.startService(C3054b.m39378a(this.f11285c));
                PowerManager.WakeLock wakeLock = this.f11284b;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.f11284b = null;
                }
            }
        }
    }

    /* renamed from: a */
    private static boolean m39395a(String str, RunnableC3069k runnableC3069k) {
        if (runnableC3069k == null) {
            AbstractC3145k.m39277a();
            String.format("WorkerWrapper could not be found for %s", str);
            return false;
        }
        runnableC3069k.m39350b();
        AbstractC3145k.m39277a();
        String.format("WorkerWrapper interrupted for %s", str);
        return true;
    }

    /* renamed from: a */
    public final void m39398a(AbstractC3027b abstractC3027b) {
        synchronized (this.f11294l) {
            this.f11293k.add(abstractC3027b);
        }
    }

    @Override // androidx.work.impl.foreground.AbstractC3053a
    /* renamed from: a */
    public final void mo39381a(String str, C2995f c2995f) {
        synchronized (this.f11294l) {
            AbstractC3145k.m39277a();
            String.format("Moving WorkSpec (%s) to the foreground", str);
            RunnableC3069k remove = this.f11290h.remove(str);
            if (remove != null) {
                if (this.f11284b == null) {
                    PowerManager.WakeLock m39287a = C3132k.m39287a(this.f11285c, "ProcessorForegroundLck");
                    this.f11284b = m39287a;
                    m39287a.acquire();
                }
                this.f11289g.put(str, remove);
                C0790b.m44501a(this.f11285c, C3054b.m39377a(this.f11285c, str, c2995f));
            }
        }
    }

    @Override // androidx.work.impl.AbstractC3027b
    /* renamed from: a */
    public final void mo39374a(String str, boolean z) {
        synchronized (this.f11294l) {
            this.f11290h.remove(str);
            AbstractC3145k.m39277a();
            String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z));
            for (AbstractC3027b abstractC3027b : this.f11293k) {
                abstractC3027b.mo39374a(str, z);
            }
        }
    }

    /* renamed from: a */
    public final boolean m39397a(String str) {
        boolean m39395a;
        synchronized (this.f11294l) {
            AbstractC3145k.m39277a();
            String.format("Processor stopping foreground work %s", str);
            m39395a = m39395a(str, this.f11289g.remove(str));
        }
        return m39395a;
    }

    /* renamed from: a */
    public final boolean m39396a(String str, WorkerParameters.C2985a c2985a) {
        synchronized (this.f11294l) {
            if (m39390f(str)) {
                AbstractC3145k.m39277a();
                String.format("Work %s is already enqueued for processing", str);
                return false;
            }
            RunnableC3069k.C3072a c3072a = new RunnableC3069k.C3072a(this.f11285c, this.f11286d, this.f11287e, this, this.f11288f, str);
            c3072a.f11395h = this.f11291i;
            if (c2985a != null) {
                c3072a.f11396i = c2985a;
            }
            RunnableC3069k runnableC3069k = new RunnableC3069k(c3072a);
            C3117c<Boolean> c3117c = runnableC3069k.f11368f;
            c3117c.mo8638a(new RunnableC3047a(this, str, c3117c), this.f11287e.mo39303a());
            this.f11290h.put(str, runnableC3069k);
            this.f11287e.mo39301b().execute(runnableC3069k);
            AbstractC3145k.m39277a();
            String.format("%s: processing %s", getClass().getSimpleName(), str);
            return true;
        }
    }

    /* renamed from: b */
    public final void m39394b(AbstractC3027b abstractC3027b) {
        synchronized (this.f11294l) {
            this.f11293k.remove(abstractC3027b);
        }
    }

    /* renamed from: b */
    public final boolean m39393b(String str) {
        boolean m39395a;
        synchronized (this.f11294l) {
            AbstractC3145k.m39277a();
            String.format("Processor stopping background work %s", str);
            m39395a = m39395a(str, this.f11290h.remove(str));
        }
        return m39395a;
    }

    /* renamed from: c */
    public final boolean m39392c(String str) {
        boolean m39395a;
        synchronized (this.f11294l) {
            AbstractC3145k.m39277a();
            boolean z = true;
            String.format("Processor cancelling %s", str);
            this.f11292j.add(str);
            RunnableC3069k remove = this.f11289g.remove(str);
            if (remove == null) {
                z = false;
            }
            RunnableC3069k runnableC3069k = remove;
            if (remove == null) {
                runnableC3069k = this.f11290h.remove(str);
            }
            m39395a = m39395a(str, runnableC3069k);
            if (z) {
                m39399a();
            }
        }
        return m39395a;
    }

    @Override // androidx.work.impl.foreground.AbstractC3053a
    /* renamed from: d */
    public final void mo39380d(String str) {
        synchronized (this.f11294l) {
            this.f11289g.remove(str);
            m39399a();
        }
    }

    /* renamed from: e */
    public final boolean m39391e(String str) {
        boolean contains;
        synchronized (this.f11294l) {
            contains = this.f11292j.contains(str);
        }
        return contains;
    }

    /* renamed from: f */
    public final boolean m39390f(String str) {
        boolean z;
        synchronized (this.f11294l) {
            if (!this.f11290h.containsKey(str) && !this.f11289g.containsKey(str)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* renamed from: g */
    public final boolean m39389g(String str) {
        boolean containsKey;
        synchronized (this.f11294l) {
            containsKey = this.f11289g.containsKey(str);
        }
        return containsKey;
    }
}
