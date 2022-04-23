package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.MissingBackpressureException;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError.class */
public final class ParallelJoin$JoinSubscriptionDelayError<T> extends ParallelJoin$JoinSubscriptionBase<T> {
    public static final long serialVersionUID = -5737965195918321883L;

    public ParallelJoin$JoinSubscriptionDelayError(AbstractC10433c<? super T> cVar, int i, int i2) {
        super(cVar, i, i2);
    }

    @Override // io.reactivex.internal.operators.parallel.ParallelJoin$JoinSubscriptionBase
    public void drain() {
        if (getAndIncrement() == 0) {
            drainLoop();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00bc, code lost:
        if (r16 == false) goto L_0x00e8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c1, code lost:
        if (r18 == false) goto L_0x00e8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ce, code lost:
        if (r5.errors.get() == null) goto L_0x00e1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d1, code lost:
        r0.onError(r5.errors.terminate());
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e1, code lost:
        r0.onComplete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e7, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e8, code lost:
        r12 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:?, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6, types: [long] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drainLoop() {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelJoin$JoinSubscriptionDelayError.drainLoop():void");
    }

    @Override // io.reactivex.internal.operators.parallel.ParallelJoin$JoinSubscriptionBase
    public void onComplete() {
        this.done.decrementAndGet();
        drain();
    }

    @Override // io.reactivex.internal.operators.parallel.ParallelJoin$JoinSubscriptionBase
    public void onError(Throwable th) {
        this.errors.addThrowable(th);
        this.done.decrementAndGet();
        drain();
    }

    @Override // io.reactivex.internal.operators.parallel.ParallelJoin$JoinSubscriptionBase
    public void onNext(ParallelJoin$JoinInnerSubscriber<T> parallelJoin$JoinInnerSubscriber, T t) {
        if (get() != 0 || !compareAndSet(0, 1)) {
            if (!parallelJoin$JoinInnerSubscriber.getQueue().offer(t) && parallelJoin$JoinInnerSubscriber.cancel()) {
                this.errors.addThrowable(new MissingBackpressureException("Queue full?!"));
                this.done.decrementAndGet();
            }
            if (getAndIncrement() != 0) {
                return;
            }
        } else {
            if (this.requested.get() != 0) {
                this.actual.onNext(t);
                if (this.requested.get() != Long.MAX_VALUE) {
                    this.requested.decrementAndGet();
                }
                parallelJoin$JoinInnerSubscriber.request(1L);
            } else if (!parallelJoin$JoinInnerSubscriber.getQueue().offer(t)) {
                parallelJoin$JoinInnerSubscriber.cancel();
                this.errors.addThrowable(new MissingBackpressureException("Queue full?!"));
                this.done.decrementAndGet();
                drainLoop();
                return;
            }
            if (decrementAndGet() == 0) {
                return;
            }
        }
        drainLoop();
    }
}
