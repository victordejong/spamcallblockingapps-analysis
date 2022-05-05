package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBuffer.class */
public final class ObservableBuffer<T, U extends Collection<? super T>> extends AbstractObservableWithUpstream<T, U> {

    /* renamed from: g */
    final int f17559g;

    /* renamed from: h */
    final int f17560h;

    /* renamed from: i */
    final Callable<U> f17561i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver.class */
    static final class BufferExactObserver<T, U extends Collection<? super T>> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super U> f17562f;

        /* renamed from: g */
        final int f17563g;

        /* renamed from: h */
        final Callable<U> f17564h;

        /* renamed from: i */
        U f17565i;

        /* renamed from: j */
        int f17566j;

        /* renamed from: k */
        Disposable f17567k;

        BufferExactObserver(Observer<? super U> observer, int i, Callable<U> callable) {
            this.f17562f = observer;
            this.f17563g = i;
            this.f17564h = callable;
        }

        /* renamed from: a */
        boolean m3900a() {
            try {
                U call = this.f17564h.call();
                ObjectHelper.m4363e(call, "Empty buffer supplied");
                this.f17565i = call;
                return true;
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17565i = null;
                Disposable disposable = this.f17567k;
                if (disposable == null) {
                    EmptyDisposable.error(th, this.f17562f);
                    return false;
                }
                disposable.dispose();
                this.f17562f.onError(th);
                return false;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17567k.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17567k.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            U u = this.f17565i;
            if (u != null) {
                this.f17565i = null;
                if (!u.isEmpty()) {
                    this.f17562f.onNext(u);
                }
                this.f17562f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17565i = null;
            this.f17562f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            U u = this.f17565i;
            if (u != null) {
                u.add(t);
                int i = this.f17566j + 1;
                this.f17566j = i;
                if (i >= this.f17563g) {
                    this.f17562f.onNext(u);
                    this.f17566j = 0;
                    m3900a();
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17567k, disposable)) {
                this.f17567k = disposable;
                this.f17562f.onSubscribe(this);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBuffer$BufferSkipObserver.class */
    static final class BufferSkipObserver<T, U extends Collection<? super T>> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = -8223395059921494546L;

        /* renamed from: f */
        final Observer<? super U> f17568f;

        /* renamed from: g */
        final int f17569g;

        /* renamed from: h */
        final int f17570h;

        /* renamed from: i */
        final Callable<U> f17571i;

        /* renamed from: j */
        Disposable f17572j;

        /* renamed from: k */
        final ArrayDeque<U> f17573k = new ArrayDeque<>();

        /* renamed from: l */
        long f17574l;

        BufferSkipObserver(Observer<? super U> observer, int i, int i2, Callable<U> callable) {
            this.f17568f = observer;
            this.f17569g = i;
            this.f17570h = i2;
            this.f17571i = callable;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17572j.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17572j.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            while (!this.f17573k.isEmpty()) {
                this.f17568f.onNext(this.f17573k.poll());
            }
            this.f17568f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17573k.clear();
            this.f17568f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long j = this.f17574l;
            this.f17574l = 1 + j;
            if (j % this.f17570h == 0) {
                try {
                    U call = this.f17571i.call();
                    ObjectHelper.m4363e(call, "The bufferSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
                    this.f17573k.offer(call);
                } catch (Throwable th) {
                    this.f17573k.clear();
                    this.f17572j.dispose();
                    this.f17568f.onError(th);
                    return;
                }
            }
            Iterator<U> it = this.f17573k.iterator();
            while (it.hasNext()) {
                U next = it.next();
                next.add(t);
                if (this.f17569g <= next.size()) {
                    it.remove();
                    this.f17568f.onNext(next);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17572j, disposable)) {
                this.f17572j = disposable;
                this.f17568f.onSubscribe(this);
            }
        }
    }

    public ObservableBuffer(ObservableSource<T> observableSource, int i, int i2, Callable<U> callable) {
        super(observableSource);
        this.f17559g = i;
        this.f17560h = i2;
        this.f17561i = callable;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super U> observer) {
        int i = this.f17560h;
        int i2 = this.f17559g;
        if (i == i2) {
            BufferExactObserver bufferExactObserver = new BufferExactObserver(observer, i2, this.f17561i);
            if (bufferExactObserver.m3900a()) {
                this.f17497f.subscribe(bufferExactObserver);
                return;
            }
            return;
        }
        this.f17497f.subscribe(new BufferSkipObserver(observer, this.f17559g, this.f17560h, this.f17561i));
    }
}
