package p660rx.internal.schedulers;

import java.util.concurrent.ThreadFactory;
import p660rx.Scheduler;
/* renamed from: rx.internal.schedulers.NewThreadScheduler */
/* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/NewThreadScheduler.class */
public final class NewThreadScheduler extends Scheduler {
    public final ThreadFactory threadFactory;

    public NewThreadScheduler(ThreadFactory threadFactory) {
        this.threadFactory = threadFactory;
    }

    @Override // p660rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new NewThreadWorker(this.threadFactory);
    }
}
