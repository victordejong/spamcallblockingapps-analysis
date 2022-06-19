package androidx.work.impl.utils;

import androidx.work.AbstractC3145k;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* renamed from: androidx.work.impl.utils.n */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n.class */
public final class C3137n {

    /* renamed from: e */
    private static final String f11487e = AbstractC3145k.m39275a("WorkTimer");

    /* renamed from: a */
    public final ScheduledExecutorService f11488a;

    /* renamed from: b */
    public final Map<String, RunnableC3140b> f11489b = new HashMap();

    /* renamed from: c */
    public final Map<String, AbstractC3139a> f11490c = new HashMap();

    /* renamed from: d */
    public final Object f11491d = new Object();

    /* renamed from: f */
    private final ThreadFactory f11492f;

    /* renamed from: androidx.work.impl.utils.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n$a.class */
    public interface AbstractC3139a {
        /* renamed from: a */
        void mo39284a(String str);
    }

    /* renamed from: androidx.work.impl.utils.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n$b.class */
    public static final class RunnableC3140b implements Runnable {

        /* renamed from: a */
        private final C3137n f11495a;

        /* renamed from: b */
        private final String f11496b;

        public RunnableC3140b(C3137n c3137n, String str) {
            this.f11495a = c3137n;
            this.f11496b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this.f11495a.f11491d) {
                if (this.f11495a.f11489b.remove(this.f11496b) != null) {
                    AbstractC3139a remove = this.f11495a.f11490c.remove(this.f11496b);
                    if (remove != null) {
                        remove.mo39284a(this.f11496b);
                    }
                } else {
                    AbstractC3145k.m39277a();
                    String.format("Timer with %s is already marked as complete.", this.f11496b);
                }
            }
        }
    }

    public C3137n() {
        ThreadFactory threadFactory = new ThreadFactory() { // from class: androidx.work.impl.utils.n.1

            /* renamed from: b */
            private int f11494b = 0;

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
                newThread.setName("WorkManager-WorkTimer-thread-" + this.f11494b);
                this.f11494b = this.f11494b + 1;
                return newThread;
            }
        };
        this.f11492f = threadFactory;
        this.f11488a = Executors.newSingleThreadScheduledExecutor(threadFactory);
    }

    /* renamed from: a */
    public final void m39285a(String str) {
        synchronized (this.f11491d) {
            if (this.f11489b.remove(str) != null) {
                AbstractC3145k.m39277a();
                String.format("Stopping timer for %s", str);
                this.f11490c.remove(str);
            }
        }
    }
}
