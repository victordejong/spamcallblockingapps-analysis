package io.reactivex.internal.operators.mixed;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
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
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableSwitchMapSingle.class */
public final class FlowableSwitchMapSingle<T, R> extends Flowable<R> {

    /* renamed from: g */
    final Flowable<T> f17377g;

    /* renamed from: h */
    final Function<? super T, ? extends SingleSource<? extends R>> f17378h;

    /* renamed from: i */
    final boolean f17379i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableSwitchMapSingle$SwitchMapSingleSubscriber.class */
    static final class SwitchMapSingleSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {

        /* renamed from: p */
        static final SwitchMapSingleObserver<Object> f17380p = new SwitchMapSingleObserver<>(null);
        private static final long serialVersionUID = -5402190102429853762L;

        /* renamed from: f */
        final Subscriber<? super R> f17381f;

        /* renamed from: g */
        final Function<? super T, ? extends SingleSource<? extends R>> f17382g;

        /* renamed from: h */
        final boolean f17383h;

        /* renamed from: i */
        final AtomicThrowable f17384i = new AtomicThrowable();

        /* renamed from: j */
        final AtomicLong f17385j = new AtomicLong();

        /* renamed from: k */
        final AtomicReference<SwitchMapSingleObserver<R>> f17386k = new AtomicReference<>();

        /* renamed from: l */
        Subscription f17387l;

        /* renamed from: m */
        volatile boolean f17388m;

        /* renamed from: n */
        volatile boolean f17389n;

        /* renamed from: o */
        long f17390o;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableSwitchMapSingle$SwitchMapSingleSubscriber$SwitchMapSingleObserver.class */
        public static final class SwitchMapSingleObserver<R> extends AtomicReference<Disposable> implements SingleObserver<R> {
            private static final long serialVersionUID = 8042919737683345351L;

            /* renamed from: f */
            final SwitchMapSingleSubscriber<?, R> f17391f;

            /* renamed from: g */
            volatile R f17392g;

            SwitchMapSingleObserver(SwitchMapSingleSubscriber<?, R> switchMapSingleSubscriber) {
                this.f17391f = switchMapSingleSubscriber;
            }

            /* renamed from: a */
            void m3943a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.f17391f.m3944c(this, th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(R r) {
                this.f17392g = r;
                this.f17391f.m3945b();
            }
        }

        SwitchMapSingleSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
            this.f17381f = subscriber;
            this.f17382g = function;
            this.f17383h = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        void m3946a() {
            SwitchMapSingleObserver<Object> switchMapSingleObserver = (SwitchMapSingleObserver) this.f17386k.getAndSet(f17380p);
            if (switchMapSingleObserver != null && switchMapSingleObserver != f17380p) {
                switchMapSingleObserver.m3943a();
            }
        }

        /* renamed from: b */
        void m3945b() {
            if (getAndIncrement() == 0) {
                Subscriber<? super R> subscriber = this.f17381f;
                AtomicThrowable atomicThrowable = this.f17384i;
                AtomicReference<SwitchMapSingleObserver<R>> atomicReference = this.f17386k;
                AtomicLong atomicLong = this.f17385j;
                long j = this.f17390o;
                int i = 1;
                while (!this.f17389n) {
                    if (atomicThrowable.get() == null || this.f17383h) {
                        boolean z = this.f17388m;
                        SwitchMapSingleObserver<R> switchMapSingleObserver = atomicReference.get();
                        boolean z2 = switchMapSingleObserver == null;
                        if (z && z2) {
                            Throwable b = atomicThrowable.m3455b();
                            if (b != null) {
                                subscriber.onError(b);
                                return;
                            } else {
                                subscriber.onComplete();
                                return;
                            }
                        } else if (z2 || switchMapSingleObserver.f17392g == null || j == atomicLong.get()) {
                            this.f17390o = j;
                            int addAndGet = addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else {
                            atomicReference.compareAndSet(switchMapSingleObserver, null);
                            subscriber.onNext((R) switchMapSingleObserver.f17392g);
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
        void m3944c(SwitchMapSingleObserver<R> switchMapSingleObserver, Throwable th) {
            if (!this.f17386k.compareAndSet(switchMapSingleObserver, null) || !this.f17384i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            if (!this.f17383h) {
                this.f17387l.cancel();
                m3946a();
            }
            m3945b();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f17389n = true;
            this.f17387l.cancel();
            m3946a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f17388m = true;
            m3945b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f17384i.m3456a(th)) {
                if (!this.f17383h) {
                    m3946a();
                }
                this.f17388m = true;
                m3945b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            SwitchMapSingleObserver<R> switchMapSingleObserver;
            SwitchMapSingleObserver<R> switchMapSingleObserver2 = this.f17386k.get();
            if (switchMapSingleObserver2 != null) {
                switchMapSingleObserver2.m3943a();
            }
            try {
                Object apply = this.f17382g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null SingleSource");
                SingleSource singleSource = (SingleSource) apply;
                SwitchMapSingleObserver<R> switchMapSingleObserver3 = new SwitchMapSingleObserver<>(this);
                do {
                    switchMapSingleObserver = this.f17386k.get();
                    if (switchMapSingleObserver == f17380p) {
                        return;
                    }
                } while (!this.f17386k.compareAndSet(switchMapSingleObserver, switchMapSingleObserver3));
                singleSource.mo4457b(switchMapSingleObserver3);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17387l.cancel();
                this.f17386k.getAndSet(f17380p);
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f17387l, subscription)) {
                this.f17387l = subscription;
                this.f17381f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            BackpressureHelper.m3454a(this.f17385j, j);
            m3945b();
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f17377g.m4493v(new SwitchMapSingleSubscriber(subscriber, this.f17378h, this.f17379i));
    }
}
