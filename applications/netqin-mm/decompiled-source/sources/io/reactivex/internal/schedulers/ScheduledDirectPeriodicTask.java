package io.reactivex.internal.schedulers;

import p530d.p541c.p560e0.C9815a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ScheduledDirectPeriodicTask.class */
public final class ScheduledDirectPeriodicTask extends AbstractDirectTask implements Runnable {
    public static final long serialVersionUID = 1811839108042568751L;

    public ScheduledDirectPeriodicTask(Runnable runnable) {
        super(runnable);
    }

    @Override // io.reactivex.internal.schedulers.AbstractDirectTask
    public /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.runner = Thread.currentThread();
        try {
            this.runnable.run();
            this.runner = null;
        } catch (Throwable th) {
            this.runner = null;
            lazySet(AbstractDirectTask.FINISHED);
            C9815a.m1923b(th);
        }
    }
}
