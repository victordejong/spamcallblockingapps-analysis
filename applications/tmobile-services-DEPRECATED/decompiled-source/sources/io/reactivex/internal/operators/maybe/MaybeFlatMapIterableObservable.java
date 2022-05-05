package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.BasicQueueDisposable;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable.class */
public final class MaybeFlatMapIterableObservable<T, R> extends Observable<R> {

    /* renamed from: f */
    final MaybeSource<T> f17097f;

    /* renamed from: g */
    final Function<? super T, ? extends Iterable<? extends R>> f17098g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver.class */
    static final class FlatMapIterableObserver<T, R> extends BasicQueueDisposable<R> implements MaybeObserver<T> {

        /* renamed from: f */
        final Observer<? super R> f17099f;

        /* renamed from: g */
        final Function<? super T, ? extends Iterable<? extends R>> f17100g;

        /* renamed from: h */
        Disposable f17101h;

        /* renamed from: i */
        volatile Iterator<? extends R> f17102i;

        /* renamed from: j */
        volatile boolean f17103j;

        /* renamed from: k */
        boolean f17104k;

        FlatMapIterableObserver(Observer<? super R> observer, Function<? super T, ? extends Iterable<? extends R>> function) {
            this.f17099f = observer;
            this.f17100g = function;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f17102i = null;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17103j = true;
            this.f17101h.dispose();
            this.f17101h = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17103j;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f17102i == null;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17099f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17101h = DisposableHelper.DISPOSED;
            this.f17099f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17101h, disposable)) {
                this.f17101h = disposable;
                this.f17099f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            Observer<? super R> observer = this.f17099f;
            try {
                Iterator<? extends R> it = ((Iterable) this.f17100g.apply(t)).iterator();
                if (!it.hasNext()) {
                    observer.onComplete();
                    return;
                }
                this.f17102i = it;
                if (this.f17104k) {
                    observer.onNext(null);
                    observer.onComplete();
                    return;
                }
                while (!this.f17103j) {
                    try {
                        observer.onNext((Object) it.next());
                        if (!this.f17103j) {
                            try {
                                if (!it.hasNext()) {
                                    observer.onComplete();
                                    return;
                                }
                            } catch (Throwable th) {
                                Exceptions.m4428b(th);
                                observer.onError(th);
                                return;
                            }
                        } else {
                            return;
                        }
                    } catch (Throwable th2) {
                        Exceptions.m4428b(th2);
                        observer.onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                Exceptions.m4428b(th3);
                observer.onError(th3);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f17102i;
            if (it == null) {
                return null;
            }
            R r = (R) it.next();
            ObjectHelper.m4363e(r, "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f17102i = null;
            }
            return r;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.f17104k = true;
            return 2;
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        this.f17097f.mo4485b(new FlatMapIterableObserver(observer, this.f17098g));
    }
}
