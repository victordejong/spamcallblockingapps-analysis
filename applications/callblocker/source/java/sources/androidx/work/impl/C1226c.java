package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.AbstractC1293l;
import androidx.work.C1126b;
import androidx.work.WorkerParameters;
import androidx.work.impl.RunnableC1250j;
import androidx.work.impl.foreground.AbstractC1235a;
import androidx.work.impl.foreground.SystemForegroundService;
import androidx.work.impl.utils.p058b.AbstractC1271a;
import com.google.p112a.p113a.p114a.AbstractFutureC2212a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
/* renamed from: androidx.work.impl.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/c.class */
public class C1226c implements AbstractC1142a, AbstractC1235a {

    /* renamed from: a */
    private static final String f4126a = AbstractC1293l.m17541a("Processor");

    /* renamed from: c */
    private Context f4128c;

    /* renamed from: d */
    private C1126b f4129d;

    /* renamed from: e */
    private AbstractC1271a f4130e;

    /* renamed from: f */
    private WorkDatabase f4131f;

    /* renamed from: i */
    private List<AbstractC1228d> f4134i;

    /* renamed from: h */
    private Map<String, RunnableC1250j> f4133h = new HashMap();

    /* renamed from: g */
    private Map<String, RunnableC1250j> f4132g = new HashMap();

    /* renamed from: j */
    private Set<String> f4135j = new HashSet();

    /* renamed from: k */
    private final List<AbstractC1142a> f4136k = new ArrayList();

    /* renamed from: b */
    private PowerManager.WakeLock f4127b = null;

    /* renamed from: l */
    private final Object f4137l = new Object();

    /* renamed from: androidx.work.impl.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/c$a.class */
    public static class RunnableC1227a implements Runnable {

        /* renamed from: a */
        private AbstractC1142a f4138a;

        /* renamed from: b */
        private String f4139b;

        /* renamed from: c */
        private AbstractFutureC2212a<Boolean> f4140c;

        RunnableC1227a(AbstractC1142a abstractC1142a, String str, AbstractFutureC2212a<Boolean> abstractFutureC2212a) {
            this.f4138a = abstractC1142a;
            this.f4139b = str;
            this.f4140c = abstractFutureC2212a;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            try {
                z = this.f4140c.get().booleanValue();
            } catch (InterruptedException | ExecutionException e) {
                z = true;
            }
            this.f4138a.mo17680a(this.f4139b, z);
        }
    }

    public C1226c(Context context, C1126b c1126b, AbstractC1271a abstractC1271a, WorkDatabase workDatabase, List<AbstractC1228d> list) {
        this.f4128c = context;
        this.f4129d = c1126b;
        this.f4130e = abstractC1271a;
        this.f4131f = workDatabase;
        this.f4134i = list;
    }

    /* renamed from: a */
    private void m17716a() {
        boolean z = false;
        synchronized (this.f4137l) {
            if (!this.f4132g.isEmpty()) {
                z = true;
            }
            if (!z) {
                SystemForegroundService m17686d = SystemForegroundService.m17686d();
                if (m17686d != null) {
                    AbstractC1293l.m17543a().mo17539b(f4126a, "No more foreground work. Stopping SystemForegroundService", new Throwable[0]);
                    m17686d.m17687c();
                } else {
                    AbstractC1293l.m17543a().mo17539b(f4126a, "No more foreground work. SystemForegroundService is already stopped", new Throwable[0]);
                }
                if (this.f4127b != null) {
                    this.f4127b.release();
                    this.f4127b = null;
                }
            }
        }
    }

    /* renamed from: a */
    private static boolean m17712a(String str, RunnableC1250j runnableC1250j) {
        boolean z = true;
        if (runnableC1250j != null) {
            runnableC1250j.m17637c();
            AbstractC1293l.m17543a().mo17539b(f4126a, String.format("WorkerWrapper interrupted for %s", str), new Throwable[0]);
        } else {
            AbstractC1293l.m17543a().mo17539b(f4126a, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public void m17715a(AbstractC1142a abstractC1142a) {
        synchronized (this.f4137l) {
            this.f4136k.add(abstractC1142a);
        }
    }

    @Override // androidx.work.impl.AbstractC1142a
    /* renamed from: a */
    public void mo17680a(String str, boolean z) {
        synchronized (this.f4137l) {
            this.f4133h.remove(str);
            AbstractC1293l.m17543a().mo17539b(f4126a, String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z)), new Throwable[0]);
            for (AbstractC1142a abstractC1142a : this.f4136k) {
                abstractC1142a.mo17680a(str, z);
            }
        }
    }

    /* renamed from: a */
    public boolean m17714a(String str) {
        return m17713a(str, (WorkerParameters.C1124a) null);
    }

    /* renamed from: a */
    public boolean m17713a(String str, WorkerParameters.C1124a c1124a) {
        boolean z;
        synchronized (this.f4137l) {
            if (this.f4133h.containsKey(str)) {
                AbstractC1293l.m17543a().mo17539b(f4126a, String.format("Work %s is already enqueued for processing", str), new Throwable[0]);
                z = false;
            } else {
                RunnableC1250j m17628a = new RunnableC1250j.C1253a(this.f4128c, this.f4129d, this.f4130e, this, this.f4131f, str).m17626a(this.f4134i).m17627a(c1124a).m17628a();
                AbstractFutureC2212a<Boolean> m17643a = m17628a.m17643a();
                m17643a.mo14921a(new RunnableC1227a(this, str, m17643a), this.f4130e.mo17578a());
                this.f4133h.put(str, m17628a);
                this.f4130e.mo17576b().execute(m17628a);
                AbstractC1293l.m17543a().mo17539b(f4126a, String.format("%s: processing %s", getClass().getSimpleName(), str), new Throwable[0]);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public void m17711b(AbstractC1142a abstractC1142a) {
        synchronized (this.f4137l) {
            this.f4136k.remove(abstractC1142a);
        }
    }

    /* renamed from: b */
    public boolean m17710b(String str) {
        boolean m17712a;
        synchronized (this.f4137l) {
            AbstractC1293l.m17543a().mo17539b(f4126a, String.format("Processor stopping foreground work %s", str), new Throwable[0]);
            m17712a = m17712a(str, this.f4132g.remove(str));
        }
        return m17712a;
    }

    /* renamed from: c */
    public boolean m17709c(String str) {
        boolean m17712a;
        synchronized (this.f4137l) {
            AbstractC1293l.m17543a().mo17539b(f4126a, String.format("Processor stopping background work %s", str), new Throwable[0]);
            m17712a = m17712a(str, this.f4133h.remove(str));
        }
        return m17712a;
    }

    /* renamed from: d */
    public boolean m17708d(String str) {
        boolean m17712a;
        boolean z = true;
        synchronized (this.f4137l) {
            AbstractC1293l.m17543a().mo17539b(f4126a, String.format("Processor cancelling %s", str), new Throwable[0]);
            this.f4135j.add(str);
            RunnableC1250j remove = this.f4132g.remove(str);
            if (remove == null) {
                z = false;
            }
            RunnableC1250j runnableC1250j = remove;
            if (remove == null) {
                runnableC1250j = this.f4133h.remove(str);
            }
            m17712a = m17712a(str, runnableC1250j);
            if (z) {
                m17716a();
            }
        }
        return m17712a;
    }

    @Override // androidx.work.impl.foreground.AbstractC1235a
    /* renamed from: e */
    public void mo17684e(String str) {
        synchronized (this.f4137l) {
            this.f4132g.remove(str);
            m17716a();
        }
    }

    /* renamed from: f */
    public boolean m17707f(String str) {
        boolean contains;
        synchronized (this.f4137l) {
            contains = this.f4135j.contains(str);
        }
        return contains;
    }

    /* renamed from: g */
    public boolean m17706g(String str) {
        boolean z;
        synchronized (this.f4137l) {
            z = this.f4133h.containsKey(str) || this.f4132g.containsKey(str);
        }
        return z;
    }

    /* renamed from: h */
    public boolean m17705h(String str) {
        boolean containsKey;
        synchronized (this.f4137l) {
            containsKey = this.f4132g.containsKey(str);
        }
        return containsKey;
    }
}
