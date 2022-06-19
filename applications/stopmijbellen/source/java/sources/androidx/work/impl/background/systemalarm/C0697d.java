package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p003a2.AbstractC0008a;
import p003a2.C0009b;
import p186o1.AbstractC3824h;
import p197p1.AbstractC3996a;
import p197p1.C3998c;
import p197p1.C4006j;
import p292y1.C4967m;
import p292y1.C4975r;
import p292y1.ExecutorC4963j;
/* renamed from: androidx.work.impl.background.systemalarm.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/d.class */
public class C0697d implements AbstractC3996a {

    /* renamed from: k */
    public static final String f2690k = AbstractC3824h.m1773e("SystemAlarmDispatcher");

    /* renamed from: a */
    public final Context f2691a;

    /* renamed from: b */
    public final AbstractC0008a f2692b;

    /* renamed from: d */
    public final C3998c f2694d;

    /* renamed from: e */
    public final C4006j f2695e;

    /* renamed from: f */
    public final C0694a f2696f;

    /* renamed from: j */
    public AbstractC0700c f2700j;

    /* renamed from: c */
    public final C4975r f2693c = new C4975r();

    /* renamed from: h */
    public final List<Intent> f2698h = new ArrayList();

    /* renamed from: i */
    public Intent f2699i = null;

    /* renamed from: g */
    public final Handler f2697g = new Handler(Looper.getMainLooper());

    /* renamed from: androidx.work.impl.background.systemalarm.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/d$a.class */
    public class RunnableC0698a implements Runnable {
        public RunnableC0698a() {
            C0697d.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0697d c0697d;
            RunnableC0701d runnableC0701d;
            synchronized (C0697d.this.f2698h) {
                C0697d c0697d2 = C0697d.this;
                c0697d2.f2699i = c0697d2.f2698h.get(0);
            }
            Intent intent = C0697d.this.f2699i;
            if (intent != null) {
                String action = intent.getAction();
                int intExtra = C0697d.this.f2699i.getIntExtra("KEY_START_ID", 0);
                AbstractC3824h m1774c = AbstractC3824h.m1774c();
                String str = C0697d.f2690k;
                m1774c.mo1772a(str, String.format("Processing command %s, %s", C0697d.this.f2699i, Integer.valueOf(intExtra)), new Throwable[0]);
                PowerManager.WakeLock m171a = C4967m.m171a(C0697d.this.f2691a, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                try {
                    AbstractC3824h.m1774c().mo1772a(str, String.format("Acquiring operation wake lock (%s) %s", action, m171a), new Throwable[0]);
                    m171a.acquire();
                    C0697d c0697d3 = C0697d.this;
                    c0697d3.f2696f.m7468e(c0697d3.f2699i, intExtra, c0697d3);
                    AbstractC3824h.m1774c().mo1772a(str, String.format("Releasing operation wake lock (%s) %s", action, m171a), new Throwable[0]);
                    m171a.release();
                    c0697d = C0697d.this;
                    runnableC0701d = new RunnableC0701d(c0697d);
                } catch (Throwable th) {
                    try {
                        AbstractC3824h m1774c2 = AbstractC3824h.m1774c();
                        String str2 = C0697d.f2690k;
                        m1774c2.mo1771b(str2, "Unexpected error in onHandleIntent", th);
                        AbstractC3824h.m1774c().mo1772a(str2, String.format("Releasing operation wake lock (%s) %s", action, m171a), new Throwable[0]);
                        m171a.release();
                        c0697d = C0697d.this;
                        runnableC0701d = new RunnableC0701d(c0697d);
                    } catch (Throwable th2) {
                        AbstractC3824h.m1774c().mo1772a(C0697d.f2690k, String.format("Releasing operation wake lock (%s) %s", action, m171a), new Throwable[0]);
                        m171a.release();
                        C0697d c0697d4 = C0697d.this;
                        c0697d4.f2697g.post(new RunnableC0701d(c0697d4));
                        throw th2;
                    }
                }
                c0697d.f2697g.post(runnableC0701d);
            }
        }
    }

    /* renamed from: androidx.work.impl.background.systemalarm.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/d$b.class */
    public static class RunnableC0699b implements Runnable {

        /* renamed from: a */
        public final C0697d f2702a;

        /* renamed from: b */
        public final Intent f2703b;

        /* renamed from: c */
        public final int f2704c;

        public RunnableC0699b(C0697d c0697d, Intent intent, int i) {
            this.f2702a = c0697d;
            this.f2703b = intent;
            this.f2704c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2702a.m7464b(this.f2703b, this.f2704c);
        }
    }

    /* renamed from: androidx.work.impl.background.systemalarm.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/d$c.class */
    public interface AbstractC0700c {
    }

    /* renamed from: androidx.work.impl.background.systemalarm.d$d */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/d$d.class */
    public static class RunnableC0701d implements Runnable {

        /* renamed from: a */
        public final C0697d f2705a;

        public RunnableC0701d(C0697d c0697d) {
            this.f2705a = c0697d;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            boolean z2;
            C0697d c0697d = this.f2705a;
            Objects.requireNonNull(c0697d);
            AbstractC3824h m1774c = AbstractC3824h.m1774c();
            String str = C0697d.f2690k;
            m1774c.mo1772a(str, "Checking if commands are complete.", new Throwable[0]);
            c0697d.m7463c();
            synchronized (c0697d.f2698h) {
                if (c0697d.f2699i != null) {
                    AbstractC3824h.m1774c().mo1772a(str, String.format("Removing command %s", c0697d.f2699i), new Throwable[0]);
                    if (!c0697d.f2698h.remove(0).equals(c0697d.f2699i)) {
                        throw new IllegalStateException("Dequeue-d command is not the first.");
                    }
                    c0697d.f2699i = null;
                }
                ExecutorC4963j executorC4963j = ((C0009b) c0697d.f2692b).f8a;
                C0694a c0694a = c0697d.f2696f;
                synchronized (c0694a.f2674c) {
                    z = !c0694a.f2673b.isEmpty();
                }
                if (!z && c0697d.f2698h.isEmpty()) {
                    synchronized (executorC4963j.f15131c) {
                        z2 = !executorC4963j.f15129a.isEmpty();
                    }
                    if (!z2) {
                        AbstractC3824h.m1774c().mo1772a(str, "No more commands & intents.", new Throwable[0]);
                        AbstractC0700c abstractC0700c = c0697d.f2700j;
                        if (abstractC0700c != null) {
                            ((SystemAlarmService) abstractC0700c).m7472c();
                        }
                    }
                }
                if (!c0697d.f2698h.isEmpty()) {
                    c0697d.m7461e();
                }
            }
        }
    }

    public C0697d(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f2691a = applicationContext;
        this.f2696f = new C0694a(applicationContext);
        C4006j m1535c = C4006j.m1535c(context);
        this.f2695e = m1535c;
        C3998c c3998c = m1535c.f12587f;
        this.f2694d = c3998c;
        this.f2692b = m1535c.f12585d;
        c3998c.m1551b(this);
    }

    @Override // p197p1.AbstractC3996a
    /* renamed from: a */
    public void mo1352a(String str, boolean z) {
        Context context = this.f2691a;
        String str2 = C0694a.f2671d;
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        this.f2697g.post(new RunnableC0699b(this, intent, 0));
    }

    /* renamed from: b */
    public boolean m7464b(Intent intent, int i) {
        boolean z;
        AbstractC3824h m1774c = AbstractC3824h.m1774c();
        String str = f2690k;
        m1774c.mo1772a(str, String.format("Adding command %s (%s)", intent, Integer.valueOf(i)), new Throwable[0]);
        m7463c();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            AbstractC3824h.m1774c().mo1769f(str, "Unknown command. Ignoring", new Throwable[0]);
            return false;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            m7463c();
            synchronized (this.f2698h) {
                Iterator<Intent> it2 = this.f2698h.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z = false;
                        break;
                    } else if ("ACTION_CONSTRAINTS_CHANGED".equals(it2.next().getAction())) {
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
        synchronized (this.f2698h) {
            boolean z2 = false;
            if (!this.f2698h.isEmpty()) {
                z2 = true;
            }
            this.f2698h.add(intent);
            if (!z2) {
                m7461e();
            }
        }
        return true;
    }

    /* renamed from: c */
    public final void m7463c() {
        if (this.f2697g.getLooper().getThread() == Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException("Needs to be invoked on the main thread.");
    }

    /* renamed from: d */
    public void m7462d() {
        AbstractC3824h.m1774c().mo1772a(f2690k, "Destroying SystemAlarmDispatcher", new Throwable[0]);
        this.f2694d.m1548e(this);
        C4975r c4975r = this.f2693c;
        if (!c4975r.f15171a.isShutdown()) {
            c4975r.f15171a.shutdownNow();
        }
        this.f2700j = null;
    }

    /* renamed from: e */
    public final void m7461e() {
        m7463c();
        PowerManager.WakeLock m171a = C4967m.m171a(this.f2691a, "ProcessCommand");
        try {
            m171a.acquire();
            AbstractC0008a abstractC0008a = this.f2695e.f12585d;
            ((C0009b) abstractC0008a).f8a.execute(new RunnableC0698a());
        } finally {
            m171a.release();
        }
    }
}
