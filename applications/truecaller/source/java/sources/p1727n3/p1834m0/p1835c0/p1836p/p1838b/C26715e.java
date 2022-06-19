package p1727n3.p1834m0.p1835c0.p1836p.p1838b;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.AbstractC26682b;
import p1727n3.p1834m0.p1835c0.C26684d;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1845t.C26797q;
import p1727n3.p1834m0.p1835c0.p1845t.C26805v;
import p1727n3.p1834m0.p1835c0.p1845t.ExecutorC26790k;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* renamed from: n3.m0.c0.p.b.e */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/p/b/e.class */
public class C26715e implements AbstractC26682b {

    /* renamed from: k */
    public static final String f74801k = AbstractC26839p.m1295e("SystemAlarmDispatcher");

    /* renamed from: a */
    public final Context f74802a;

    /* renamed from: b */
    public final AbstractC26821a f74803b;

    /* renamed from: d */
    public final C26684d f74805d;

    /* renamed from: e */
    public final C26702l f74806e;

    /* renamed from: f */
    public final C26712b f74807f;

    /* renamed from: j */
    public AbstractC26718c f74811j;

    /* renamed from: c */
    public final C26805v f74804c = new C26805v();

    /* renamed from: h */
    public final List<Intent> f74809h = new ArrayList();

    /* renamed from: i */
    public Intent f74810i = null;

    /* renamed from: g */
    public final Handler f74808g = new Handler(Looper.getMainLooper());

    /* renamed from: n3.m0.c0.p.b.e$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/p/b/e$a.class */
    public class RunnableC26716a implements Runnable {
        public RunnableC26716a() {
            C26715e.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C26715e c26715e;
            RunnableC26719d runnableC26719d;
            synchronized (C26715e.this.f74809h) {
                C26715e c26715e2 = C26715e.this;
                c26715e2.f74810i = c26715e2.f74809h.get(0);
            }
            Intent intent = C26715e.this.f74810i;
            if (intent != null) {
                String action = intent.getAction();
                int intExtra = C26715e.this.f74810i.getIntExtra("KEY_START_ID", 0);
                AbstractC26839p m1296c = AbstractC26839p.m1296c();
                String str = C26715e.f74801k;
                m1296c.mo1294a(str, String.format("Processing command %s, %s", C26715e.this.f74810i, Integer.valueOf(intExtra)), new Throwable[0]);
                PowerManager.WakeLock m1326a = C26797q.m1326a(C26715e.this.f74802a, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                try {
                    AbstractC26839p.m1296c().mo1294a(str, String.format("Acquiring operation wake lock (%s) %s", action, m1326a), new Throwable[0]);
                    m1326a.acquire();
                    C26715e c26715e3 = C26715e.this;
                    c26715e3.f74807f.m1411e(c26715e3.f74810i, intExtra, c26715e3);
                    AbstractC26839p.m1296c().mo1294a(str, String.format("Releasing operation wake lock (%s) %s", action, m1326a), new Throwable[0]);
                    m1326a.release();
                    c26715e = C26715e.this;
                    runnableC26719d = new RunnableC26719d(c26715e);
                } catch (Throwable th) {
                    try {
                        AbstractC26839p m1296c2 = AbstractC26839p.m1296c();
                        String str2 = C26715e.f74801k;
                        m1296c2.mo1293b(str2, "Unexpected error in onHandleIntent", th);
                        AbstractC26839p.m1296c().mo1294a(str2, String.format("Releasing operation wake lock (%s) %s", action, m1326a), new Throwable[0]);
                        m1326a.release();
                        c26715e = C26715e.this;
                        runnableC26719d = new RunnableC26719d(c26715e);
                    } catch (Throwable th2) {
                        AbstractC26839p.m1296c().mo1294a(C26715e.f74801k, String.format("Releasing operation wake lock (%s) %s", action, m1326a), new Throwable[0]);
                        m1326a.release();
                        C26715e c26715e4 = C26715e.this;
                        c26715e4.f74808g.post(new RunnableC26719d(c26715e4));
                        throw th2;
                    }
                }
                c26715e.f74808g.post(runnableC26719d);
            }
        }
    }

    /* renamed from: n3.m0.c0.p.b.e$b */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/p/b/e$b.class */
    public static class RunnableC26717b implements Runnable {

        /* renamed from: a */
        public final C26715e f74813a;

        /* renamed from: b */
        public final Intent f74814b;

        /* renamed from: c */
        public final int f74815c;

        public RunnableC26717b(C26715e c26715e, Intent intent, int i) {
            this.f74813a = c26715e;
            this.f74814b = intent;
            this.f74815c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f74813a.m1407a(this.f74814b, this.f74815c);
        }
    }

    /* renamed from: n3.m0.c0.p.b.e$c */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/p/b/e$c.class */
    public interface AbstractC26718c {
    }

    /* renamed from: n3.m0.c0.p.b.e$d */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/p/b/e$d.class */
    public static class RunnableC26719d implements Runnable {

        /* renamed from: a */
        public final C26715e f74816a;

        public RunnableC26719d(C26715e c26715e) {
            this.f74816a = c26715e;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            boolean z2;
            C26715e c26715e = this.f74816a;
            Objects.requireNonNull(c26715e);
            AbstractC26839p m1296c = AbstractC26839p.m1296c();
            String str = C26715e.f74801k;
            m1296c.mo1294a(str, "Checking if commands are complete.", new Throwable[0]);
            c26715e.m1406c();
            synchronized (c26715e.f74809h) {
                if (c26715e.f74810i != null) {
                    AbstractC26839p.m1296c().mo1294a(str, String.format("Removing command %s", c26715e.f74810i), new Throwable[0]);
                    if (!c26715e.f74809h.remove(0).equals(c26715e.f74810i)) {
                        throw new IllegalStateException("Dequeue-d command is not the first.");
                    }
                    c26715e.f74810i = null;
                }
                ExecutorC26790k executorC26790k = ((C26822b) c26715e.f74803b).f75051a;
                C26712b c26712b = c26715e.f74807f;
                synchronized (c26712b.f74785c) {
                    z = !c26712b.f74784b.isEmpty();
                }
                if (!z && c26715e.f74809h.isEmpty()) {
                    synchronized (executorC26790k.f74969c) {
                        z2 = !executorC26790k.f74967a.isEmpty();
                    }
                    if (!z2) {
                        AbstractC26839p.m1296c().mo1294a(str, "No more commands & intents.", new Throwable[0]);
                        SystemAlarmService systemAlarmService = c26715e.f74811j;
                        if (systemAlarmService != null) {
                            systemAlarmService.j();
                        }
                    }
                }
                if (!c26715e.f74809h.isEmpty()) {
                    c26715e.m1404e();
                }
            }
        }
    }

    public C26715e(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f74802a = applicationContext;
        this.f74807f = new C26712b(applicationContext);
        C26702l m1431n = C26702l.m1431n(context);
        this.f74806e = m1431n;
        C26684d c26684d = m1431n.f74728f;
        this.f74805d = c26684d;
        this.f74803b = m1431n.f74726d;
        c26684d.m1447a(this);
    }

    /* renamed from: a */
    public boolean m1407a(Intent intent, int i) {
        boolean z;
        AbstractC26839p m1296c = AbstractC26839p.m1296c();
        String str = f74801k;
        m1296c.mo1294a(str, String.format("Adding command %s (%s)", intent, Integer.valueOf(i)), new Throwable[0]);
        m1406c();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            AbstractC26839p.m1296c().mo1291f(str, "Unknown command. Ignoring", new Throwable[0]);
            return false;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            m1406c();
            synchronized (this.f74809h) {
                Iterator<Intent> it = this.f74809h.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    } else if ("ACTION_CONSTRAINTS_CHANGED".equals(it.next().getAction())) {
                        z = true;
                        break;
                    }
                }
            }
            if (z) {
                return false;
            }
        }
        intent.putExtra("KEY_START_ID", i);
        synchronized (this.f74809h) {
            boolean z2 = false;
            if (!this.f74809h.isEmpty()) {
                z2 = true;
            }
            this.f74809h.add(intent);
            if (!z2) {
                m1404e();
            }
        }
        return true;
    }

    @Override // p1727n3.p1834m0.p1835c0.AbstractC26682b
    /* renamed from: b */
    public void mo1376b(String str, boolean z) {
        Context context = this.f74802a;
        String str2 = C26712b.f74782d;
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        this.f74808g.post(new RunnableC26717b(this, intent, 0));
    }

    /* renamed from: c */
    public final void m1406c() {
        if (this.f74808g.getLooper().getThread() == Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException("Needs to be invoked on the main thread.");
    }

    /* renamed from: d */
    public void m1405d() {
        AbstractC26839p.m1296c().mo1294a(f74801k, "Destroying SystemAlarmDispatcher", new Throwable[0]);
        this.f74805d.m1444e(this);
        C26805v c26805v = this.f74804c;
        if (!c26805v.f75015b.isShutdown()) {
            c26805v.f75015b.shutdownNow();
        }
        this.f74811j = null;
    }

    /* renamed from: e */
    public final void m1404e() {
        m1406c();
        PowerManager.WakeLock m1326a = C26797q.m1326a(this.f74802a, "ProcessCommand");
        try {
            m1326a.acquire();
            AbstractC26821a abstractC26821a = this.f74806e.f74726d;
            ((C26822b) abstractC26821a).f75051a.execute(new RunnableC26716a());
        } finally {
            m1326a.release();
        }
    }
}
