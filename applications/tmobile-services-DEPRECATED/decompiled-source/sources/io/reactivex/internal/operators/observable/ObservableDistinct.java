package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.BasicFuseableObserver;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Collection;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDistinct.class */
public final class ObservableDistinct<T, K> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Function<? super T, K> f17827g;

    /* renamed from: h */
    final Callable<? extends Collection<? super K>> f17828h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDistinct$DistinctObserver.class */
    static final class DistinctObserver<T, K> extends BasicFuseableObserver<T, T> {

        /* renamed from: k */
        final Collection<? super K> f17829k;

        /* renamed from: l */
        final Function<? super T, K> f17830l;

        DistinctObserver(Observer<? super T> observer, Function<? super T, K> function, Collection<? super K> collection) {
            super(observer);
            this.f17830l = function;
            this.f17829k = collection;
        }

        @Override // io.reactivex.internal.observers.BasicFuseableObserver, io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f17829k.clear();
            super.clear();
        }

        @Override // io.reactivex.internal.observers.BasicFuseableObserver, io.reactivex.Observer
        public void onComplete() {
            if (!this.f15171i) {
                this.f15171i = true;
                this.f17829k.clear();
                this.f15168f.onComplete();
            }
        }

        @Override // io.reactivex.internal.observers.BasicFuseableObserver, io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f15171i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15171i = true;
            this.f17829k.clear();
            this.f15168f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f15171i) {
                if (this.f15172j == 0) {
                    try {
                        K apply = this.f17830l.apply(t);
                        ObjectHelper.m4363e(apply, "The keySelector returned a null key");
                        if (this.f17829k.add(apply)) {
                            this.f15168f.onNext(t);
                        }
                    } catch (Throwable th) {
                        m4357c(th);
                    }
                } else {
                    this.f15168f.onNext(null);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            T poll;
            Collection<? super K> collection;
            Object obj;
            do {
                poll = this.f15170h.poll();
                if (poll == null) {
                    break;
                }
                collection = this.f17829k;
                obj = (K) this.f17830l.apply(poll);
                ObjectHelper.m4363e(obj, "The keySelector returned a null key");
            } while (!collection.add(obj));
            return poll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m4356d(i);
        }
    }

    public ObservableDistinct(ObservableSource<T> observableSource, Function<? super T, K> function, Callable<? extends Collection<? super K>> callable) {
        super(observableSource);
        this.f17827g = function;
        this.f17828h = callable;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        try {
            Object call = this.f17828h.call();
            ObjectHelper.m4363e(call, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
            this.f17497f.subscribe(new DistinctObserver(observer, this.f17827g, (Collection) call));
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
