package io.reactivex.internal.operators.maybe;

import io.reactivex.Flowable;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
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
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapIterableFlowable.class */
public final class MaybeFlatMapIterableFlowable<T, R> extends Flowable<R> {

    /* renamed from: g */
    final MaybeSource<T> f17088g;

    /* renamed from: h */
    final Function<? super T, ? extends Iterable<? extends R>> f17089h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapIterableFlowable$FlatMapIterableObserver.class */
    static final class FlatMapIterableObserver<T, R> extends BasicIntQueueSubscription<R> implements MaybeObserver<T> {
        private static final long serialVersionUID = -8938804753851907758L;

        /* renamed from: f */
        final Subscriber<? super R> f17090f;

        /* renamed from: g */
        final Function<? super T, ? extends Iterable<? extends R>> f17091g;

        /* renamed from: h */
        final AtomicLong f17092h = new AtomicLong();

        /* renamed from: i */
        Disposable f17093i;

        /* renamed from: j */
        volatile Iterator<? extends R> f17094j;

        /* renamed from: k */
        volatile boolean f17095k;

        /* renamed from: l */
        boolean f17096l;

        FlatMapIterableObserver(Subscriber<? super R> subscriber, Function<? super T, ? extends Iterable<? extends R>> function) {
            this.f17090f = subscriber;
            this.f17091g = function;
        }

        /* renamed from: b */
        void m3995b() {
            if (getAndIncrement() == 0) {
                Subscriber<? super R> subscriber = this.f17090f;
                Iterator<? extends R> it = this.f17094j;
                if (!this.f17096l || it == null) {
                    int i = 1;
                    while (true) {
                        if (it != null) {
                            long j = this.f17092h.get();
                            if (j == Long.MAX_VALUE) {
                                m3994d(subscriber, it);
                                return;
                            }
                            long j2 = 0;
                            while (j2 != j) {
                                if (!this.f17095k) {
                                    try {
                                        Object obj = (Object) it.next();
                                        ObjectHelper.m4363e(obj, "The iterator returned a null value");
                                        subscriber.onNext(obj);
                                        if (!this.f17095k) {
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
                                BackpressureHelper.m3450e(this.f17092h, j2);
                            }
                        }
                        int addAndGet = addAndGet(-i);
                        if (addAndGet != 0) {
                            i = addAndGet;
                            if (it == null) {
                                it = this.f17094j;
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
            this.f17095k = true;
            this.f17093i.dispose();
            this.f17093i = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f17094j = null;
        }

        /* renamed from: d */
        void m3994d(Subscriber<? super R> subscriber, Iterator<? extends R> it) {
            while (!this.f17095k) {
                try {
                    subscriber.onNext((Object) it.next());
                    if (!this.f17095k) {
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
            return this.f17094j == null;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17090f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17093i = DisposableHelper.DISPOSED;
            this.f17090f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17093i, disposable)) {
                this.f17093i = disposable;
                this.f17090f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                Iterator<? extends R> it = ((Iterable) this.f17091g.apply(t)).iterator();
                if (!it.hasNext()) {
                    this.f17090f.onComplete();
                    return;
                }
                this.f17094j = it;
                m3995b();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17090f.onError(th);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f17094j;
            if (it == null) {
                return null;
            }
            R r = (R) it.next();
            ObjectHelper.m4363e(r, "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f17094j = null;
            }
            return r;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f17092h, j);
                m3995b();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.f17096l = true;
            return 2;
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f17088g.mo4485b(new FlatMapIterableObserver(subscriber, this.f17089h));
    }
}
