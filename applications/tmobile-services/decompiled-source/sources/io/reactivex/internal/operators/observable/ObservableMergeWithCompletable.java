package io.reactivex.internal.operators.observable;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.HalfSerializer;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithCompletable.class */
public final class ObservableMergeWithCompletable<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final CompletableSource f18137g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver.class */
    static final class MergeWithObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: f */
        final Observer<? super T> f18138f;

        /* renamed from: g */
        final AtomicReference<Disposable> f18139g = new AtomicReference<>();

        /* renamed from: h */
        final OtherObserver f18140h = new OtherObserver(this);

        /* renamed from: i */
        final AtomicThrowable f18141i = new AtomicThrowable();

        /* renamed from: j */
        volatile boolean f18142j;

        /* renamed from: k */
        volatile boolean f18143k;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver$OtherObserver.class */
        static final class OtherObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: f */
            final MergeWithObserver<?> f18144f;

            OtherObserver(MergeWithObserver<?> mergeWithObserver) {
                this.f18144f = mergeWithObserver;
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.f18144f.m3771a();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.f18144f.m3770b(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        MergeWithObserver(Observer<? super T> observer) {
            this.f18138f = observer;
        }

        /* renamed from: a */
        void m3771a() {
            this.f18143k = true;
            if (this.f18142j) {
                HalfSerializer.m3433a(this.f18138f, this, this.f18141i);
            }
        }

        /* renamed from: b */
        void m3770b(Throwable th) {
            DisposableHelper.dispose(this.f18139g);
            HalfSerializer.m3431c(this.f18138f, th, this, this.f18141i);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f18139g);
            DisposableHelper.dispose(this.f18140h);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f18139g.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18142j = true;
            if (this.f18143k) {
                HalfSerializer.m3433a(this.f18138f, this, this.f18141i);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f18140h);
            HalfSerializer.m3431c(this.f18138f, th, this, this.f18141i);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            HalfSerializer.m3429e(this.f18138f, t, this, this.f18141i);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18139g, disposable);
        }
    }

    public ObservableMergeWithCompletable(Observable<T> observable, CompletableSource completableSource) {
        super(observable);
        this.f18137g = completableSource;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(observer);
        observer.onSubscribe(mergeWithObserver);
        this.f17497f.subscribe(mergeWithObserver);
        this.f18137g.mo4514b(mergeWithObserver.f18140h);
    }
}
