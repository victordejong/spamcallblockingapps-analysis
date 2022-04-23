package p530d.p541c.p543b0.p555g;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.schedulers.RxThreadFactory;
import io.reactivex.internal.schedulers.ScheduledDirectPeriodicTask;
import io.reactivex.internal.schedulers.ScheduledDirectTask;
import io.reactivex.internal.schedulers.ScheduledRunnable;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
/* renamed from: d.c.b0.g.h */
/* loaded from: classes2-dex2jar.jar:d/c/b0/g/h.class */
public final class C9788h extends AbstractC9845s {

    /* renamed from: c */
    public static final RxThreadFactory f36972c = new RxThreadFactory("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);

    /* renamed from: d */
    public static final ScheduledExecutorService f36973d;

    /* renamed from: b */
    public final AtomicReference<ScheduledExecutorService> f36974b;

    /* renamed from: d.c.b0.g.h$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/g/h$a.class */
    public static final class C9789a extends AbstractC9845s.AbstractC9848c {

        /* renamed from: a */
        public final ScheduledExecutorService f36975a;

        /* renamed from: b */
        public final C9860a f36976b = new C9860a();

        /* renamed from: c */
        public volatile boolean f36977c;

        public C9789a(ScheduledExecutorService scheduledExecutorService) {
            this.f36975a = scheduledExecutorService;
        }

        @Override // p530d.p541c.AbstractC9845s.AbstractC9848c
        /* renamed from: a */
        public AbstractC9861b mo1832a(Runnable runnable, long j, TimeUnit timeUnit) {
            if (this.f36977c) {
                return EmptyDisposable.INSTANCE;
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(C9815a.m1928a(runnable), this.f36976b);
            this.f36976b.mo1828b(scheduledRunnable);
            try {
                scheduledRunnable.setFuture(j <= 0 ? this.f36975a.submit((Callable) scheduledRunnable) : this.f36975a.schedule((Callable) scheduledRunnable, j, timeUnit));
                return scheduledRunnable;
            } catch (RejectedExecutionException e) {
                dispose();
                C9815a.m1923b(e);
                return EmptyDisposable.INSTANCE;
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            if (!this.f36977c) {
                this.f36977c = true;
                this.f36976b.dispose();
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36977c;
        }
    }

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f36973d = newScheduledThreadPool;
        newScheduledThreadPool.shutdown();
    }

    public C9788h() {
        this(f36972c);
    }

    public C9788h(ThreadFactory threadFactory) {
        AtomicReference<ScheduledExecutorService> atomicReference = new AtomicReference<>();
        this.f36974b = atomicReference;
        atomicReference.lazySet(m2027a(threadFactory));
    }

    /* renamed from: a */
    public static ScheduledExecutorService m2027a(ThreadFactory threadFactory) {
        return C9785g.m2031a(threadFactory);
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9845s.AbstractC9848c mo1834a() {
        return new C9789a(this.f36974b.get());
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9861b mo1853a(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Runnable a = C9815a.m1928a(runnable);
        if (j2 <= 0) {
            ScheduledExecutorService scheduledExecutorService = this.f36974b.get();
            CallableC9777b bVar = new CallableC9777b(a, scheduledExecutorService);
            try {
                bVar.m2046a(j <= 0 ? scheduledExecutorService.submit(bVar) : scheduledExecutorService.schedule(bVar, j, timeUnit));
                return bVar;
            } catch (RejectedExecutionException e) {
                C9815a.m1923b(e);
                return EmptyDisposable.INSTANCE;
            }
        } else {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(a);
            try {
                scheduledDirectPeriodicTask.setFuture(this.f36974b.get().scheduleAtFixedRate(scheduledDirectPeriodicTask, j, j2, timeUnit));
                return scheduledDirectPeriodicTask;
            } catch (RejectedExecutionException e2) {
                C9815a.m1923b(e2);
                return EmptyDisposable.INSTANCE;
            }
        }
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9861b mo1833a(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(C9815a.m1928a(runnable));
        try {
            scheduledDirectTask.setFuture(j <= 0 ? this.f36974b.get().submit(scheduledDirectTask) : this.f36974b.get().schedule(scheduledDirectTask, j, timeUnit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e) {
            C9815a.m1923b(e);
            return EmptyDisposable.INSTANCE;
        }
    }
}
