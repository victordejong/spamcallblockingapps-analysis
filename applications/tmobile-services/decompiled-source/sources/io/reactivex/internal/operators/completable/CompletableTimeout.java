package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Scheduler;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTimeout.class */
public final class CompletableTimeout extends Completable {

    /* renamed from: f */
    final CompletableSource f15377f;

    /* renamed from: g */
    final long f15378g;

    /* renamed from: h */
    final TimeUnit f15379h;

    /* renamed from: i */
    final Scheduler f15380i;

    /* renamed from: j */
    final CompletableSource f15381j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask.class */
    final class DisposeTask implements Runnable {

        /* renamed from: f */
        private final AtomicBoolean f15382f;

        /* renamed from: g */
        final CompositeDisposable f15383g;

        /* renamed from: h */
        final CompletableObserver f15384h;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask$DisposeObserver.class */
        final class DisposeObserver implements CompletableObserver {
            DisposeObserver() {
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                DisposeTask.this.f15383g.dispose();
                DisposeTask.this.f15384h.onComplete();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                DisposeTask.this.f15383g.dispose();
                DisposeTask.this.f15384h.onError(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposeTask.this.f15383g.mo4425b(disposable);
            }
        }

        DisposeTask(AtomicBoolean atomicBoolean, CompositeDisposable compositeDisposable, CompletableObserver completableObserver) {
            this.f15382f = atomicBoolean;
            this.f15383g = compositeDisposable;
            this.f15384h = completableObserver;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f15382f.compareAndSet(false, true)) {
                this.f15383g.m4444e();
                CompletableSource completableSource = CompletableTimeout.this.f15381j;
                if (completableSource == null) {
                    CompletableObserver completableObserver = this.f15384h;
                    CompletableTimeout completableTimeout = CompletableTimeout.this;
                    completableObserver.onError(new TimeoutException(ExceptionHelper.m3435d(completableTimeout.f15378g, completableTimeout.f15379h)));
                    return;
                }
                completableSource.mo4514b(new DisposeObserver());
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver.class */
    static final class TimeOutObserver implements CompletableObserver {

        /* renamed from: f */
        private final CompositeDisposable f15387f;

        /* renamed from: g */
        private final AtomicBoolean f15388g;

        /* renamed from: h */
        private final CompletableObserver f15389h;

        TimeOutObserver(CompositeDisposable compositeDisposable, AtomicBoolean atomicBoolean, CompletableObserver completableObserver) {
            this.f15387f = compositeDisposable;
            this.f15388g = atomicBoolean;
            this.f15389h = completableObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.f15388g.compareAndSet(false, true)) {
                this.f15387f.dispose();
                this.f15389h.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.f15388g.compareAndSet(false, true)) {
                this.f15387f.dispose();
                this.f15389h.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f15387f.mo4425b(disposable);
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    public void mo3214d(CompletableObserver completableObserver) {
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        completableObserver.onSubscribe(compositeDisposable);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        compositeDisposable.mo4425b(this.f15380i.mo3498e(new DisposeTask(atomicBoolean, compositeDisposable, completableObserver), this.f15378g, this.f15379h));
        this.f15377f.mo4514b(new TimeOutObserver(compositeDisposable, atomicBoolean, completableObserver));
    }
}
