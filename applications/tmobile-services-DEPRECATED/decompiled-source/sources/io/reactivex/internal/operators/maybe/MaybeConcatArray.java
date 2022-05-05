package io.reactivex.internal.operators.maybe;

import io.reactivex.Flowable;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeConcatArray.class */
public final class MaybeConcatArray<T> extends Flowable<T> {

    /* renamed from: g */
    final MaybeSource<? extends T>[] f16977g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver.class */
    static final class ConcatMaybeObserver<T> extends AtomicInteger implements MaybeObserver<T>, Subscription {
        private static final long serialVersionUID = 3520831347801429610L;

        /* renamed from: f */
        final Subscriber<? super T> f16978f;

        /* renamed from: j */
        final MaybeSource<? extends T>[] f16982j;

        /* renamed from: k */
        int f16983k;

        /* renamed from: l */
        long f16984l;

        /* renamed from: g */
        final AtomicLong f16979g = new AtomicLong();

        /* renamed from: i */
        final SequentialDisposable f16981i = new SequentialDisposable();

        /* renamed from: h */
        final AtomicReference<Object> f16980h = new AtomicReference<>(NotificationLite.COMPLETE);

        ConcatMaybeObserver(Subscriber<? super T> subscriber, MaybeSource<? extends T>[] maybeSourceArr) {
            this.f16978f = subscriber;
            this.f16982j = maybeSourceArr;
        }

        /* renamed from: a */
        void m4008a() {
            if (getAndIncrement() == 0) {
                AtomicReference<Object> atomicReference = this.f16980h;
                Subscriber<? super T> subscriber = this.f16978f;
                SequentialDisposable sequentialDisposable = this.f16981i;
                while (!sequentialDisposable.isDisposed()) {
                    Object obj = atomicReference.get();
                    if (obj != null) {
                        boolean z = true;
                        if (obj != NotificationLite.COMPLETE) {
                            long j = this.f16984l;
                            if (j != this.f16979g.get()) {
                                this.f16984l = j + 1;
                                atomicReference.lazySet(null);
                                subscriber.onNext(obj);
                            } else {
                                z = false;
                            }
                        } else {
                            atomicReference.lazySet(null);
                        }
                        if (z && !sequentialDisposable.isDisposed()) {
                            int i = this.f16983k;
                            MaybeSource<? extends T>[] maybeSourceArr = this.f16982j;
                            if (i == maybeSourceArr.length) {
                                subscriber.onComplete();
                                return;
                            } else {
                                this.f16983k = i + 1;
                                maybeSourceArr[i].mo4485b(this);
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
            this.f16981i.dispose();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f16980h.lazySet(NotificationLite.COMPLETE);
            m4008a();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f16978f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            this.f16981i.m4422a(disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f16980h.lazySet(t);
            m4008a();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16979g, j);
                m4008a();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        ConcatMaybeObserver concatMaybeObserver = new ConcatMaybeObserver(subscriber, this.f16977g);
        subscriber.onSubscribe(concatMaybeObserver);
        concatMaybeObserver.m4008a();
    }
}
