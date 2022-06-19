package p292y1;

import android.support.p012v4.media.C0082b;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import p186o1.AbstractC3824h;
/* renamed from: y1.r */
/* loaded from: classes-dex2jar.jar:y1/r.class */
public class C4975r {

    /* renamed from: e */
    public static final String f15170e = AbstractC3824h.m1773e("WorkTimer");

    /* renamed from: a */
    public final ScheduledExecutorService f15171a;

    /* renamed from: b */
    public final Map<String, RunnableC4978c> f15172b = new HashMap();

    /* renamed from: c */
    public final Map<String, AbstractC4977b> f15173c = new HashMap();

    /* renamed from: d */
    public final Object f15174d = new Object();

    /* renamed from: y1.r$a */
    /* loaded from: classes-dex2jar.jar:y1/r$a.class */
    public class ThreadFactoryC4976a implements ThreadFactory {

        /* renamed from: a */
        public int f15175a = 0;

        public ThreadFactoryC4976a(C4975r c4975r) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            StringBuilder m8752j = C0082b.m8752j("WorkManager-WorkTimer-thread-");
            m8752j.append(this.f15175a);
            newThread.setName(m8752j.toString());
            this.f15175a++;
            return newThread;
        }
    }

    /* renamed from: y1.r$b */
    /* loaded from: classes-dex2jar.jar:y1/r$b.class */
    public interface AbstractC4977b {
        /* renamed from: b */
        void mo167b(String str);
    }

    /* renamed from: y1.r$c */
    /* loaded from: classes-dex2jar.jar:y1/r$c.class */
    public static class RunnableC4978c implements Runnable {

        /* renamed from: a */
        public final C4975r f15176a;

        /* renamed from: b */
        public final String f15177b;

        public RunnableC4978c(C4975r c4975r, String str) {
            this.f15176a = c4975r;
            this.f15177b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f15176a.f15174d) {
                if (this.f15176a.f15172b.remove(this.f15177b) != null) {
                    AbstractC4977b remove = this.f15176a.f15173c.remove(this.f15177b);
                    if (remove != null) {
                        remove.mo167b(this.f15177b);
                    }
                } else {
                    AbstractC3824h.m1774c().mo1772a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", this.f15177b), new Throwable[0]);
                }
            }
        }
    }

    public C4975r() {
        ThreadFactoryC4976a threadFactoryC4976a = new ThreadFactoryC4976a(this);
        this.f15171a = Executors.newSingleThreadScheduledExecutor(threadFactoryC4976a);
    }

    /* renamed from: a */
    public void m169a(String str, long j, AbstractC4977b abstractC4977b) {
        synchronized (this.f15174d) {
            AbstractC3824h.m1774c().mo1772a(f15170e, String.format("Starting timer for %s", str), new Throwable[0]);
            m168b(str);
            RunnableC4978c runnableC4978c = new RunnableC4978c(this, str);
            this.f15172b.put(str, runnableC4978c);
            this.f15173c.put(str, abstractC4977b);
            this.f15171a.schedule(runnableC4978c, j, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: b */
    public void m168b(String str) {
        synchronized (this.f15174d) {
            if (this.f15172b.remove(str) != null) {
                AbstractC3824h.m1774c().mo1772a(f15170e, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.f15173c.remove(str);
            }
        }
    }
}
