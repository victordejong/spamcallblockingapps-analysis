package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleEquals.class */
public final class SingleEquals<T> extends Single<Boolean> {
    final SingleSource<? extends T> first;
    final SingleSource<? extends T> second;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleEquals$InnerObserver.class */
    static class InnerObserver<T> implements SingleObserver<T> {
        final AtomicInteger count;
        final int index;

        /* renamed from: s */
        final SingleObserver<? super Boolean> f685s;
        final CompositeDisposable set;
        final Object[] values;

        InnerObserver(int i, CompositeDisposable compositeDisposable, Object[] objArr, SingleObserver<? super Boolean> singleObserver, AtomicInteger atomicInteger) {
            this.index = i;
            this.set = compositeDisposable;
            this.values = objArr;
            this.f685s = singleObserver;
            this.count = atomicInteger;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            int i;
            do {
                i = this.count.get();
                if (i >= 2) {
                    RxJavaPlugins.onError(th);
                    return;
                }
            } while (!this.count.compareAndSet(i, 2));
            this.set.dispose();
            this.f685s.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.set.add(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.values[this.index] = t;
            if (this.count.incrementAndGet() == 2) {
                this.f685s.onSuccess(Boolean.valueOf(ObjectHelper.equals(this.values[0], this.values[1])));
            }
        }
    }

    public SingleEquals(SingleSource<? extends T> singleSource, SingleSource<? extends T> singleSource2) {
        this.first = singleSource;
        this.second = singleSource2;
    }

    @Override // io.reactivex.Single
    protected void subscribeActual(SingleObserver<? super Boolean> singleObserver) {
        AtomicInteger atomicInteger = new AtomicInteger();
        Object[] objArr = {null, null};
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        singleObserver.onSubscribe(compositeDisposable);
        this.first.subscribe(new InnerObserver(0, compositeDisposable, objArr, singleObserver, atomicInteger));
        this.second.subscribe(new InnerObserver(1, compositeDisposable, objArr, singleObserver, atomicInteger));
    }
}
