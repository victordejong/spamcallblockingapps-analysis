package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.BasicFuseableObserver;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMap.class */
public final class ObservableMap<T, U> extends AbstractObservableWithUpstream<T, U> {

    /* renamed from: g */
    final Function<? super T, ? extends U> f18125g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMap$MapObserver.class */
    static final class MapObserver<T, U> extends BasicFuseableObserver<T, U> {

        /* renamed from: k */
        final Function<? super T, ? extends U> f18126k;

        MapObserver(Observer<? super U> observer, Function<? super T, ? extends U> function) {
            super(observer);
            this.f18126k = function;
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f15171i) {
                if (this.f15172j != 0) {
                    this.f15168f.onNext(null);
                    return;
                }
                try {
                    Object apply = this.f18126k.apply(t);
                    ObjectHelper.m4363e(apply, "The mapper function returned a null value.");
                    this.f15168f.onNext(apply);
                } catch (Throwable th) {
                    m4357c(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public U poll() throws Exception {
            U u;
            T poll = this.f15170h.poll();
            if (poll != null) {
                u = (U) this.f18126k.apply(poll);
                ObjectHelper.m4363e(u, "The mapper function returned a null value.");
            } else {
                u = null;
            }
            return u;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m4356d(i);
        }
    }

    public ObservableMap(ObservableSource<T> observableSource, Function<? super T, ? extends U> function) {
        super(observableSource);
        this.f18125g = function;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super U> observer) {
        this.f17497f.subscribe(new MapObserver(observer, this.f18125g));
    }
}
