package io.reactivex.internal.schedulers;

import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ScheduledDirectPeriodicTask.class */
public final class ScheduledDirectPeriodicTask extends AbstractDirectTask implements Runnable {
    private static final long serialVersionUID = 1811839108042568751L;

    public ScheduledDirectPeriodicTask(Runnable runnable) {
        super(runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.runner = Thread.currentThread();
        try {
            this.runnable.run();
        } catch (Throwable th) {
            try {
                lazySet(FINISHED);
                RxJavaPlugins.onError(th);
            } finally {
                this.runner = null;
            }
        }
    }
}
