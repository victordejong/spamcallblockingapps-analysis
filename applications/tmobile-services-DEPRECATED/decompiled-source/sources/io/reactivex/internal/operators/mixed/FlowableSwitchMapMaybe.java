package io.reactivex.internal.operators.mixed;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe.class */
public final class FlowableSwitchMapMaybe<T, R> extends Flowable<R> {

    /* renamed from: g */
    final Flowable<T> f17361g;

    /* renamed from: h */
    final Function<? super T, ? extends MaybeSource<? extends R>> f17362h;

    /* renamed from: i */
    final boolean f17363i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber.class */
    static final class SwitchMapMaybeSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {

        /* renamed from: p */
        static final SwitchMapMaybeObserver<Object> f17364p = new SwitchMapMaybeObserver<>(null);
        private static final long serialVersionUID = -5402190102429853762L;

        /* renamed from: f */
        final Subscriber<? super R> f17365f;

        /* renamed from: g */
        final Function<? super T, ? extends MaybeSource<? extends R>> f17366g;

        /* renamed from: h */
        final boolean f17367h;

        /* renamed from: i */
        final AtomicThrowable f17368i = new AtomicThrowable();

        /* renamed from: j */
        final AtomicLong f17369j = new AtomicLong();

        /* renamed from: k */
        final AtomicReference<SwitchMapMaybeObserver<R>> f17370k = new AtomicReference<>();

        /* renamed from: l */
        Subscription f17371l;

        /* renamed from: m */
        volatile boolean f17372m;

        /* renamed from: n */
        volatile boolean f17373n;

        /* renamed from: o */
        long f17374o;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber$SwitchMapMaybeObserver.class */
        public static final class SwitchMapMaybeObserver<R> extends AtomicReference<Disposable> implements MaybeObserver<R> {
            private static final long serialVersionUID = 8042919737683345351L;

            /* renamed from: f */
            final SwitchMapMaybeSubscriber<?, R> f17375f;

            /* renamed from: g */
            volatile R f17376g;

            SwitchMapMaybeObserver(SwitchMapMaybeSubscriber<?, R> switchMapMaybeSubscriber) {
                this.f17375f = switchMapMaybeSubscriber;
            }

            /* renamed from: a */
            void m3947a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.f17375f.m3949c(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.f17375f.m3948d(this, th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                this.f17376g = r;
                this.f17375f.m3950b();
            }
        }

        SwitchMapMaybeSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
            this.f17365f = subscriber;
            this.f17366g = function;
            this.f17367h = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        void m3951a() {
            SwitchMapMaybeObserver<Object> switchMapMaybeObserver = (SwitchMapMaybeObserver) this.f17370k.getAndSet(f17364p);
            if (switchMapMaybeObserver != null && switchMapMaybeObserver != f17364p) {
                switchMapMaybeObserver.m3947a();
            }
        }

        /* renamed from: b */
        void m3950b() {
            if (getAndIncrement() == 0) {
                Subscriber<? super R> subscriber = this.f17365f;
                AtomicThrowable atomicThrowable = this.f17368i;
                AtomicReference<SwitchMapMaybeObserver<R>> atomicReference = this.f17370k;
                AtomicLong atomicLong = this.f17369j;
                long j = this.f17374o;
                int i = 1;
                while (!this.f17373n) {
                    if (atomicThrowable.get() == null || this.f17367h) {
                        boolean z = this.f17372m;
                        SwitchMapMaybeObserver<R> switchMapMaybeObserver = atomicReference.get();
                        boolean z2 = switchMapMaybeObserver == null;
                        if (z && z2) {
                            Throwable b = atomicThrowable.m3455b();
                            if (b != null) {
                                subscriber.onError(b);
                                return;
                            } else {
                                subscriber.onComplete();
                                return;
                            }
                        } else if (z2 || switchMapMaybeObserver.f17376g == null || j == atomicLong.get()) {
                            this.f17374o = j;
                            int addAndGet = addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else {
                            atomicReference.compareAndSet(switchMapMaybeObserver, null);
                            subscriber.onNext((R) switchMapMaybeObserver.f17376g);
                            j++;
                        }
                    } else {
                        subscriber.onError(atomicThrowable.m3455b());
                        return;
                    }
                }
            }
        }

        /* renamed from: c */
        void m3949c(SwitchMapMaybeObserver<R> switchMapMaybeObserver) {
            if (this.f17370k.compareAndSet(switchMapMaybeObserver, null)) {
                m3950b();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f17373n = true;
            this.f17371l.cancel();
            m3951a();
        }

        /* renamed from: d */
        void m3948d(SwitchMapMaybeObserver<R> switchMapMaybeObserver, Throwable th) {
            if (!this.f17370k.compareAndSet(switchMapMaybeObserver, null) || !this.f17368i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            if (!this.f17367h) {
                this.f17371l.cancel();
                m3951a();
            }
            m3950b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f17372m = true;
            m3950b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f17368i.m3456a(th)) {
                if (!this.f17367h) {
                    m3951a();
                }
                this.f17372m = true;
                m3950b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            SwitchMapMaybeObserver<R> switchMapMaybeObserver;
            SwitchMapMaybeObserver<R> switchMapMaybeObserver2 = this.f17370k.get();
            if (switchMapMaybeObserver2 != null) {
                switchMapMaybeObserver2.m3947a();
            }
            try {
                Object apply = this.f17366g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null MaybeSource");
                MaybeSource maybeSource = (MaybeSource) apply;
                SwitchMapMaybeObserver<R> switchMapMaybeObserver3 = new SwitchMapMaybeObserver<>(this);
                do {
                    switchMapMaybeObserver = this.f17370k.get();
                    if (switchMapMaybeObserver == f17364p) {
                        return;
                    }
                } while (!this.f17370k.compareAndSet(switchMapMaybeObserver, switchMapMaybeObserver3));
                maybeSource.mo4485b(switchMapMaybeObserver3);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17371l.cancel();
                this.f17370k.getAndSet(f17364p);
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f17371l, subscription)) {
                this.f17371l = subscription;
                this.f17365f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            BackpressureHelper.m3454a(this.f17369j, j);
            m3950b();
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f17361g.m4493v(new SwitchMapMaybeSubscriber(subscriber, this.f17362h, this.f17363i));
    }
}
