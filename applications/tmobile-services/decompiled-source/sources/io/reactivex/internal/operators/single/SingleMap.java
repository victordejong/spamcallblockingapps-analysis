package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleMap.class */
public final class SingleMap<T, R> extends Single<R> {

    /* renamed from: f */
    final SingleSource<? extends T> f19130f;

    /* renamed from: g */
    final Function<? super T, ? extends R> f19131g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleMap$MapSingleObserver.class */
    static final class MapSingleObserver<T, R> implements SingleObserver<T> {

        /* renamed from: f */
        final SingleObserver<? super R> f19132f;

        /* renamed from: g */
        final Function<? super T, ? extends R> f19133g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public MapSingleObserver(SingleObserver<? super R> singleObserver, Function<? super T, ? extends R> function) {
            this.f19132f = singleObserver;
            this.f19133g = function;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19132f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f19132f.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                Object apply = this.f19133g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper function returned a null value.");
                this.f19132f.onSuccess(apply);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                onError(th);
            }
        }
    }

    public SingleMap(SingleSource<? extends T> singleSource, Function<? super T, ? extends R> function) {
        this.f19130f = singleSource;
        this.f19131g = function;
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super R> singleObserver) {
        this.f19130f.mo4457b(new MapSingleObserver(singleObserver, this.f19131g));
    }
}
