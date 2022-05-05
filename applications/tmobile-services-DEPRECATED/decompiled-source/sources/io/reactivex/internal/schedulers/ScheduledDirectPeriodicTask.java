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
        this.f19227g = Thread.currentThread();
        try {
            this.f19226f.run();
            this.f19227g = null;
        } catch (Throwable th) {
            this.f19227g = null;
            lazySet(AbstractDirectTask.f19224h);
            RxJavaPlugins.m3354t(th);
        }
    }
}
