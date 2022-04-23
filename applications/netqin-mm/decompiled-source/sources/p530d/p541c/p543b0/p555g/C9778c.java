package p530d.p541c.p543b0.p555g;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.schedulers.RxThreadFactory;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
/* renamed from: d.c.b0.g.c */
/* loaded from: classes2-dex2jar.jar:d/c/b0/g/c.class */
public final class C9778c extends AbstractC9845s {

    /* renamed from: d */
    public static final RxThreadFactory f36944d;

    /* renamed from: e */
    public static final RxThreadFactory f36945e;

    /* renamed from: f */
    public static final TimeUnit f36946f = TimeUnit.SECONDS;

    /* renamed from: g */
    public static final C9781c f36947g;

    /* renamed from: h */
    public static final RunnableC9779a f36948h;

    /* renamed from: b */
    public final ThreadFactory f36949b;

    /* renamed from: c */
    public final AtomicReference<RunnableC9779a> f36950c;

    /* renamed from: d.c.b0.g.c$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/g/c$a.class */
    public static final class RunnableC9779a implements Runnable {

        /* renamed from: a */
        public final long f36951a;

        /* renamed from: b */
        public final ConcurrentLinkedQueue<C9781c> f36952b;

        /* renamed from: c */
        public final C9860a f36953c;

        /* renamed from: d */
        public final ScheduledExecutorService f36954d;

        /* renamed from: e */
        public final Future<?> f36955e;

        /* renamed from: f */
        public final ThreadFactory f36956f;

        public RunnableC9779a(long j, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledFuture<?> scheduledFuture;
            this.f36951a = timeUnit != null ? timeUnit.toNanos(j) : 0L;
            this.f36952b = new ConcurrentLinkedQueue<>();
            this.f36953c = new C9860a();
            this.f36956f = threadFactory;
            ScheduledExecutorService scheduledExecutorService = null;
            if (timeUnit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, C9778c.f36945e);
                long j2 = this.f36951a;
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(this, j2, j2, TimeUnit.NANOSECONDS);
            } else {
                scheduledFuture = null;
            }
            this.f36954d = scheduledExecutorService;
            this.f36955e = scheduledFuture;
        }

        /* renamed from: a */
        public void m2043a() {
            if (!this.f36952b.isEmpty()) {
                long c = m2040c();
                Iterator<C9781c> it = this.f36952b.iterator();
                while (it.hasNext()) {
                    C9781c next = it.next();
                    if (next.m2037b() > c) {
                        return;
                    }
                    if (this.f36952b.remove(next)) {
                        this.f36953c.mo1829a(next);
                    }
                }
            }
        }

        /* renamed from: a */
        public void m2042a(C9781c cVar) {
            cVar.m2038a(m2040c() + this.f36951a);
            this.f36952b.offer(cVar);
        }

        /* renamed from: b */
        public C9781c m2041b() {
            if (this.f36953c.isDisposed()) {
                return C9778c.f36947g;
            }
            while (!this.f36952b.isEmpty()) {
                C9781c poll = this.f36952b.poll();
                if (poll != null) {
                    return poll;
                }
            }
            C9781c cVar = new C9781c(this.f36956f);
            this.f36953c.mo1828b(cVar);
            return cVar;
        }

        /* renamed from: c */
        public long m2040c() {
            return System.nanoTime();
        }

        /* renamed from: d */
        public void m2039d() {
            this.f36953c.dispose();
            Future<?> future = this.f36955e;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.f36954d;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            m2043a();
        }
    }

    /* renamed from: d.c.b0.g.c$b */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/g/c$b.class */
    public static final class C9780b extends AbstractC9845s.AbstractC9848c {

        /* renamed from: b */
        public final RunnableC9779a f36958b;

        /* renamed from: c */
        public final C9781c f36959c;

        /* renamed from: d */
        public final AtomicBoolean f36960d = new AtomicBoolean();

        /* renamed from: a */
        public final C9860a f36957a = new C9860a();

        public C9780b(RunnableC9779a aVar) {
            this.f36958b = aVar;
            this.f36959c = aVar.m2041b();
        }

        @Override // p530d.p541c.AbstractC9845s.AbstractC9848c
        /* renamed from: a */
        public AbstractC9861b mo1832a(Runnable runnable, long j, TimeUnit timeUnit) {
            return this.f36957a.isDisposed() ? EmptyDisposable.INSTANCE : this.f36959c.m2035a(runnable, j, timeUnit, this.f36957a);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            if (this.f36960d.compareAndSet(false, true)) {
                this.f36957a.dispose();
                this.f36958b.m2042a(this.f36959c);
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36960d.get();
        }
    }

    /* renamed from: d.c.b0.g.c$c */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/g/c$c.class */
    public static final class C9781c extends C9783e {

        /* renamed from: c */
        public long f36961c = 0;

        public C9781c(ThreadFactory threadFactory) {
            super(threadFactory);
        }

        /* renamed from: a */
        public void m2038a(long j) {
            this.f36961c = j;
        }

        /* renamed from: b */
        public long m2037b() {
            return this.f36961c;
        }
    }

    static {
        C9781c cVar = new C9781c(new RxThreadFactory("RxCachedThreadSchedulerShutdown"));
        f36947g = cVar;
        cVar.dispose();
        int max = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        f36944d = new RxThreadFactory("RxCachedThreadScheduler", max);
        f36945e = new RxThreadFactory("RxCachedWorkerPoolEvictor", max);
        RunnableC9779a aVar = new RunnableC9779a(0L, null, f36944d);
        f36948h = aVar;
        aVar.m2039d();
    }

    public C9778c() {
        this(f36944d);
    }

    public C9778c(ThreadFactory threadFactory) {
        this.f36949b = threadFactory;
        this.f36950c = new AtomicReference<>(f36948h);
        m2044b();
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9845s.AbstractC9848c mo1834a() {
        return new C9780b(this.f36950c.get());
    }

    /* renamed from: b */
    public void m2044b() {
        RunnableC9779a aVar = new RunnableC9779a(60L, f36946f, this.f36949b);
        if (!this.f36950c.compareAndSet(f36948h, aVar)) {
            aVar.m2039d();
        }
    }
}
