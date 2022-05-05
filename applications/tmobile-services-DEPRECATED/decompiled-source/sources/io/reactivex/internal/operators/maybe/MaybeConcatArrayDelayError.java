package io.reactivex.internal.operators.maybe;

import io.reactivex.Flowable;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError.class */
public final class MaybeConcatArrayDelayError<T> extends Flowable<T> {

    /* renamed from: g */
    final MaybeSource<? extends T>[] f16985g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver.class */
    static final class ConcatMaybeObserver<T> extends AtomicInteger implements MaybeObserver<T>, Subscription {
        private static final long serialVersionUID = 3520831347801429610L;

        /* renamed from: f */
        final Subscriber<? super T> f16986f;

        /* renamed from: j */
        final MaybeSource<? extends T>[] f16990j;

        /* renamed from: l */
        int f16992l;

        /* renamed from: m */
        long f16993m;

        /* renamed from: g */
        final AtomicLong f16987g = new AtomicLong();

        /* renamed from: i */
        final SequentialDisposable f16989i = new SequentialDisposable();

        /* renamed from: h */
        final AtomicReference<Object> f16988h = new AtomicReference<>(NotificationLite.COMPLETE);

        /* renamed from: k */
        final AtomicThrowable f16991k = new AtomicThrowable();

        ConcatMaybeObserver(Subscriber<? super T> subscriber, MaybeSource<? extends T>[] maybeSourceArr) {
            this.f16986f = subscriber;
            this.f16990j = maybeSourceArr;
        }

        /* renamed from: a */
        void m4007a() {
            if (getAndIncrement() == 0) {
                AtomicReference<Object> atomicReference = this.f16988h;
                Subscriber<? super T> subscriber = this.f16986f;
                SequentialDisposable sequentialDisposable = this.f16989i;
                while (!sequentialDisposable.isDisposed()) {
                    Object obj = atomicReference.get();
                    if (obj != null) {
                        boolean z = true;
                        if (obj != NotificationLite.COMPLETE) {
                            long j = this.f16993m;
                            if (j != this.f16987g.get()) {
                                this.f16993m = j + 1;
                                atomicReference.lazySet(null);
                                subscriber.onNext(obj);
                            } else {
                                z = false;
                            }
                        } else {
                            atomicReference.lazySet(null);
                        }
                        if (z && !sequentialDisposable.isDisposed()) {
                            int i = this.f16992l;
                            MaybeSource<? extends T>[] maybeSourceArr = this.f16990j;
                            if (i != maybeSourceArr.length) {
                                this.f16992l = i + 1;
                                maybeSourceArr[i].mo4485b(this);
                            } else if (this.f16991k.get() != null) {
                                subscriber.onError(this.f16991k.m3455b());
                                return;
                            } else {
                                subscriber.onComplete();
                                return;
                            }
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                atomicReference.lazySet(null);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16989i.dispose();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f16988h.lazySet(NotificationLite.COMPLETE);
            m4007a();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f16988h.lazySet(NotificationLite.COMPLETE);
            if (this.f16991k.m3456a(th)) {
                m4007a();
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            this.f16989i.m4422a(disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f16988h.lazySet(t);
            m4007a();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16987g, j);
                m4007a();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        ConcatMaybeObserver concatMaybeObserver = new ConcatMaybeObserver(subscriber, this.f16985g);
        subscriber.onSubscribe(concatMaybeObserver);
        concatMaybeObserver.m4007a();
    }
}
