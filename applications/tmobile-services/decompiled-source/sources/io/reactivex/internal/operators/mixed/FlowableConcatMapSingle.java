package io.reactivex.internal.operators.mixed;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapSingle.class */
public final class FlowableConcatMapSingle<T, R> extends Flowable<R> {

    /* renamed from: g */
    final Flowable<T> f17329g;

    /* renamed from: h */
    final Function<? super T, ? extends SingleSource<? extends R>> f17330h;

    /* renamed from: i */
    final ErrorMode f17331i;

    /* renamed from: j */
    final int f17332j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber.class */
    static final class ConcatMapSingleSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -9140123220065488293L;

        /* renamed from: f */
        final Subscriber<? super R> f17333f;

        /* renamed from: g */
        final Function<? super T, ? extends SingleSource<? extends R>> f17334g;

        /* renamed from: h */
        final int f17335h;

        /* renamed from: i */
        final AtomicLong f17336i = new AtomicLong();

        /* renamed from: j */
        final AtomicThrowable f17337j = new AtomicThrowable();

        /* renamed from: k */
        final ConcatMapSingleObserver<R> f17338k = new ConcatMapSingleObserver<>(this);

        /* renamed from: l */
        final SimplePlainQueue<T> f17339l;

        /* renamed from: m */
        final ErrorMode f17340m;

        /* renamed from: n */
        Subscription f17341n;

        /* renamed from: o */
        volatile boolean f17342o;

        /* renamed from: p */
        volatile boolean f17343p;

        /* renamed from: q */
        long f17344q;

        /* renamed from: r */
        int f17345r;

        /* renamed from: s */
        R f17346s;

        /* renamed from: t */
        volatile int f17347t;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber$ConcatMapSingleObserver.class */
        public static final class ConcatMapSingleObserver<R> extends AtomicReference<Disposable> implements SingleObserver<R> {
            private static final long serialVersionUID = -3051469169682093892L;

            /* renamed from: f */
            final ConcatMapSingleSubscriber<?, R> f17348f;

            ConcatMapSingleObserver(ConcatMapSingleSubscriber<?, R> concatMapSingleSubscriber) {
                this.f17348f = concatMapSingleSubscriber;
            }

            /* renamed from: a */
            void m3956a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.f17348f.m3958b(th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.replace(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(R r) {
                this.f17348f.m3957c(r);
            }
        }

        ConcatMapSingleSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends SingleSource<? extends R>> function, int i, ErrorMode errorMode) {
            this.f17333f = subscriber;
            this.f17334g = function;
            this.f17335h = i;
            this.f17340m = errorMode;
            this.f17339l = new SpscArrayQueue(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x006b, code lost:
            r0.clear();
            r6.f17346s = null;
            r0.onError(r0.m3455b());
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0081, code lost:
            return;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m3959a() {
            /*
                Method dump skipped, instructions count: 415
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.mixed.FlowableConcatMapSingle.ConcatMapSingleSubscriber.m3959a():void");
        }

        /* renamed from: b */
        void m3958b(Throwable th) {
            if (this.f17337j.m3456a(th)) {
                if (this.f17340m != ErrorMode.END) {
                    this.f17341n.cancel();
                }
                this.f17347t = 0;
                m3959a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: c */
        void m3957c(R r) {
            this.f17346s = r;
            this.f17347t = 2;
            m3959a();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f17343p = true;
            this.f17341n.cancel();
            this.f17338k.m3956a();
            if (getAndIncrement() == 0) {
                this.f17339l.clear();
                this.f17346s = null;
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f17342o = true;
            m3959a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f17337j.m3456a(th)) {
                if (this.f17340m == ErrorMode.IMMEDIATE) {
                    this.f17338k.m3956a();
                }
                this.f17342o = true;
                m3959a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f17339l.offer(t)) {
                this.f17341n.cancel();
                onError(new MissingBackpressureException("queue full?!"));
                return;
            }
            m3959a();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f17341n, subscription)) {
                this.f17341n = subscription;
                this.f17333f.onSubscribe(this);
                subscription.request(this.f17335h);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            BackpressureHelper.m3454a(this.f17336i, j);
            m3959a();
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f17329g.m4493v(new ConcatMapSingleSubscriber(subscriber, this.f17330h, this.f17332j, this.f17331i));
    }
}
