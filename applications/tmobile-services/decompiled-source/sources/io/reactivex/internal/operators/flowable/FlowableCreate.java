package io.reactivex.internal.operators.flowable;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Flowable;
import io.reactivex.FlowableEmitter;
import io.reactivex.FlowableOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
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
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate.class */
public final class FlowableCreate<T> extends Flowable<T> {

    /* renamed from: g */
    final FlowableOnSubscribe<T> f15708g;

    /* renamed from: h */
    final BackpressureStrategy f15709h;

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableCreate$1 */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$1.class */
    static /* synthetic */ class C21181 {

        /* renamed from: a */
        static final /* synthetic */ int[] f15710a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f15710a = iArr;
            try {
                iArr[BackpressureStrategy.MISSING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f15710a[BackpressureStrategy.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f15710a[BackpressureStrategy.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f15710a[BackpressureStrategy.LATEST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter.class */
    public static abstract class BaseEmitter<T> extends AtomicLong implements FlowableEmitter<T>, Subscription {
        private static final long serialVersionUID = 7326289992464377023L;

        /* renamed from: f */
        final Subscriber<? super T> f15711f;

        /* renamed from: g */
        final SequentialDisposable f15712g = new SequentialDisposable();

        BaseEmitter(Subscriber<? super T> subscriber) {
            this.f15711f = subscriber;
        }

        @Override // io.reactivex.FlowableEmitter
        /* renamed from: a */
        public final void mo4263a(Disposable disposable) {
            this.f15712g.m4421b(disposable);
        }

        /* renamed from: b */
        protected void m4271b() {
            if (!isCancelled()) {
                try {
                    this.f15711f.onComplete();
                } finally {
                    this.f15712g.dispose();
                }
            }
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: c */
        protected boolean m4270c(Throwable th) {
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isCancelled()) {
                return false;
            }
            try {
                this.f15711f.onError(th2);
                this.f15712g.dispose();
                return true;
            } catch (Throwable th3) {
                this.f15712g.dispose();
                throw th3;
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f15712g.dispose();
            mo4267e();
        }

        /* renamed from: d */
        void mo4268d() {
        }

        /* renamed from: e */
        void mo4267e() {
        }

        /* renamed from: f */
        public boolean mo4266f(Throwable th) {
            return m4270c(th);
        }

        @Override // io.reactivex.FlowableEmitter
        public final boolean isCancelled() {
            return this.f15712g.isDisposed();
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            m4271b();
        }

        @Override // io.reactivex.Emitter
        public final void onError(Throwable th) {
            if (!mo4266f(th)) {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this, j);
                mo4268d();
            }
        }

        @Override // java.util.concurrent.atomic.AtomicLong
        public String toString() {
            return String.format("%s{%s}", getClass().getSimpleName(), super.toString());
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$BufferAsyncEmitter.class */
    static final class BufferAsyncEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 2427151001689639875L;

        /* renamed from: h */
        final SpscLinkedArrayQueue<T> f15713h;

        /* renamed from: i */
        Throwable f15714i;

        /* renamed from: j */
        volatile boolean f15715j;

        /* renamed from: k */
        final AtomicInteger f15716k = new AtomicInteger();

        BufferAsyncEmitter(Subscriber<? super T> subscriber, int i) {
            super(subscriber);
            this.f15713h = new SpscLinkedArrayQueue<>(i);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        /* renamed from: d */
        void mo4268d() {
            m4269g();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        /* renamed from: e */
        void mo4267e() {
            if (this.f15716k.getAndIncrement() == 0) {
                this.f15713h.clear();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        /* renamed from: f */
        public boolean mo4266f(Throwable th) {
            if (this.f15715j || isCancelled()) {
                return false;
            }
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f15714i = th2;
            this.f15715j = true;
            m4269g();
            return true;
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
            r0 = r5.f15715j;
            r0 = r0.isEmpty();
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00ab, code lost:
            if (r0 == false) goto L_0x00ca;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00b0, code lost:
            if (r0 == false) goto L_0x00ca;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b3, code lost:
            r0 = r5.f15714i;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00b9, code lost:
            if (r0 == null) goto L_0x00c5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00bc, code lost:
            m4270c(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00c5, code lost:
            m4271b();
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00c9, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00ce, code lost:
            if (r0 == 0) goto L_0x00d8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00d1, code lost:
            io.reactivex.internal.util.BackpressureHelper.m3450e(r5, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00d8, code lost:
            r0 = r5.f15716k.addAndGet(-r8);
            r8 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:?, code lost:
            return;
         */
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4269g() {
            /*
                Method dump skipped, instructions count: 236
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableCreate.BufferAsyncEmitter.m4269g():void");
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter, io.reactivex.Emitter
        public void onComplete() {
            this.f15715j = true;
            m4269g();
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (!this.f15715j && !isCancelled()) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                    return;
                }
                this.f15713h.offer(t);
                m4269g();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$DropAsyncEmitter.class */
    static final class DropAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        private static final long serialVersionUID = 8360058422307496563L;

        DropAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.NoOverflowBaseAsyncEmitter
        /* renamed from: g */
        void mo4264g() {
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$ErrorAsyncEmitter.class */
    static final class ErrorAsyncEmitter<T> extends NoOverflowBaseAsyncEmitter<T> {
        private static final long serialVersionUID = 338953216916120960L;

        ErrorAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.NoOverflowBaseAsyncEmitter
        /* renamed from: g */
        void mo4264g() {
            onError(new MissingBackpressureException("create: could not emit value due to lack of requests"));
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter.class */
    static final class LatestAsyncEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 4023437720691792495L;

        /* renamed from: i */
        Throwable f15718i;

        /* renamed from: j */
        volatile boolean f15719j;

        /* renamed from: h */
        final AtomicReference<T> f15717h = new AtomicReference<>();

        /* renamed from: k */
        final AtomicInteger f15720k = new AtomicInteger();

        LatestAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        /* renamed from: d */
        void mo4268d() {
            m4265g();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        /* renamed from: e */
        void mo4267e() {
            if (this.f15720k.getAndIncrement() == 0) {
                this.f15717h.lazySet(null);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter
        /* renamed from: f */
        public boolean mo4266f(Throwable th) {
            if (this.f15719j || isCancelled()) {
                return false;
            }
            if (th == null) {
                onError(new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources."));
            }
            this.f15718i = th;
            this.f15719j = true;
            m4265g();
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0096, code lost:
            if (r0 != 0) goto L_0x00de;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x009d, code lost:
            if (isCancelled() == false) goto L_0x00a6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00a0, code lost:
            r0.lazySet(null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00a5, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00a6, code lost:
            r0 = r5.f15719j;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00b4, code lost:
            if (r0.get() != null) goto L_0x00ba;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00b7, code lost:
            r17 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00bc, code lost:
            if (r0 == false) goto L_0x00de;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00c1, code lost:
            if (r17 == false) goto L_0x00de;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00c4, code lost:
            r0 = r5.f15718i;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00cc, code lost:
            if (r0 == null) goto L_0x00d9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00cf, code lost:
            m4270c(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00d9, code lost:
            m4271b();
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00dd, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00e2, code lost:
            if (r0 == 0) goto L_0x00ec;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00e5, code lost:
            io.reactivex.internal.util.BackpressureHelper.m3450e(r5, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00ec, code lost:
            r0 = r5.f15720k.addAndGet(-r8);
            r8 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
            return;
         */
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4265g() {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableCreate.LatestAsyncEmitter.m4265g():void");
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableCreate.BaseEmitter, io.reactivex.Emitter
        public void onComplete() {
            this.f15719j = true;
            m4265g();
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (!this.f15719j && !isCancelled()) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                    return;
                }
                this.f15717h.set(t);
                m4265g();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter.class */
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
                    this.f15711f.onNext(t);
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

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$NoOverflowBaseAsyncEmitter.class */
    static abstract class NoOverflowBaseAsyncEmitter<T> extends BaseEmitter<T> {
        private static final long serialVersionUID = 4127754106204442833L;

        NoOverflowBaseAsyncEmitter(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        /* renamed from: g */
        abstract void mo4264g();

        @Override // io.reactivex.Emitter
        public final void onNext(T t) {
            if (!isCancelled()) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else if (get() != 0) {
                    this.f15711f.onNext(t);
                    BackpressureHelper.m3450e(this, 1L);
                } else {
                    mo4264g();
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter.class */
    static final class SerializedEmitter<T> extends AtomicInteger implements FlowableEmitter<T> {
        private static final long serialVersionUID = 4883307006032401862L;

        /* renamed from: f */
        final BaseEmitter<T> f15721f;

        /* renamed from: g */
        final AtomicThrowable f15722g;

        /* renamed from: h */
        final SimplePlainQueue<T> f15723h;

        /* renamed from: i */
        volatile boolean f15724i;

        @Override // io.reactivex.FlowableEmitter
        /* renamed from: a */
        public void mo4263a(Disposable disposable) {
            this.f15721f.mo4263a(disposable);
        }

        /* renamed from: b */
        void m4262b() {
            if (getAndIncrement() == 0) {
                m4261c();
            }
        }

        /* renamed from: c */
        void m4261c() {
            BaseEmitter<T> baseEmitter = this.f15721f;
            SimplePlainQueue<T> simplePlainQueue = this.f15723h;
            AtomicThrowable atomicThrowable = this.f15722g;
            int i = 1;
            while (!baseEmitter.isCancelled()) {
                if (atomicThrowable.get() != null) {
                    simplePlainQueue.clear();
                    baseEmitter.onError(atomicThrowable.m3455b());
                    return;
                }
                boolean z = this.f15724i;
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

        /* renamed from: d */
        public boolean m4260d(Throwable th) {
            if (this.f15721f.isCancelled() || this.f15724i) {
                return false;
            }
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (!this.f15722g.m3456a(th2)) {
                return false;
            }
            this.f15724i = true;
            m4262b();
            return true;
        }

        @Override // io.reactivex.FlowableEmitter
        public boolean isCancelled() {
            return this.f15721f.isCancelled();
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            if (!this.f15721f.isCancelled() && !this.f15724i) {
                this.f15724i = true;
                m4262b();
            }
        }

        @Override // io.reactivex.Emitter
        public void onError(Throwable th) {
            if (!m4260d(th)) {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (!this.f15721f.isCancelled() && !this.f15724i) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                    return;
                }
                if (get() != 0 || !compareAndSet(0, 1)) {
                    SimplePlainQueue<T> simplePlainQueue = this.f15723h;
                    synchronized (simplePlainQueue) {
                        simplePlainQueue.offer(t);
                    }
                    if (getAndIncrement() != 0) {
                        return;
                    }
                } else {
                    this.f15721f.onNext(t);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                m4261c();
            }
        }

        @Override // java.util.concurrent.atomic.AtomicInteger
        public String toString() {
            return this.f15721f.toString();
        }
    }

    public FlowableCreate(FlowableOnSubscribe<T> flowableOnSubscribe, BackpressureStrategy backpressureStrategy) {
        this.f15708g = flowableOnSubscribe;
        this.f15709h = backpressureStrategy;
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        int i = C21181.f15710a[this.f15709h.ordinal()];
        BaseEmitter bufferAsyncEmitter = i != 1 ? i != 2 ? i != 3 ? i != 4 ? new BufferAsyncEmitter(subscriber, Flowable.m4511a()) : new LatestAsyncEmitter(subscriber) : new DropAsyncEmitter(subscriber) : new ErrorAsyncEmitter(subscriber) : new MissingEmitter(subscriber);
        subscriber.onSubscribe(bufferAsyncEmitter);
        try {
            this.f15708g.mo2507a(bufferAsyncEmitter);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            bufferAsyncEmitter.onError(th);
        }
    }
}
