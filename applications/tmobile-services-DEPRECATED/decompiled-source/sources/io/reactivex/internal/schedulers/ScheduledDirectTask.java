package io.reactivex.internal.schedulers;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ScheduledDirectTask.class */
public final class ScheduledDirectTask extends AbstractDirectTask implements Callable<Void> {
    private static final long serialVersionUID = 1811839108042568751L;

    public ScheduledDirectTask(Runnable runnable) {
        super(runnable);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public Void call() throws Exception {
        this.f19227g = Thread.currentThread();
        try {
            this.f19226f.run();
            lazySet(AbstractDirectTask.f19224h);
            this.f19227g = null;
            return null;
        } catch (Throwable th) {
            lazySet(AbstractDirectTask.f19224h);
            this.f19227g = null;
            throw th;
        }
    }
}
