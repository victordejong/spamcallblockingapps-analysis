package io.reactivex.internal.operators.single;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMapIterableObservable.class */
public final class SingleFlatMapIterableObservable<T, R> extends Observable<R> {

    /* renamed from: f */
    final SingleSource<T> f19094f;

    /* renamed from: g */
    final Function<? super T, ? extends Iterable<? extends R>> f19095g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMapIterableObservable$FlatMapIterableObserver.class */
    static final class FlatMapIterableObserver<T, R> extends BasicIntQueueDisposable<R> implements SingleObserver<T> {
        private static final long serialVersionUID = -8938804753851907758L;

        /* renamed from: f */
        final Observer<? super R> f19096f;

        /* renamed from: g */
        final Function<? super T, ? extends Iterable<? extends R>> f19097g;

        /* renamed from: h */
        Disposable f19098h;

        /* renamed from: i */
        volatile Iterator<? extends R> f19099i;

        /* renamed from: j */
        volatile boolean f19100j;

        /* renamed from: k */
        boolean f19101k;

        FlatMapIterableObserver(Observer<? super R> observer, Function<? super T, ? extends Iterable<? extends R>> function) {
            this.f19096f = observer;
            this.f19097g = function;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f19099i = null;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f19100j = true;
            this.f19098h.dispose();
            this.f19098h = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19100j;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f19099i == null;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19098h = DisposableHelper.DISPOSED;
            this.f19096f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f19098h, disposable)) {
                this.f19098h = disposable;
                this.f19096f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            Observer<? super R> observer = this.f19096f;
            try {
                Iterator<? extends R> it = ((Iterable) this.f19097g.apply(t)).iterator();
                if (!it.hasNext()) {
                    observer.onComplete();
                } else if (this.f19101k) {
                    this.f19099i = it;
                    observer.onNext(null);
                    observer.onComplete();
                } else {
                    while (!this.f19100j) {
                        try {
                            observer.onNext((Object) it.next());
                            if (!this.f19100j) {
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
                }
            } catch (Throwable th3) {
                Exceptions.m4428b(th3);
                this.f19096f.onError(th3);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f19099i;
            if (it == null) {
                return null;
            }
            R r = (R) it.next();
            ObjectHelper.m4363e(r, "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f19099i = null;
            }
            return r;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.f19101k = true;
            return 2;
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        this.f19094f.mo4457b(new FlatMapIterableObserver(observer, this.f19095g));
    }
}
