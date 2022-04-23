package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.MissingBackpressureException;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription.class */
public final class ParallelJoin$JoinSubscription<T> extends ParallelJoin$JoinSubscriptionBase<T> {
    public static final long serialVersionUID = 6312374661811000451L;

    public ParallelJoin$JoinSubscription(AbstractC10433c<? super T> cVar, int i, int i2) {
        super(cVar, i, i2);
    }

    @Override // io.reactivex.internal.operators.parallel.ParallelJoin$JoinSubscriptionBase
    public void drain() {
        if (getAndIncrement() == 0) {
            drainLoop();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00db, code lost:
        if (r17 == false) goto L_0x00ea;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e0, code lost:
        if (r19 == false) goto L_0x00ea;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e3, code lost:
        r0.onComplete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e9, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ea, code lost:
        r12 = r14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v5, types: [long] */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drainLoop() {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelJoin$JoinSubscription.drainLoop():void");
    }

    @Override // io.reactivex.internal.operators.parallel.ParallelJoin$JoinSubscriptionBase
    public void onComplete() {
        this.done.decrementAndGet();
        drain();
    }

    @Override // io.reactivex.internal.operators.parallel.ParallelJoin$JoinSubscriptionBase
    public void onError(Throwable th) {
        if (this.errors.compareAndSet(null, th)) {
            cancelAll();
            drain();
        } else if (th != this.errors.get()) {
            C9815a.m1923b(th);
        }
    }

    @Override // io.reactivex.internal.operators.parallel.ParallelJoin$JoinSubscriptionBase
    public void onNext(ParallelJoin$JoinInnerSubscriber<T> parallelJoin$JoinInnerSubscriber, T t) {
        if (get() == 0 && compareAndSet(0, 1)) {
            if (this.requested.get() != 0) {
                this.actual.onNext(t);
                if (this.requested.get() != Long.MAX_VALUE) {
                    this.requested.decrementAndGet();
                }
                parallelJoin$JoinInnerSubscriber.request(1L);
            } else if (!parallelJoin$JoinInnerSubscriber.getQueue().offer(t)) {
                cancelAll();
                MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Queue full?!");
                if (this.errors.compareAndSet(null, missingBackpressureException)) {
                    this.actual.onError(missingBackpressureException);
                    return;
                } else {
                    C9815a.m1923b(missingBackpressureException);
                    return;
                }
            }
            if (decrementAndGet() == 0) {
                return;
            }
        } else if (!parallelJoin$JoinInnerSubscriber.getQueue().offer(t)) {
            cancelAll();
            onError(new MissingBackpressureException("Queue full?!"));
            return;
        } else if (getAndIncrement() != 0) {
            return;
        }
        drainLoop();
    }
}
