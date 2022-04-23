package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9655d;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable.class */
public final class ObservableFlatMapCompletableCompletable<T> extends AbstractC9637a implements AbstractC9655d<T> {

    /* renamed from: a */
    public final AbstractC9843q<T> f38500a;

    /* renamed from: b */
    public final AbstractC9645h<? super T, ? extends AbstractC9809c> f38501b;

    /* renamed from: c */
    public final boolean f38502c;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver.class */
    public static final class FlatMapCompletableMainObserver<T> extends AtomicInteger implements AbstractC9861b, AbstractC9844r<T> {
        public static final long serialVersionUID = 8443155186132538303L;
        public final AbstractC9647b actual;

        /* renamed from: d */
        public AbstractC9861b f38503d;
        public final boolean delayErrors;
        public volatile boolean disposed;
        public final AbstractC9645h<? super T, ? extends AbstractC9809c> mapper;
        public final AtomicThrowable errors = new AtomicThrowable();
        public final C9860a set = new C9860a();

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver$InnerObserver.class */
        public final class InnerObserver extends AtomicReference<AbstractC9861b> implements AbstractC9647b, AbstractC9861b {
            public static final long serialVersionUID = 8606673141535671828L;

            public InnerObserver() {
            }

            @Override // p530d.p541c.p568x.AbstractC9861b
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // p530d.p541c.p568x.AbstractC9861b
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // p530d.p541c.AbstractC9647b
            public void onComplete() {
                FlatMapCompletableMainObserver.this.innerComplete(this);
            }

            @Override // p530d.p541c.AbstractC9647b
            public void onError(Throwable th) {
                FlatMapCompletableMainObserver.this.innerError(this, th);
            }

            @Override // p530d.p541c.AbstractC9647b
            public void onSubscribe(AbstractC9861b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        public FlatMapCompletableMainObserver(AbstractC9647b bVar, AbstractC9645h<? super T, ? extends AbstractC9809c> hVar, boolean z) {
            this.actual = bVar;
            this.mapper = hVar;
            this.delayErrors = z;
            lazySet(1);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.disposed = true;
            this.f38503d.dispose();
            this.set.dispose();
        }

        public void innerComplete(FlatMapCompletableMainObserver<T>.InnerObserver innerObserver) {
            this.set.mo1827c(innerObserver);
            onComplete();
        }

        public void innerError(FlatMapCompletableMainObserver<T>.InnerObserver innerObserver, Throwable th) {
            this.set.mo1827c(innerObserver);
            onError(th);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f38503d.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable terminate = this.errors.terminate();
                if (terminate != null) {
                    this.actual.onError(terminate);
                } else {
                    this.actual.onComplete();
                }
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                C9815a.m1923b(th);
            } else if (!this.delayErrors) {
                dispose();
                if (getAndSet(0) > 0) {
                    this.actual.onError(this.errors.terminate());
                }
            } else if (decrementAndGet() == 0) {
                this.actual.onError(this.errors.terminate());
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(T t) {
            try {
                Object apply = this.mapper.apply(t);
                C9650a.m2095a(apply, "The mapper returned a null CompletableSource");
                AbstractC9809c cVar = (AbstractC9809c) apply;
                getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (!this.disposed && this.set.mo1828b(innerObserver)) {
                    cVar.mo1980a(innerObserver);
                }
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.f38503d.dispose();
                onError(th);
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f38503d, bVar)) {
                this.f38503d = bVar;
                this.actual.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMapCompletableCompletable(AbstractC9843q<T> qVar, AbstractC9645h<? super T, ? extends AbstractC9809c> hVar, boolean z) {
        this.f38500a = qVar;
        this.f38501b = hVar;
        this.f38502c = z;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9655d
    /* renamed from: a */
    public AbstractC9840o<T> mo238a() {
        return C9815a.m1934a(new ObservableFlatMapCompletable(this.f38500a, this.f38501b, this.f38502c));
    }

    @Override // p530d.p541c.AbstractC9637a
    /* renamed from: b */
    public void mo204b(AbstractC9647b bVar) {
        this.f38500a.subscribe(new FlatMapCompletableMainObserver(bVar, this.f38501b, this.f38502c));
    }
}
