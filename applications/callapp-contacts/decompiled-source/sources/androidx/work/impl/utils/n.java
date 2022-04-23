package androidx.work.impl.utils;

import androidx.work.k;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n.class */
public final class n {
    private static final String e = k.a("WorkTimer");

    /* renamed from: a  reason: collision with root package name */
    public final ScheduledExecutorService f6213a;

    /* renamed from: b  reason: collision with root package name */
    public final Map<String, b> f6214b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, a> f6215c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final Object f6216d = new Object();
    private final ThreadFactory f;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n$a.class */
    public interface a {
        void a(String str);
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n$b.class */
    public static final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final n f6219a;

        /* renamed from: b  reason: collision with root package name */
        private final String f6220b;

        public b(n nVar, String str) {
            this.f6219a = nVar;
            this.f6220b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this.f6219a.f6216d) {
                if (this.f6219a.f6214b.remove(this.f6220b) != null) {
                    a remove = this.f6219a.f6215c.remove(this.f6220b);
                    if (remove != null) {
                        remove.a(this.f6220b);
                    }
                } else {
                    k.a();
                    String.format("Timer with %s is already marked as complete.", this.f6220b);
                }
            }
        }
    }

    public n() {
        ThreadFactory threadFactory = new ThreadFactory() { // from class: androidx.work.impl.utils.n.1

            /* renamed from: b  reason: collision with root package name */
            private int f6218b = 0;

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
                newThread.setName("WorkManager-WorkTimer-thread-" + this.f6218b);
                this.f6218b = this.f6218b + 1;
                return newThread;
            }
        };
        this.f = threadFactory;
        this.f6213a = Executors.newSingleThreadScheduledExecutor(threadFactory);
    }

    public final void a(String str) {
        synchronized (this.f6216d) {
            if (this.f6214b.remove(str) != null) {
                k.a();
                String.format("Stopping timer for %s", str);
                this.f6215c.remove(str);
            }
        }
    }
}
