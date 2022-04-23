package io.reactivex.internal.operators.maybe;

import io.reactivex.Flowable;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeConcatIterable.class */
public final class MaybeConcatIterable<T> extends Flowable<T> {

    /* renamed from: g */
    final Iterable<? extends MaybeSource<? extends T>> f16994g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeConcatIterable$ConcatMaybeObserver.class */
    static final class ConcatMaybeObserver<T> extends AtomicInteger implements MaybeObserver<T>, Subscription {
        private static final long serialVersionUID = 3520831347801429610L;

        /* renamed from: f */
        final Subscriber<? super T> f16995f;

        /* renamed from: j */
        final Iterator<? extends MaybeSource<? extends T>> f16999j;

        /* renamed from: k */
        long f17000k;

        /* renamed from: g */
        final AtomicLong f16996g = new AtomicLong();

        /* renamed from: i */
        final SequentialDisposable f16998i = new SequentialDisposable();

        /* renamed from: h */
        final AtomicReference<Object> f16997h = new AtomicReference<>(NotificationLite.COMPLETE);

        ConcatMaybeObserver(Subscriber<? super T> subscriber, Iterator<? extends MaybeSource<? extends T>> it) {
            this.f16995f = subscriber;
            this.f16999j = it;
        }

        /* renamed from: a */
        void m4006a() {
            if (getAndIncrement() == 0) {
                AtomicReference<Object> atomicReference = this.f16997h;
                Subscriber<? super T> subscriber = this.f16995f;
                SequentialDisposable sequentialDisposable = this.f16998i;
                while (!sequentialDisposable.isDisposed()) {
                    Object obj = atomicReference.get();
                    if (obj != null) {
                        boolean z = true;
                        if (obj != NotificationLite.COMPLETE) {
                            long j = this.f17000k;
                            if (j != this.f16996g.get()) {
                                this.f17000k = j + 1;
                                atomicReference.lazySet(null);
                                subscriber.onNext(obj);
                            } else {
                                z = false;
                            }
                        } else {
                            atomicReference.lazySet(null);
                        }
                        if (z && !sequentialDisposable.isDisposed()) {
                            try {
                                if (this.f16999j.hasNext()) {
                                    try {
                                        Object next = this.f16999j.next();
                                        ObjectHelper.m4363e(next, "The source Iterator returned a null MaybeSource");
                                        ((MaybeSource) next).mo4485b(this);
                                    } catch (Throwable th) {
                                        Exceptions.m4428b(th);
                                        subscriber.onError(th);
                                        return;
                                    }
                                } else {
                                    subscriber.onComplete();
                                }
                            } catch (Throwable th2) {
                                Exceptions.m4428b(th2);
                                subscriber.onError(th2);
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
            this.f16998i.dispose();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f16997h.lazySet(NotificationLite.COMPLETE);
            m4006a();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f16995f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            this.f16998i.m4422a(disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f16997h.lazySet(t);
            m4006a();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16996g, j);
                m4006a();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        try {
            Iterator<? extends MaybeSource<? extends T>> it = this.f16994g.iterator();
            ObjectHelper.m4363e(it, "The sources Iterable returned a null Iterator");
            ConcatMaybeObserver concatMaybeObserver = new ConcatMaybeObserver(subscriber, it);
            subscriber.onSubscribe(concatMaybeObserver);
            concatMaybeObserver.m4006a();
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}
