package io.reactivex.internal.operators.single;

import io.reactivex.Flowable;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMapIterableFlowable.class */
public final class SingleFlatMapIterableFlowable<T, R> extends Flowable<R> {

    /* renamed from: g */
    final SingleSource<T> f19085g;

    /* renamed from: h */
    final Function<? super T, ? extends Iterable<? extends R>> f19086h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMapIterableFlowable$FlatMapIterableObserver.class */
    static final class FlatMapIterableObserver<T, R> extends BasicIntQueueSubscription<R> implements SingleObserver<T> {
        private static final long serialVersionUID = -8938804753851907758L;

        /* renamed from: f */
        final Subscriber<? super R> f19087f;

        /* renamed from: g */
        final Function<? super T, ? extends Iterable<? extends R>> f19088g;

        /* renamed from: h */
        final AtomicLong f19089h = new AtomicLong();

        /* renamed from: i */
        Disposable f19090i;

        /* renamed from: j */
        volatile Iterator<? extends R> f19091j;

        /* renamed from: k */
        volatile boolean f19092k;

        /* renamed from: l */
        boolean f19093l;

        FlatMapIterableObserver(Subscriber<? super R> subscriber, Function<? super T, ? extends Iterable<? extends R>> function) {
            this.f19087f = subscriber;
            this.f19088g = function;
        }

        /* renamed from: b */
        void m3584b() {
            if (getAndIncrement() == 0) {
                Subscriber<? super R> subscriber = this.f19087f;
                Iterator<? extends R> it = this.f19091j;
                if (!this.f19093l || it == null) {
                    int i = 1;
                    while (true) {
                        if (it != null) {
                            long j = this.f19089h.get();
                            if (j == Long.MAX_VALUE) {
                                m3583d(subscriber, it);
                                return;
                            }
                            long j2 = 0;
                            while (j2 != j) {
                                if (!this.f19092k) {
                                    try {
                                        Object obj = (Object) it.next();
                                        ObjectHelper.m4363e(obj, "The iterator returned a null value");
                                        subscriber.onNext(obj);
                                        if (!this.f19092k) {
                                            j2++;
                                            try {
                                                if (!it.hasNext()) {
                                                    subscriber.onComplete();
                                                    return;
                                                }
                                            } catch (Throwable th) {
                                                Exceptions.m4428b(th);
                                                subscriber.onError(th);
                                                return;
                                            }
                                        } else {
                                            return;
                                        }
                                    } catch (Throwable th2) {
                                        Exceptions.m4428b(th2);
                                        subscriber.onError(th2);
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            }
                            if (j2 != 0) {
                                BackpressureHelper.m3450e(this.f19089h, j2);
                            }
                        }
                        int addAndGet = addAndGet(-i);
                        if (addAndGet != 0) {
                            i = addAndGet;
                            if (it == null) {
                                it = this.f19091j;
                                i = addAndGet;
                            }
                        } else {
                            return;
                        }
                    }
                } else {
                    subscriber.onNext(null);
                    subscriber.onComplete();
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f19092k = true;
            this.f19090i.dispose();
            this.f19090i = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f19091j = null;
        }

        /* renamed from: d */
        void m3583d(Subscriber<? super R> subscriber, Iterator<? extends R> it) {
            while (!this.f19092k) {
                try {
                    subscriber.onNext((Object) it.next());
                    if (!this.f19092k) {
                        try {
                            if (!it.hasNext()) {
                                subscriber.onComplete();
                                return;
                            }
                        } catch (Throwable th) {
                            Exceptions.m4428b(th);
                            subscriber.onError(th);
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    subscriber.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f19091j == null;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19090i = DisposableHelper.DISPOSED;
            this.f19087f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f19090i, disposable)) {
                this.f19090i = disposable;
                this.f19087f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                Iterator<? extends R> it = ((Iterable) this.f19088g.apply(t)).iterator();
                if (!it.hasNext()) {
                    this.f19087f.onComplete();
                    return;
                }
                this.f19091j = it;
                m3584b();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f19087f.onError(th);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f19091j;
            if (it == null) {
                return null;
            }
            R r = (R) it.next();
            ObjectHelper.m4363e(r, "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f19091j = null;
            }
            return r;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f19089h, j);
                m3584b();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.f19093l = true;
            return 2;
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f19085g.mo4457b(new FlatMapIterableObserver(subscriber, this.f19086h));
    }
}
