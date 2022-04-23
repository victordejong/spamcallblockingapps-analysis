package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.observers.BasicFuseableObserver;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDoAfterNext.class */
public final class ObservableDoAfterNext<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Consumer<? super T> f17837g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDoAfterNext$DoAfterObserver.class */
    static final class DoAfterObserver<T> extends BasicFuseableObserver<T, T> {

        /* renamed from: k */
        final Consumer<? super T> f17838k;

        DoAfterObserver(Observer<? super T> observer, Consumer<? super T> consumer) {
            super(observer);
            this.f17838k = consumer;
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f15168f.onNext(t);
            if (this.f15172j == 0) {
                try {
                    this.f17838k.accept(t);
                } catch (Throwable th) {
                    m4357c(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            T poll = this.f15170h.poll();
            if (poll != null) {
                this.f17838k.accept(poll);
            }
            return poll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m4356d(i);
        }
    }

    public ObservableDoAfterNext(ObservableSource<T> observableSource, Consumer<? super T> consumer) {
        super(observableSource);
        this.f17837g = consumer;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new DoAfterObserver(observer, this.f17837g));
    }
}
