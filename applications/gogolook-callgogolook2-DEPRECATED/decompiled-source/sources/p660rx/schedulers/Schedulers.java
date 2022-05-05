package p660rx.schedulers;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import p660rx.Scheduler;
import p660rx.internal.schedulers.ExecutorScheduler;
import p660rx.internal.schedulers.SchedulerLifecycle;
import p660rx.plugins.RxJavaHooks;
import p660rx.plugins.RxJavaPlugins;
import p660rx.plugins.RxJavaSchedulersHook;
/* renamed from: rx.schedulers.Schedulers */
/* loaded from: classes3-dex2jar.jar:rx/schedulers/Schedulers.class */
public final class Schedulers {
    public static final AtomicReference<Schedulers> INSTANCE = new AtomicReference<>();
    public final Scheduler computationScheduler;
    public final Scheduler ioScheduler;
    public final Scheduler newThreadScheduler;

    public Schedulers() {
        RxJavaSchedulersHook schedulersHook = RxJavaPlugins.getInstance().getSchedulersHook();
        Scheduler computationScheduler = schedulersHook.getComputationScheduler();
        if (computationScheduler != null) {
            this.computationScheduler = computationScheduler;
        } else {
            this.computationScheduler = RxJavaSchedulersHook.createComputationScheduler();
        }
        Scheduler iOScheduler = schedulersHook.getIOScheduler();
        if (iOScheduler != null) {
            this.ioScheduler = iOScheduler;
        } else {
            this.ioScheduler = RxJavaSchedulersHook.createIoScheduler();
        }
        Scheduler newThreadScheduler = schedulersHook.getNewThreadScheduler();
        if (newThreadScheduler != null) {
            this.newThreadScheduler = newThreadScheduler;
        } else {
            this.newThreadScheduler = RxJavaSchedulersHook.createNewThreadScheduler();
        }
    }

    public static Scheduler computation() {
        return RxJavaHooks.onComputationScheduler(getInstance().computationScheduler);
    }

    public static Scheduler from(Executor executor) {
        return new ExecutorScheduler(executor);
    }

    public static Schedulers getInstance() {
        while (true) {
            Schedulers schedulers = INSTANCE.get();
            if (schedulers != null) {
                return schedulers;
            }
            Schedulers schedulers2 = new Schedulers();
            if (INSTANCE.compareAndSet(null, schedulers2)) {
                return schedulers2;
            }
            schedulers2.shutdownInstance();
        }
    }

    /* renamed from: io */
    public static Scheduler m0io() {
        return RxJavaHooks.onIOScheduler(getInstance().ioScheduler);
    }

    public void shutdownInstance() {
        synchronized (this) {
            if (this.computationScheduler instanceof SchedulerLifecycle) {
                ((SchedulerLifecycle) this.computationScheduler).shutdown();
            }
            if (this.ioScheduler instanceof SchedulerLifecycle) {
                ((SchedulerLifecycle) this.ioScheduler).shutdown();
            }
            if (this.newThreadScheduler instanceof SchedulerLifecycle) {
                ((SchedulerLifecycle) this.newThreadScheduler).shutdown();
            }
        }
    }
}
