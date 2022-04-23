package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnSubscribe.class */
public final class SingleDoOnSubscribe<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19054f;

    /* renamed from: g */
    final Consumer<? super Disposable> f19055g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnSubscribe$DoOnSubscribeSingleObserver.class */
    static final class DoOnSubscribeSingleObserver<T> implements SingleObserver<T> {

        /* renamed from: f */
        final SingleObserver<? super T> f19056f;

        /* renamed from: g */
        final Consumer<? super Disposable> f19057g;

        /* renamed from: h */
        boolean f19058h;

        DoOnSubscribeSingleObserver(SingleObserver<? super T> singleObserver, Consumer<? super Disposable> consumer) {
            this.f19056f = singleObserver;
            this.f19057g = consumer;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            if (this.f19058h) {
                RxJavaPlugins.m3354t(th);
            } else {
                this.f19056f.onError(th);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            try {
                this.f19057g.accept(disposable);
                this.f19056f.onSubscribe(disposable);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f19058h = true;
                disposable.dispose();
                EmptyDisposable.error(th, this.f19056f);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            if (!this.f19058h) {
                this.f19056f.onSuccess(t);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19054f.mo4457b(new DoOnSubscribeSingleObserver(singleObserver, this.f19055g));
    }
}
