package io.reactivex.internal.schedulers;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9862c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen.class */
public class SchedulerWhen extends AbstractC9845s implements AbstractC9861b {

    /* renamed from: b */
    public static final AbstractC9861b f38563b = new C10423b();

    /* renamed from: c */
    public static final AbstractC9861b f38564c = C9862c.m1826a();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$DelayedAction.class */
    public static class DelayedAction extends ScheduledAction {
        public final Runnable action;
        public final long delayTime;
        public final TimeUnit unit;

        public DelayedAction(Runnable runnable, long j, TimeUnit timeUnit) {
            this.action = runnable;
            this.delayTime = j;
            this.unit = timeUnit;
        }

        @Override // io.reactivex.internal.schedulers.SchedulerWhen.ScheduledAction
        public AbstractC9861b callActual(AbstractC9845s.AbstractC9848c cVar, AbstractC9647b bVar) {
            return cVar.mo1832a(new RunnableC10422a(this.action, bVar), this.delayTime, this.unit);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$ImmediateAction.class */
    public static class ImmediateAction extends ScheduledAction {
        public final Runnable action;

        public ImmediateAction(Runnable runnable) {
            this.action = runnable;
        }

        @Override // io.reactivex.internal.schedulers.SchedulerWhen.ScheduledAction
        public AbstractC9861b callActual(AbstractC9845s.AbstractC9848c cVar, AbstractC9647b bVar) {
            return cVar.mo1851a(new RunnableC10422a(this.action, bVar));
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction.class */
    public static abstract class ScheduledAction extends AtomicReference<AbstractC9861b> implements AbstractC9861b {
        public ScheduledAction() {
            super(SchedulerWhen.f38563b);
        }

        public void call(AbstractC9845s.AbstractC9848c cVar, AbstractC9647b bVar) {
            AbstractC9861b bVar2 = get();
            if (bVar2 != SchedulerWhen.f38564c && bVar2 == SchedulerWhen.f38563b) {
                AbstractC9861b callActual = callActual(cVar, bVar);
                if (!compareAndSet(SchedulerWhen.f38563b, callActual)) {
                    callActual.dispose();
                }
            }
        }

        public abstract AbstractC9861b callActual(AbstractC9845s.AbstractC9848c cVar, AbstractC9647b bVar);

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            AbstractC9861b bVar;
            AbstractC9861b bVar2 = SchedulerWhen.f38564c;
            do {
                bVar = get();
                if (bVar == SchedulerWhen.f38564c) {
                    return;
                }
            } while (!compareAndSet(bVar, bVar2));
            if (bVar != SchedulerWhen.f38563b) {
                bVar.dispose();
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get().isDisposed();
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.SchedulerWhen$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$a.class */
    public static class RunnableC10422a implements Runnable {

        /* renamed from: a */
        public final AbstractC9647b f38565a;

        /* renamed from: b */
        public final Runnable f38566b;

        public RunnableC10422a(Runnable runnable, AbstractC9647b bVar) {
            this.f38566b = runnable;
            this.f38565a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f38566b.run();
            } finally {
                this.f38565a.onComplete();
            }
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.SchedulerWhen$b */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerWhen$b.class */
    public static final class C10423b implements AbstractC9861b {
        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return false;
        }
    }
}
