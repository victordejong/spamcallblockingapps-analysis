package io.reactivex.internal.operators.parallel;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelSortedJoin.class */
public final class ParallelSortedJoin<T> extends Flowable<T> {
    final Comparator<? super T> comparator;
    final ParallelFlowable<List<T>> source;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber.class */
    public static final class SortedJoinInnerSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<List<T>> {
        private static final long serialVersionUID = 6751017204873808094L;
        final int index;
        final SortedJoinSubscription<T> parent;

        SortedJoinInnerSubscriber(SortedJoinSubscription<T> sortedJoinSubscription, int i) {
            this.parent = sortedJoinSubscription;
            this.index = i;
        }

        void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.parent.innerError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public /* bridge */ /* synthetic */ void onNext(Object obj) {
            onNext((List) ((List) obj));
        }

        public void onNext(List<T> list) {
            this.parent.innerNext(list, this.index);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this, subscription)) {
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription.class */
    public static final class SortedJoinSubscription<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 3481980673745556697L;
        final Subscriber<? super T> actual;
        volatile boolean cancelled;
        final Comparator<? super T> comparator;
        final int[] indexes;
        final List<T>[] lists;
        final SortedJoinInnerSubscriber<T>[] subscribers;
        final AtomicLong requested = new AtomicLong();
        final AtomicInteger remaining = new AtomicInteger();
        final AtomicReference<Throwable> error = new AtomicReference<>();

        SortedJoinSubscription(Subscriber<? super T> subscriber, int i, Comparator<? super T> comparator) {
            this.actual = subscriber;
            this.comparator = comparator;
            SortedJoinInnerSubscriber<T>[] sortedJoinInnerSubscriberArr = new SortedJoinInnerSubscriber[i];
            for (int i2 = 0; i2 < i; i2++) {
                sortedJoinInnerSubscriberArr[i2] = new SortedJoinInnerSubscriber<>(this, i2);
            }
            this.subscribers = sortedJoinInnerSubscriberArr;
            this.lists = new List[i];
            this.indexes = new int[i];
            this.remaining.lazySet(i);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                cancelAll();
                if (getAndIncrement() == 0) {
                    Arrays.fill(this.lists, (Object) null);
                }
            }
        }

        void cancelAll() {
            for (SortedJoinInnerSubscriber<T> sortedJoinInnerSubscriber : this.subscribers) {
                sortedJoinInnerSubscriber.cancel();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:47:0x0158, code lost:
            if (r0 != 0) goto L_0x01c5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x015f, code lost:
            if (r5.cancelled == false) goto L_0x0168;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0162, code lost:
            java.util.Arrays.fill(r0, (java.lang.Object) null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0167, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0168, code lost:
            r0 = r5.error.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0176, code lost:
            if (r0 == null) goto L_0x018b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0179, code lost:
            cancelAll();
            java.util.Arrays.fill(r0, (java.lang.Object) null);
            r0.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x018a, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x018b, code lost:
            r15 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0192, code lost:
            if (r15 >= r0) goto L_0x01b1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x01a2, code lost:
            if (r0[r15] == r0[r15].size()) goto L_0x01ab;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x01a5, code lost:
            r15 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x01ab, code lost:
            r15 = r15 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x01b1, code lost:
            r15 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x01b6, code lost:
            if (r15 == false) goto L_0x01c5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x01b9, code lost:
            java.util.Arrays.fill(r0, (java.lang.Object) null);
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x01c4, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x01c9, code lost:
            if (r0 == 0) goto L_0x01e0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x01d2, code lost:
            if (r0 == Long.MAX_VALUE) goto L_0x01e0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x01d5, code lost:
            r5.requested.addAndGet(-r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x01e0, code lost:
            r0 = get();
            r15 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x01ee, code lost:
            if (r0 != r0) goto L_0x0204;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x01f1, code lost:
            r0 = addAndGet(-r0);
            r15 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0200, code lost:
            if (r0 != 0) goto L_0x0204;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0203, code lost:
            return;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drain() {
            /*
                Method dump skipped, instructions count: 523
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelSortedJoin.SortedJoinSubscription.drain():void");
        }

        void innerError(Throwable th) {
            if (this.error.compareAndSet(null, th)) {
                drain();
            } else if (th != this.error.get()) {
                RxJavaPlugins.onError(th);
            }
        }

        void innerNext(List<T> list, int i) {
            this.lists[i] = list;
            if (this.remaining.decrementAndGet() == 0) {
                drain();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                if (this.remaining.get() == 0) {
                    drain();
                }
            }
        }
    }

    public ParallelSortedJoin(ParallelFlowable<List<T>> parallelFlowable, Comparator<? super T> comparator) {
        this.source = parallelFlowable;
        this.comparator = comparator;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super T> subscriber) {
        SortedJoinSubscription sortedJoinSubscription = new SortedJoinSubscription(subscriber, this.source.parallelism(), this.comparator);
        subscriber.onSubscribe(sortedJoinSubscription);
        this.source.subscribe(sortedJoinSubscription.subscribers);
    }
}
