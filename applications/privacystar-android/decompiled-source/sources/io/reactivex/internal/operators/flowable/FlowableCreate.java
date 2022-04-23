package io.reactivex.internal.operators.flowable;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Flowable;
import io.reactivex.FlowableEmitter;
import io.reactivex.FlowableOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Cancellable;
import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate.class */
public final class FlowableCreate<T> extends Flowable<T> {
    final BackpressureStrategy backpressure;
    final FlowableOnSubscribe<T> source;

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableCreate$1 */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$1.class */
    static /* synthetic */ class C18691 {
        static final /* synthetic */ int[] $SwitchMap$io$reactivex$BackpressureStrategy = new int[BackpressureStrategy.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$io$reactivex$BackpressureStrategy[BackpressureStrategy.MISSING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$io$reactivex$BackpressureStrategy[BackpressureStrategy.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$io$reactivex$BackpressureStrategy[BackpressureStrategy.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$io$reactivex$BackpressureStrategy[BackpressureStrategy.LATEST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter.class */
    public static abstract class BaseEmitter<T> extends AtomicLong implements FlowableEmitter<T>, Subscription {
        private static final long serialVersionUID = 7326289992464377023L;
        final Subscriber<? super T> actual;
        final SequentialDisposable serial = new SequentialDisposable();

        BaseEmitter(Subscriber<? super T> subscriber) {
            this.actual = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.serial.dispose();
            onUnsubscribed();
        }

        protected void complete() {
            if (!isCancelled()) {
                try {
                    this.actual.onComplete();
                } finally {
                    this.serial.dispose();
                }
            }
        }

        /* JADX WARN: Finally extract failed */
        protected boolean error(Throwable th) {
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isCancelled()) {
                return false;
            }
            try {
                this.actual.onError(th2);
                this.serial.dispose();
                return true;
            } catch (Throwable th3) {
                this.serial.dispose();
                throw th3;
            }
        }

        @Override // io.reactivex.FlowableEmitter
        public final boolean isCancelled() {
            return this.serial.isDisposed();
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            complete();
        }

        @Override // io.reactivex.Emitter
        public final void onError(Throwable th) {
            if (!tryOnError(th)) {
                RxJavaPlugins.onError(th);
            }
        }

        void onRequested() {
        }

        void onUnsubscribed() {
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this, j);
                onRequested();
            }
        }

        @Override // io.reactivex.FlowableEmitter
        public final long requested() {
            return get();
        }

        @Override // io.reactivex.FlowableEmitter
        public final FlowableEmitter<T> serialize() {
            return new SerializedEmitter(this);
        }

        @Override // io.reactivex.FlowableEmitter
        public final void setCancellable(Cancellable cancellable) {
            setDisposable(new CancellableDisposable(cancellable));
        }

        @Override // io.reactivex.FlowableEmitter
        public final void setDisposable(Disposable disposable) {
            this.serial.update(disposable);
        }

        @Override // io.reactivex.FlowableEmitter
        public boolean tryOnError(Throwable th) {
            return error(th);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$BufferAsyncEmitter.class */
    static final class BufferAsyncEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 2427151001689639875L;
        volatile boolean done;
        Throwable error;
        final SpscLinkedArrayQueue<T> queue;
        final AtomicInteger wip = new AtomicInteger();

        BufferAsyncEmitter(Subscriber<? super T> subscriber, int i) {
            super(subscriber);
            this.queue = new SpscLinkedArrayQueue<>(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x008e, code lost:
            if (r0 != 0) goto L_0x00ca;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0095, code lost:
            if (isCancelled() == false) goto L_0x009d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0098, code lost:
            r0.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x009c, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x009d, code lost:
            r0 = r5.done;
            r0 = r0.isEmpty();
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00ab, code lost:
            if (r0 == false) goto L_0x00ca;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00b0, code lost:
            if (r0 == false) goto L_0x00ca;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b3, code lost:
            r0 = r5.error;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00b9, code lost:
            if (r0 == null) goto L_0x00c5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00bc, code lost:
            error(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00c5, code lost:
            complete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00c9, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00ce, code lost:
            if (r0 == 0) goto L_0x00d8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00d1, code lost:
            io.reactivex.internal.util.BackpressureHelper.produced(r5, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00d8, code lost:
            r0 = r5.wip.addAndGet(-r8);
            r8 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:?, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drain() {
            /*
                Method dump skipped, instructions count: 236
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableCreate.BufferAsyncEmitter.drain():void");
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter, io.reactivex.Emitter
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (!this.done && !isCancelled()) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                    return;
                }
                this.queue.offer(t);
                drain();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        void onRequested() {
            drain();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter, io.reactivex.FlowableEmitter
        public boolean tryOnError(Throwable th) {
            if (this.done || isCancelled()) {
                return false;
            }
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.error = th2;
            this.done = true;
            drain();
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$DropAsyncEmitter.class */
    static final class DropAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        private static final long serialVersionUID = 8360058422307496563L;

        DropAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.NoOverflowBaseAsyncEmitter
        void onOverflow() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$ErrorAsyncEmitter.class */
    static final class ErrorAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        private static final long serialVersionUID = 338953216916120960L;

        ErrorAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.NoOverflowBaseAsyncEmitter
        void onOverflow() {
            onError(new MissingBackpressureException("create: could not emit value due to lack of requests"));
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter.class */
    static final class LatestAsyncEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 4023437720691792495L;
        volatile boolean done;
        Throwable error;
        final AtomicReference<T> queue = new AtomicReference<>();
        final AtomicInteger wip = new AtomicInteger();

        LatestAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0093, code lost:
            if (r0 != 0) goto L_0x00d8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x009a, code lost:
            if (isCancelled() == false) goto L_0x00a3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x009d, code lost:
            r0.lazySet(null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00a2, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00a3, code lost:
            r0 = r5.done;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00b1, code lost:
            if (r0.get() != null) goto L_0x00b7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00b4, code lost:
            r17 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b9, code lost:
            if (r0 == false) goto L_0x00d8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00be, code lost:
            if (r17 == false) goto L_0x00d8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00c1, code lost:
            r0 = r5.error;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00c7, code lost:
            if (r0 == null) goto L_0x00d3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00ca, code lost:
            error(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00d3, code lost:
            complete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00d7, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00dc, code lost:
            if (r0 == 0) goto L_0x00e6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00df, code lost:
            io.reactivex.internal.util.BackpressureHelper.produced(r5, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00e6, code lost:
            r0 = r5.wip.addAndGet(-r8);
            r8 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drain() {
            /*
                Method dump skipped, instructions count: 250
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableCreate.LatestAsyncEmitter.drain():void");
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter, io.reactivex.Emitter
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (!this.done && !isCancelled()) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                    return;
                }
                this.queue.set(t);
                drain();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        void onRequested() {
            drain();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        void onUnsubscribed() {
            if (this.wip.getAndIncrement() == 0) {
                this.queue.lazySet(null);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter, io.reactivex.FlowableEmitter
        public boolean tryOnError(Throwable th) {
            if (this.done || isCancelled()) {
                return false;
            }
            if (th == null) {
                onError(new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources."));
            }
            this.error = th;
            this.done = true;
            drain();
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter.class */
    static final class MissingEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 3776720187248809713L;

        MissingEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            long j;
            if (!isCancelled()) {
                if (t != null) {
                    this.actual.onNext(t);
                    do {
                        j = get();
                        if (j == 0) {
                            return;
                        }
                    } while (!compareAndSet(j, j - 1));
                    return;
                }
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$NoOverflowBaseAsyncEmitter.class */
    static abstract class NoOverflowBaseAsyncEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 4127754106204442833L;

        NoOverflowBaseAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.Emitter
        public final void onNext(T t) {
            if (!isCancelled()) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else if (get() != 0) {
                    this.actual.onNext(t);
                    BackpressureHelper.produced(this, 1L);
                } else {
                    onOverflow();
                }
            }
        }

        abstract void onOverflow();
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter.class */
    static final class SerializedEmitter<T> extends AtomicInteger implements FlowableEmitter<T> {
        private static final long serialVersionUID = 4883307006032401862L;
        volatile boolean done;
        final BaseEmitter<T> emitter;
        final AtomicThrowable error = new AtomicThrowable();
        final SimplePlainQueue<T> queue = new SpscLinkedArrayQueue(16);

        SerializedEmitter(BaseEmitter<T> baseEmitter) {
            this.emitter = baseEmitter;
        }

        void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        void drainLoop() {
            BaseEmitter<T> baseEmitter = this.emitter;
            SimplePlainQueue<T> simplePlainQueue = this.queue;
            AtomicThrowable atomicThrowable = this.error;
            int i = 1;
            while (!baseEmitter.isCancelled()) {
                if (atomicThrowable.get() != null) {
                    simplePlainQueue.clear();
                    baseEmitter.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z = this.done;
                T poll = simplePlainQueue.poll();
                boolean z2 = poll == null;
                if (z && z2) {
                    baseEmitter.onComplete();
                    return;
                } else if (z2) {
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    baseEmitter.onNext(poll);
                }
            }
            simplePlainQueue.clear();
        }

        @Override // io.reactivex.FlowableEmitter
        public boolean isCancelled() {
            return this.emitter.isCancelled();
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            if (!this.emitter.isCancelled() && !this.done) {
                this.done = true;
                drain();
            }
        }

        @Override // io.reactivex.Emitter
        public void onError(Throwable th) {
            if (!tryOnError(th)) {
                RxJavaPlugins.onError(th);
            }
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (!this.emitter.isCancelled() && !this.done) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                    return;
                }
                if (get() != 0 || !compareAndSet(0, 1)) {
                    SimplePlainQueue<T> simplePlainQueue = this.queue;
                    synchronized (simplePlainQueue) {
                        simplePlainQueue.offer(t);
                    }
                    if (getAndIncrement() != 0) {
                        return;
                    }
                } else {
                    this.emitter.onNext(t);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                drainLoop();
            }
        }

        @Override // io.reactivex.FlowableEmitter
        public long requested() {
            return this.emitter.requested();
        }

        @Override // io.reactivex.FlowableEmitter
        public FlowableEmitter<T> serialize() {
            return this;
        }

        @Override // io.reactivex.FlowableEmitter
        public void setCancellable(Cancellable cancellable) {
            this.emitter.setCancellable(cancellable);
        }

        @Override // io.reactivex.FlowableEmitter
        public void setDisposable(Disposable disposable) {
            this.emitter.setDisposable(disposable);
        }

        @Override // io.reactivex.FlowableEmitter
        public boolean tryOnError(Throwable th) {
            if (this.emitter.isCancelled() || this.done) {
                return false;
            }
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (!this.error.addThrowable(th2)) {
                return false;
            }
            this.done = true;
            drain();
            return true;
        }
    }

    public FlowableCreate(FlowableOnSubscribe<T> flowableOnSubscribe, BackpressureStrategy backpressureStrategy) {
        this.source = flowableOnSubscribe;
        this.backpressure = backpressureStrategy;
    }

    @Override // io.reactivex.Flowable
    public void subscribeActual(Subscriber<? super T> subscriber) {
        BaseEmitter baseEmitter;
        switch (C18691.$SwitchMap$io$reactivex$BackpressureStrategy[this.backpressure.ordinal()]) {
            case 1:
                baseEmitter = new MissingEmitter(subscriber);
                break;
            case 2:
                baseEmitter = new ErrorAsyncEmitter(subscriber);
                break;
            case 3:
                baseEmitter = new DropAsyncEmitter(subscriber);
                break;
            case 4:
                baseEmitter = new LatestAsyncEmitter(subscriber);
                break;
            default:
                baseEmitter = new BufferAsyncEmitter(subscriber, bufferSize());
                break;
        }
        subscriber.onSubscribe(baseEmitter);
        try {
            this.source.subscribe(baseEmitter);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            baseEmitter.onError(th);
        }
    }
}
