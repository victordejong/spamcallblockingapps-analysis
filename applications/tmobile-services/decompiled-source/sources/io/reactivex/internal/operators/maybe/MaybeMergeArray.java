package io.reactivex.internal.operators.maybe;

import io.reactivex.Flowable;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeMergeArray.class */
public final class MaybeMergeArray<T> extends Flowable<T> {

    /* renamed from: g */
    final MaybeSource<? extends T>[] f17162g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeMergeArray$ClqSimpleQueue.class */
    static final class ClqSimpleQueue<T> extends ConcurrentLinkedQueue<T> implements SimpleQueueWithConsumerIndex<T> {
        private static final long serialVersionUID = -4025173261791142821L;

        /* renamed from: f */
        int f17163f;

        /* renamed from: g */
        final AtomicInteger f17164g = new AtomicInteger();

        ClqSimpleQueue() {
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.SimpleQueueWithConsumerIndex
        /* renamed from: e */
        public int mo3989e() {
            return this.f17164g.get();
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.SimpleQueueWithConsumerIndex
        /* renamed from: g */
        public void mo3988g() {
            poll();
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.SimpleQueueWithConsumerIndex
        /* renamed from: h */
        public int mo3987h() {
            return this.f17163f;
        }

        @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue, io.reactivex.internal.fuseable.SimpleQueue
        public boolean offer(T t) {
            this.f17164g.getAndIncrement();
            return super.offer(t);
        }

        @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue, io.reactivex.internal.operators.maybe.MaybeMergeArray.SimpleQueueWithConsumerIndex, io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() {
            T t = (T) super.poll();
            if (t != null) {
                this.f17163f++;
            }
            return t;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver.class */
    static final class MergeMaybeObserver<T> extends BasicIntQueueSubscription<T> implements MaybeObserver<T> {
        private static final long serialVersionUID = -660395290758764731L;

        /* renamed from: f */
        final Subscriber<? super T> f17165f;

        /* renamed from: i */
        final SimpleQueueWithConsumerIndex<Object> f17168i;

        /* renamed from: k */
        final int f17170k;

        /* renamed from: l */
        volatile boolean f17171l;

        /* renamed from: m */
        boolean f17172m;

        /* renamed from: n */
        long f17173n;

        /* renamed from: g */
        final CompositeDisposable f17166g = new CompositeDisposable();

        /* renamed from: h */
        final AtomicLong f17167h = new AtomicLong();

        /* renamed from: j */
        final AtomicThrowable f17169j = new AtomicThrowable();

        MergeMaybeObserver(Subscriber<? super T> subscriber, int i, SimpleQueueWithConsumerIndex<Object> simpleQueueWithConsumerIndex) {
            this.f17165f = subscriber;
            this.f17170k = i;
            this.f17168i = simpleQueueWithConsumerIndex;
        }

        /* renamed from: b */
        void m3993b() {
            if (getAndIncrement() == 0) {
                if (this.f17172m) {
                    m3992d();
                } else {
                    m3991f();
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f17171l) {
                this.f17171l = true;
                this.f17166g.dispose();
                if (getAndIncrement() == 0) {
                    this.f17168i.clear();
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f17168i.clear();
        }

        /* renamed from: d */
        void m3992d() {
            Subscriber<? super T> subscriber = this.f17165f;
            SimpleQueueWithConsumerIndex<Object> simpleQueueWithConsumerIndex = this.f17168i;
            int i = 1;
            while (!this.f17171l) {
                Throwable th = this.f17169j.get();
                if (th != null) {
                    simpleQueueWithConsumerIndex.clear();
                    subscriber.onError(th);
                    return;
                }
                boolean z = simpleQueueWithConsumerIndex.mo3989e() == this.f17170k;
                if (!simpleQueueWithConsumerIndex.isEmpty()) {
                    subscriber.onNext(null);
                }
                if (z) {
                    subscriber.onComplete();
                    return;
                }
                int addAndGet = addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            }
            simpleQueueWithConsumerIndex.clear();
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0092, code lost:
            if (r0 != 0) goto L_0x00df;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x009f, code lost:
            if (r5.f17169j.get() == null) goto L_0x00b6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00a2, code lost:
            r0.clear();
            r0.onError(r5.f17169j.m3455b());
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x00b5, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00bf, code lost:
            if (r0.peek() != io.reactivex.internal.util.NotificationLite.COMPLETE) goto L_0x00cb;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00c2, code lost:
            r0.mo3988g();
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00d5, code lost:
            if (r0.mo3987h() != r5.f17170k) goto L_0x00df;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00d8, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00de, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00df, code lost:
            r5.f17173n = r8;
            r0 = addAndGet(-r10);
            r10 = r0;
         */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m3991f() {
            /*
                Method dump skipped, instructions count: 247
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.maybe.MaybeMergeArray.MergeMaybeObserver.m3991f():void");
        }

        /* renamed from: i */
        boolean m3990i() {
            return this.f17171l;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f17168i.isEmpty();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17168i.offer(NotificationLite.COMPLETE);
            m3993b();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            if (this.f17169j.m3456a(th)) {
                this.f17166g.dispose();
                this.f17168i.offer(NotificationLite.COMPLETE);
                m3993b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            this.f17166g.mo4425b(disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17168i.offer(t);
            m3993b();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            T t;
            do {
                t = (T) this.f17168i.poll();
            } while (t == NotificationLite.COMPLETE);
            return t;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f17167h, j);
                m3993b();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.f17172m = true;
            return 2;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeMergeArray$MpscFillOnceSimpleQueue.class */
    static final class MpscFillOnceSimpleQueue<T> extends AtomicReferenceArray<T> implements SimpleQueueWithConsumerIndex<T> {
        private static final long serialVersionUID = -7969063454040569579L;

        /* renamed from: f */
        final AtomicInteger f17174f = new AtomicInteger();

        /* renamed from: g */
        int f17175g;

        MpscFillOnceSimpleQueue(int i) {
            super(i);
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            while (poll() != null && !isEmpty()) {
            }
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.SimpleQueueWithConsumerIndex
        /* renamed from: e */
        public int mo3989e() {
            return this.f17174f.get();
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.SimpleQueueWithConsumerIndex
        /* renamed from: g */
        public void mo3988g() {
            int i = this.f17175g;
            lazySet(i, null);
            this.f17175g = i + 1;
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.SimpleQueueWithConsumerIndex
        /* renamed from: h */
        public int mo3987h() {
            return this.f17175g;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f17175g == mo3989e();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean offer(T t) {
            ObjectHelper.m4363e(t, "value is null");
            int andIncrement = this.f17174f.getAndIncrement();
            if (andIncrement >= length()) {
                return false;
            }
            lazySet(andIncrement, t);
            return true;
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.SimpleQueueWithConsumerIndex
        public T peek() {
            int i = this.f17175g;
            if (i == length()) {
                return null;
            }
            return get(i);
        }

        @Override // io.reactivex.internal.operators.maybe.MaybeMergeArray.SimpleQueueWithConsumerIndex, java.util.Queue, io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() {
            int i = this.f17175g;
            if (i == length()) {
                return null;
            }
            AtomicInteger atomicInteger = this.f17174f;
            do {
                T t = get(i);
                if (t != null) {
                    this.f17175g = i + 1;
                    lazySet(i, null);
                    return t;
                }
            } while (atomicInteger.get() != i);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex.class */
    public interface SimpleQueueWithConsumerIndex<T> extends SimpleQueue<T> {
        /* renamed from: e */
        int mo3989e();

        /* renamed from: g */
        void mo3988g();

        /* renamed from: h */
        int mo3987h();

        T peek();

        @Override // java.util.Queue, io.reactivex.internal.operators.maybe.MaybeMergeArray.SimpleQueueWithConsumerIndex, io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        T poll();
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        MaybeSource[] maybeSourceArr = this.f17162g;
        int length = maybeSourceArr.length;
        MergeMaybeObserver mergeMaybeObserver = new MergeMaybeObserver(subscriber, length, length <= Flowable.m4511a() ? new MpscFillOnceSimpleQueue(length) : new ClqSimpleQueue());
        subscriber.onSubscribe(mergeMaybeObserver);
        AtomicThrowable atomicThrowable = mergeMaybeObserver.f17169j;
        for (MaybeSource maybeSource : maybeSourceArr) {
            if (!mergeMaybeObserver.m3990i() && atomicThrowable.get() == null) {
                maybeSource.mo4485b(mergeMaybeObserver);
            } else {
                return;
            }
        }
    }
}
