package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.functions.BiPredicate;
import io.reactivex.functions.Function;
import io.reactivex.internal.observers.BasicFuseableObserver;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDistinctUntilChanged.class */
public final class ObservableDistinctUntilChanged<T, K> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Function<? super T, K> f17831g;

    /* renamed from: h */
    final BiPredicate<? super K, ? super K> f17832h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver.class */
    static final class DistinctUntilChangedObserver<T, K> extends BasicFuseableObserver<T, T> {

        /* renamed from: k */
        final Function<? super T, K> f17833k;

        /* renamed from: l */
        final BiPredicate<? super K, ? super K> f17834l;

        /* renamed from: m */
        K f17835m;

        /* renamed from: n */
        boolean f17836n;

        DistinctUntilChangedObserver(Observer<? super T> observer, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
            super(observer);
            this.f17833k = function;
            this.f17834l = biPredicate;
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f15171i) {
                if (this.f15172j != 0) {
                    this.f15168f.onNext(t);
                    return;
                }
                try {
                    K apply = this.f17833k.apply(t);
                    if (this.f17836n) {
                        boolean a = this.f17834l.mo4360a((K) this.f17835m, apply);
                        this.f17835m = apply;
                        if (a) {
                            return;
                        }
                    } else {
                        this.f17836n = true;
                        this.f17835m = apply;
                    }
                    this.f15168f.onNext(t);
                } catch (Throwable th) {
                    m4357c(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            while (true) {
                T poll = this.f15170h.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f17833k.apply(poll);
                if (!this.f17836n) {
                    this.f17836n = true;
                    this.f17835m = apply;
                    return poll;
                } else if (!this.f17834l.mo4360a((K) this.f17835m, apply)) {
                    this.f17835m = apply;
                    return poll;
                } else {
                    this.f17835m = apply;
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m4356d(i);
        }
    }

    public ObservableDistinctUntilChanged(ObservableSource<T> observableSource, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
        super(observableSource);
        this.f17831g = function;
        this.f17832h = biPredicate;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new DistinctUntilChangedObserver(observer, this.f17831g, this.f17832h));
    }
}
