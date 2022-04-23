package io.reactivex.internal.util;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.BooleanSupplier;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/QueueDrainHelper.class */
public final class QueueDrainHelper {
    static final long COMPLETED_MASK = Long.MIN_VALUE;
    static final long REQUESTED_MASK = Long.MAX_VALUE;

    private QueueDrainHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> boolean checkTerminated(boolean z, boolean z2, Observer<?> observer, boolean z3, SimpleQueue<?> simpleQueue, Disposable disposable, ObservableQueueDrain<T, U> observableQueueDrain) {
        if (observableQueueDrain.cancelled()) {
            simpleQueue.clear();
            disposable.dispose();
            return true;
        } else if (!z) {
            return false;
        } else {
            if (!z3) {
                Throwable error = observableQueueDrain.error();
                if (error != null) {
                    simpleQueue.clear();
                    disposable.dispose();
                    observer.onError(error);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    disposable.dispose();
                    observer.onComplete();
                    return true;
                }
            } else if (!z2) {
                return false;
            } else {
                disposable.dispose();
                Throwable error2 = observableQueueDrain.error();
                if (error2 != null) {
                    observer.onError(error2);
                    return true;
                }
                observer.onComplete();
                return true;
            }
        }
    }

    public static <T, U> boolean checkTerminated(boolean z, boolean z2, Subscriber<?> subscriber, boolean z3, SimpleQueue<?> simpleQueue, QueueDrain<T, U> queueDrain) {
        if (queueDrain.cancelled()) {
            simpleQueue.clear();
            return true;
        } else if (!z) {
            return false;
        } else {
            if (!z3) {
                Throwable error = queueDrain.error();
                if (error != null) {
                    simpleQueue.clear();
                    subscriber.onError(error);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    subscriber.onComplete();
                    return true;
                }
            } else if (!z2) {
                return false;
            } else {
                Throwable error2 = queueDrain.error();
                if (error2 != null) {
                    subscriber.onError(error2);
                    return true;
                }
                subscriber.onComplete();
                return true;
            }
        }
    }

    public static <T> SimpleQueue<T> createQueue(int i) {
        return i < 0 ? new SpscLinkedArrayQueue(-i) : new SpscArrayQueue(i);
    }

    public static <T, U> void drainLoop(SimplePlainQueue<T> simplePlainQueue, Observer<? super U> observer, boolean z, Disposable disposable, ObservableQueueDrain<T, U> observableQueueDrain) {
        int i = 1;
        while (!checkTerminated(observableQueueDrain.done(), simplePlainQueue.isEmpty(), observer, z, simplePlainQueue, disposable, observableQueueDrain)) {
            while (true) {
                boolean done = observableQueueDrain.done();
                T poll = simplePlainQueue.poll();
                boolean z2 = poll == null;
                if (!checkTerminated(done, z2, observer, z, simplePlainQueue, disposable, observableQueueDrain)) {
                    if (z2) {
                        int leave = observableQueueDrain.leave(-i);
                        i = leave;
                        if (leave == 0) {
                            return;
                        }
                    } else {
                        observableQueueDrain.accept(observer, poll);
                    }
                } else {
                    return;
                }
            }
        }
    }

    public static <T, U> void drainMaxLoop(SimplePlainQueue<T> simplePlainQueue, Subscriber<? super U> subscriber, boolean z, Disposable disposable, QueueDrain<T, U> queueDrain) {
        int i = 1;
        while (true) {
            boolean done = queueDrain.done();
            T poll = simplePlainQueue.poll();
            boolean z2 = poll == null;
            if (checkTerminated(done, z2, subscriber, z, simplePlainQueue, queueDrain)) {
                if (disposable != null) {
                    disposable.dispose();
                    return;
                }
                return;
            } else if (z2) {
                int leave = queueDrain.leave(-i);
                i = leave;
                if (leave == 0) {
                    return;
                }
            } else {
                long requested = queueDrain.requested();
                if (requested == 0) {
                    simplePlainQueue.clear();
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    subscriber.onError(new MissingBackpressureException("Could not emit value due to lack of requests."));
                    return;
                } else if (queueDrain.accept(subscriber, poll) && requested != Long.MAX_VALUE) {
                    queueDrain.produced(1L);
                }
            }
        }
    }

    static boolean isCancelled(BooleanSupplier booleanSupplier) {
        try {
            return booleanSupplier.getAsBoolean();
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            return true;
        }
    }

    public static <T> void postComplete(Subscriber<? super T> subscriber, Queue<T> queue, AtomicLong atomicLong, BooleanSupplier booleanSupplier) {
        long j;
        long j2;
        if (queue.isEmpty()) {
            subscriber.onComplete();
        } else if (!postCompleteDrain(atomicLong.get(), subscriber, queue, atomicLong, booleanSupplier)) {
            do {
                j = atomicLong.get();
                if ((j & Long.MIN_VALUE) == 0) {
                    j2 = j | Long.MIN_VALUE;
                } else {
                    return;
                }
            } while (!atomicLong.compareAndSet(j, j2));
            if (j != 0) {
                postCompleteDrain(j2, subscriber, queue, atomicLong, booleanSupplier);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> boolean postCompleteDrain(long r6, org.reactivestreams.Subscriber<? super T> r8, java.util.Queue<T> r9, java.util.concurrent.atomic.AtomicLong r10, io.reactivex.functions.BooleanSupplier r11) {
        /*
            r0 = r6
            r1 = -9223372036854775808
            long r0 = r0 & r1
            r12 = r0
        L_0x0007:
            r0 = r12
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x003e
            r0 = r11
            boolean r0 = isCancelled(r0)
            if (r0 == 0) goto L_0x0018
            r0 = 1
            return r0
        L_0x0018:
            r0 = r9
            java.lang.Object r0 = r0.poll()
            r14 = r0
            r0 = r14
            if (r0 != 0) goto L_0x002d
            r0 = r8
            r0.onComplete()
            r0 = 1
            return r0
        L_0x002d:
            r0 = r8
            r1 = r14
            r0.onNext(r1)
            r0 = r12
            r1 = 1
            long r0 = r0 + r1
            r12 = r0
            goto L_0x0007
        L_0x003e:
            r0 = r11
            boolean r0 = isCancelled(r0)
            if (r0 == 0) goto L_0x0048
            r0 = 1
            return r0
        L_0x0048:
            r0 = r9
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0059
            r0 = r8
            r0.onComplete()
            r0 = 1
            return r0
        L_0x0059:
            r0 = r10
            long r0 = r0.get()
            r15 = r0
            r0 = r15
            r6 = r0
            r0 = r15
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0007
            r0 = r10
            r1 = r12
            r2 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            long r1 = r1 & r2
            long r1 = -r1
            long r0 = r0.addAndGet(r1)
            r12 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r1 = r12
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0086
            r0 = 0
            return r0
        L_0x0086:
            r0 = r12
            r6 = r0
            r0 = r12
            r1 = -9223372036854775808
            long r0 = r0 & r1
            r12 = r0
            goto L_0x0007
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.QueueDrainHelper.postCompleteDrain(long, org.reactivestreams.Subscriber, java.util.Queue, java.util.concurrent.atomic.AtomicLong, io.reactivex.functions.BooleanSupplier):boolean");
    }

    public static <T> boolean postCompleteRequest(long j, Subscriber<? super T> subscriber, Queue<T> queue, AtomicLong atomicLong, BooleanSupplier booleanSupplier) {
        long j2;
        do {
            j2 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j2, BackpressureHelper.addCap(Long.MAX_VALUE & j2, j) | (j2 & Long.MIN_VALUE)));
        if (j2 != Long.MIN_VALUE) {
            return false;
        }
        postCompleteDrain(j | Long.MIN_VALUE, subscriber, queue, atomicLong, booleanSupplier);
        return true;
    }

    public static void request(Subscription subscription, int i) {
        subscription.request(i < 0 ? Long.MAX_VALUE : i);
    }
}
