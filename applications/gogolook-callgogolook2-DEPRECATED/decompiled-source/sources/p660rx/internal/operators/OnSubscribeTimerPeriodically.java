package p660rx.internal.operators;

import java.util.concurrent.TimeUnit;
import p660rx.Observable;
import p660rx.Scheduler;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
import p660rx.functions.Action0;
/* renamed from: rx.internal.operators.OnSubscribeTimerPeriodically */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeTimerPeriodically.class */
public final class OnSubscribeTimerPeriodically implements Observable.OnSubscribe<Long> {
    public final long initialDelay;
    public final long period;
    public final Scheduler scheduler;
    public final TimeUnit unit;

    public OnSubscribeTimerPeriodically(long j, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        this.initialDelay = j;
        this.period = j2;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    public void call(final Subscriber<? super Long> subscriber) {
        final Scheduler.Worker createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        createWorker.schedulePeriodically(new Action0(this) { // from class: rx.internal.operators.OnSubscribeTimerPeriodically.1
            public long counter;

            @Override // p660rx.functions.Action0
            public void call() {
                try {
                    Subscriber subscriber2 = subscriber;
                    long j = this.counter;
                    this.counter = 1 + j;
                    subscriber2.onNext(Long.valueOf(j));
                } catch (Throwable th) {
                    try {
                        createWorker.unsubscribe();
                    } finally {
                        Exceptions.throwOrReport(th, subscriber);
                    }
                }
            }
        }, this.initialDelay, this.period, this.unit);
    }
}
