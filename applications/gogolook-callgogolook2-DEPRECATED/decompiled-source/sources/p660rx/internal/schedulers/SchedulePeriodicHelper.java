package p660rx.internal.schedulers;

import java.util.concurrent.TimeUnit;
import p660rx.Scheduler;
import p660rx.Subscription;
import p660rx.functions.Action0;
import p660rx.internal.subscriptions.SequentialSubscription;
/* renamed from: rx.internal.schedulers.SchedulePeriodicHelper */
/* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/SchedulePeriodicHelper.class */
public final class SchedulePeriodicHelper {
    public static final long CLOCK_DRIFT_TOLERANCE_NANOS = TimeUnit.MINUTES.toNanos(Long.getLong("rx.scheduler.drift-tolerance", 15).longValue());

    /* renamed from: rx.internal.schedulers.SchedulePeriodicHelper$NowNanoSupplier */
    /* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/SchedulePeriodicHelper$NowNanoSupplier.class */
    public interface NowNanoSupplier {
        long nowNanos();
    }

    public static Subscription schedulePeriodically(final Scheduler.Worker worker, final Action0 action0, long j, long j2, TimeUnit timeUnit, final NowNanoSupplier nowNanoSupplier) {
        final long nanos = timeUnit.toNanos(j2);
        final long nowNanos = nowNanoSupplier != null ? nowNanoSupplier.nowNanos() : TimeUnit.MILLISECONDS.toNanos(worker.now());
        long nanos2 = timeUnit.toNanos(j);
        SequentialSubscription sequentialSubscription = new SequentialSubscription();
        final SequentialSubscription sequentialSubscription2 = new SequentialSubscription(sequentialSubscription);
        final long j3 = nanos2 + nowNanos;
        sequentialSubscription.replace(worker.schedule(new Action0() { // from class: rx.internal.schedulers.SchedulePeriodicHelper.1
            public long count;
            public long lastNowNanos;
            public long startInNanos;

            {
                this.lastNowNanos = nowNanos;
                this.startInNanos = j3;
            }

            @Override // p660rx.functions.Action0
            public void call() {
                long j4;
                action0.call();
                if (!sequentialSubscription2.isUnsubscribed()) {
                    NowNanoSupplier nowNanoSupplier2 = nowNanoSupplier;
                    long nowNanos2 = nowNanoSupplier2 != null ? nowNanoSupplier2.nowNanos() : TimeUnit.MILLISECONDS.toNanos(worker.now());
                    long j5 = SchedulePeriodicHelper.CLOCK_DRIFT_TOLERANCE_NANOS;
                    long j6 = this.lastNowNanos;
                    if (nowNanos2 + j5 >= j6) {
                        long j7 = nanos;
                        if (nowNanos2 < j6 + j7 + j5) {
                            long j8 = this.startInNanos;
                            long j9 = this.count + 1;
                            this.count = j9;
                            j4 = j8 + (j9 * j7);
                            this.lastNowNanos = nowNanos2;
                            sequentialSubscription2.replace(worker.schedule(this, j4 - nowNanos2, TimeUnit.NANOSECONDS));
                        }
                    }
                    long j10 = nanos;
                    j4 = nowNanos2 + j10;
                    long j11 = this.count + 1;
                    this.count = j11;
                    this.startInNanos = j4 - (j10 * j11);
                    this.lastNowNanos = nowNanos2;
                    sequentialSubscription2.replace(worker.schedule(this, j4 - nowNanos2, TimeUnit.NANOSECONDS));
                }
            }
        }, j, timeUnit));
        return sequentialSubscription2;
    }
}
