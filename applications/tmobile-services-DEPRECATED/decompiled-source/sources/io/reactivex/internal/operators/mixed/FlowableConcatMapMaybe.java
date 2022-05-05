package io.reactivex.internal.operators.mixed;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
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
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapMaybe.class */
public final class FlowableConcatMapMaybe<T, R> extends Flowable<R> {

    /* renamed from: g */
    final Flowable<T> f17309g;

    /* renamed from: h */
    final Function<? super T, ? extends MaybeSource<? extends R>> f17310h;

    /* renamed from: i */
    final ErrorMode f17311i;

    /* renamed from: j */
    final int f17312j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber.class */
    static final class ConcatMapMaybeSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -9140123220065488293L;

        /* renamed from: f */
        final Subscriber<? super R> f17313f;

        /* renamed from: g */
        final Function<? super T, ? extends MaybeSource<? extends R>> f17314g;

        /* renamed from: h */
        final int f17315h;

        /* renamed from: i */
        final AtomicLong f17316i = new AtomicLong();

        /* renamed from: j */
        final AtomicThrowable f17317j = new AtomicThrowable();

        /* renamed from: k */
        final ConcatMapMaybeObserver<R> f17318k = new ConcatMapMaybeObserver<>(this);

        /* renamed from: l */
        final SimplePlainQueue<T> f17319l;

        /* renamed from: m */
        final ErrorMode f17320m;

        /* renamed from: n */
        Subscription f17321n;

        /* renamed from: o */
        volatile boolean f17322o;

        /* renamed from: p */
        volatile boolean f17323p;

        /* renamed from: q */
        long f17324q;

        /* renamed from: r */
        int f17325r;

        /* renamed from: s */
        R f17326s;

        /* renamed from: t */
        volatile int f17327t;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver.class */
        public static final class ConcatMapMaybeObserver<R> extends AtomicReference<Disposable> implements MaybeObserver<R> {
            private static final long serialVersionUID = -3051469169682093892L;

            /* renamed from: f */
            final ConcatMapMaybeSubscriber<?, R> f17328f;

            ConcatMapMaybeObserver(ConcatMapMaybeSubscriber<?, R> concatMapMaybeSubscriber) {
                this.f17328f = concatMapMaybeSubscriber;
            }

            /* renamed from: a */
            void m3960a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.f17328f.m3963b();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.f17328f.m3962c(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.replace(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                this.f17328f.m3961d(r);
            }
        }

        ConcatMapMaybeSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends MaybeSource<? extends R>> function, int i, ErrorMode errorMode) {
            this.f17313f = subscriber;
            this.f17314g = function;
            this.f17315h = i;
            this.f17320m = errorMode;
            this.f17319l = new SpscArrayQueue(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x006b, code lost:
            r0.clear();
            r6.f17326s = null;
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
        void m3964a() {
            /*
                Method dump skipped, instructions count: 412
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.mixed.FlowableConcatMapMaybe.ConcatMapMaybeSubscriber.m3964a():void");
        }

        /* renamed from: b */
        void m3963b() {
            this.f17327t = 0;
            m3964a();
        }

        /* renamed from: c */
        void m3962c(Throwable th) {
            if (this.f17317j.m3456a(th)) {
                if (this.f17320m != ErrorMode.END) {
                    this.f17321n.cancel();
                }
                this.f17327t = 0;
                m3964a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f17323p = true;
            this.f17321n.cancel();
            this.f17318k.m3960a();
            if (getAndIncrement() == 0) {
                this.f17319l.clear();
                this.f17326s = null;
            }
        }

        /* renamed from: d */
        void m3961d(R r) {
            this.f17326s = r;
            this.f17327t = 2;
            m3964a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f17322o = true;
            m3964a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f17317j.m3456a(th)) {
                if (this.f17320m == ErrorMode.IMMEDIATE) {
                    this.f17318k.m3960a();
                }
                this.f17322o = true;
                m3964a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f17319l.offer(t)) {
                this.f17321n.cancel();
                onError(new MissingBackpressureException("queue full?!"));
                return;
            }
            m3964a();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f17321n, subscription)) {
                this.f17321n = subscription;
                this.f17313f.onSubscribe(this);
                subscription.request(this.f17315h);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            BackpressureHelper.m3454a(this.f17316i, j);
            m3964a();
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f17309g.m4493v(new ConcatMapMaybeSubscriber(subscriber, this.f17310h, this.f17312j, this.f17311i));
    }
}
