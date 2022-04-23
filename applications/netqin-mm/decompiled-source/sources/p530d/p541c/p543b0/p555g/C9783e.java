package p530d.p541c.p543b0.p555g;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.schedulers.ScheduledDirectPeriodicTask;
import io.reactivex.internal.schedulers.ScheduledDirectTask;
import io.reactivex.internal.schedulers.ScheduledRunnable;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p544a.AbstractC9648a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.g.e */
/* loaded from: classes2-dex2jar.jar:d/c/b0/g/e.class */
public class C9783e extends AbstractC9845s.AbstractC9848c implements AbstractC9861b {

    /* renamed from: a */
    public final ScheduledExecutorService f36964a;

    /* renamed from: b */
    public volatile boolean f36965b;

    public C9783e(ThreadFactory threadFactory) {
        this.f36964a = C9785g.m2031a(threadFactory);
    }

    @Override // p530d.p541c.AbstractC9845s.AbstractC9848c
    /* renamed from: a */
    public AbstractC9861b mo1851a(Runnable runnable) {
        return mo1832a(runnable, 0L, null);
    }

    @Override // p530d.p541c.AbstractC9845s.AbstractC9848c
    /* renamed from: a */
    public AbstractC9861b mo1832a(Runnable runnable, long j, TimeUnit timeUnit) {
        return this.f36965b ? EmptyDisposable.INSTANCE : m2035a(runnable, j, timeUnit, (AbstractC9648a) null);
    }

    /* renamed from: a */
    public ScheduledRunnable m2035a(Runnable runnable, long j, TimeUnit timeUnit, AbstractC9648a aVar) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(C9815a.m1928a(runnable), aVar);
        if (aVar != null && !aVar.mo1828b(scheduledRunnable)) {
            return scheduledRunnable;
        }
        try {
            scheduledRunnable.setFuture(j <= 0 ? this.f36964a.submit((Callable) scheduledRunnable) : this.f36964a.schedule((Callable) scheduledRunnable, j, timeUnit));
        } catch (RejectedExecutionException e) {
            if (aVar != null) {
                aVar.mo1829a(scheduledRunnable);
            }
            C9815a.m1923b(e);
        }
        return scheduledRunnable;
    }

    /* renamed from: a */
    public void m2036a() {
        if (!this.f36965b) {
            this.f36965b = true;
            this.f36964a.shutdown();
        }
    }

    /* renamed from: b */
    public AbstractC9861b m2034b(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Runnable a = C9815a.m1928a(runnable);
        if (j2 <= 0) {
            CallableC9777b bVar = new CallableC9777b(a, this.f36964a);
            try {
                bVar.m2046a(j <= 0 ? this.f36964a.submit(bVar) : this.f36964a.schedule(bVar, j, timeUnit));
                return bVar;
            } catch (RejectedExecutionException e) {
                C9815a.m1923b(e);
                return EmptyDisposable.INSTANCE;
            }
        } else {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(a);
            try {
                scheduledDirectPeriodicTask.setFuture(this.f36964a.scheduleAtFixedRate(scheduledDirectPeriodicTask, j, j2, timeUnit));
                return scheduledDirectPeriodicTask;
            } catch (RejectedExecutionException e2) {
                C9815a.m1923b(e2);
                return EmptyDisposable.INSTANCE;
            }
        }
    }

    /* renamed from: b */
    public AbstractC9861b m2033b(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(C9815a.m1928a(runnable));
        try {
            scheduledDirectTask.setFuture(j <= 0 ? this.f36964a.submit(scheduledDirectTask) : this.f36964a.schedule(scheduledDirectTask, j, timeUnit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e) {
            C9815a.m1923b(e);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.f36965b) {
            this.f36965b = true;
            this.f36964a.shutdownNow();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f36965b;
    }
}
