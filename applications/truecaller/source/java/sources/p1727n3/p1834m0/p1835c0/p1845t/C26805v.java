package p1727n3.p1834m0.p1835c0.p1845t;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import p1727n3.p1834m0.AbstractC26839p;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.m0.c0.t.v */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/v.class */
public class C26805v {

    /* renamed from: f */
    public static final String f75013f = AbstractC26839p.m1295e("WorkTimer");

    /* renamed from: a */
    public final ThreadFactory f75014a;

    /* renamed from: b */
    public final ScheduledExecutorService f75015b;

    /* renamed from: c */
    public final Map<String, RunnableC26808c> f75016c = new HashMap();

    /* renamed from: d */
    public final Map<String, AbstractC26807b> f75017d = new HashMap();

    /* renamed from: e */
    public final Object f75018e = new Object();

    /* renamed from: n3.m0.c0.t.v$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/v$a.class */
    public class ThreadFactoryC26806a implements ThreadFactory {

        /* renamed from: a */
        public int f75019a = 0;

        public ThreadFactoryC26806a(C26805v c26805v) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            StringBuilder m8728C = C22128a.m8728C("WorkManager-WorkTimer-thread-");
            m8728C.append(this.f75019a);
            newThread.setName(m8728C.toString());
            this.f75019a++;
            return newThread;
        }
    }

    /* renamed from: n3.m0.c0.t.v$b */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/v$b.class */
    public interface AbstractC26807b {
        /* renamed from: a */
        void mo1322a(String str);
    }

    /* renamed from: n3.m0.c0.t.v$c */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/v$c.class */
    public static class RunnableC26808c implements Runnable {

        /* renamed from: a */
        public final C26805v f75020a;

        /* renamed from: b */
        public final String f75021b;

        public RunnableC26808c(C26805v c26805v, String str) {
            this.f75020a = c26805v;
            this.f75021b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f75020a.f75018e) {
                if (this.f75020a.f75016c.remove(this.f75021b) != null) {
                    AbstractC26807b remove = this.f75020a.f75017d.remove(this.f75021b);
                    if (remove != null) {
                        remove.mo1322a(this.f75021b);
                    }
                } else {
                    AbstractC26839p.m1296c().mo1294a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", this.f75021b), new Throwable[0]);
                }
            }
        }
    }

    public C26805v() {
        ThreadFactoryC26806a threadFactoryC26806a = new ThreadFactoryC26806a(this);
        this.f75014a = threadFactoryC26806a;
        this.f75015b = Executors.newSingleThreadScheduledExecutor(threadFactoryC26806a);
    }

    /* renamed from: a */
    public void m1324a(String str, long j, AbstractC26807b abstractC26807b) {
        synchronized (this.f75018e) {
            AbstractC26839p.m1296c().mo1294a(f75013f, String.format("Starting timer for %s", str), new Throwable[0]);
            m1323b(str);
            RunnableC26808c runnableC26808c = new RunnableC26808c(this, str);
            this.f75016c.put(str, runnableC26808c);
            this.f75017d.put(str, abstractC26807b);
            this.f75015b.schedule(runnableC26808c, j, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: b */
    public void m1323b(String str) {
        synchronized (this.f75018e) {
            if (this.f75016c.remove(str) != null) {
                AbstractC26839p.m1296c().mo1294a(f75013f, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.f75017d.remove(str);
            }
        }
    }
}
