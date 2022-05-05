package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.observers.BasicFuseableObserver;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFilter.class */
public final class ObservableFilter<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Predicate<? super T> f17886g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFilter$FilterObserver.class */
    static final class FilterObserver<T> extends BasicFuseableObserver<T, T> {

        /* renamed from: k */
        final Predicate<? super T> f17887k;

        FilterObserver(Observer<? super T> observer, Predicate<? super T> predicate) {
            super(observer);
            this.f17887k = predicate;
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f15172j == 0) {
                try {
                    if (this.f17887k.mo3191a(t)) {
                        this.f15168f.onNext(t);
                    }
                } catch (Throwable th) {
                    m4357c(th);
                }
            } else {
                this.f15168f.onNext(null);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            T poll;
            do {
                poll = this.f15170h.poll();
                if (poll == null) {
                    break;
                }
            } while (!this.f17887k.mo3191a(poll));
            return poll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m4356d(i);
        }
    }

    public ObservableFilter(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f17886g = predicate;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new FilterObserver(observer, this.f17886g));
    }
}
