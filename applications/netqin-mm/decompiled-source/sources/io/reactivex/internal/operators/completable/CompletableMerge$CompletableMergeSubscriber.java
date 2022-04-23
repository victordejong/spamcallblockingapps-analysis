package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber.class */
public final class CompletableMerge$CompletableMergeSubscriber extends AtomicInteger implements AbstractC9829h<AbstractC9809c>, AbstractC9861b {
    public static final long serialVersionUID = -2108443387387077490L;
    public final AbstractC9647b actual;
    public final boolean delayErrors;
    public final int maxConcurrency;

    /* renamed from: s */
    public AbstractC10434d f38335s;
    public final C9860a set = new C9860a();
    public final AtomicThrowable error = new AtomicThrowable();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber$MergeInnerObserver.class */
    public final class MergeInnerObserver extends AtomicReference<AbstractC9861b> implements AbstractC9647b, AbstractC9861b {
        public static final long serialVersionUID = 251330541679988317L;

        public MergeInnerObserver() {
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
            CompletableMerge$CompletableMergeSubscriber.this.innerComplete(this);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            CompletableMerge$CompletableMergeSubscriber.this.innerError(this, th);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public CompletableMerge$CompletableMergeSubscriber(AbstractC9647b bVar, int i, boolean z) {
        this.actual = bVar;
        this.maxConcurrency = i;
        this.delayErrors = z;
        lazySet(1);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38335s.cancel();
        this.set.dispose();
    }

    public void innerComplete(MergeInnerObserver mergeInnerObserver) {
        this.set.mo1827c(mergeInnerObserver);
        if (decrementAndGet() == 0) {
            Throwable th = this.error.get();
            if (th != null) {
                this.actual.onError(th);
            } else {
                this.actual.onComplete();
            }
        } else if (this.maxConcurrency != Integer.MAX_VALUE) {
            this.f38335s.request(1L);
        }
    }

    public void innerError(MergeInnerObserver mergeInnerObserver, Throwable th) {
        this.set.mo1827c(mergeInnerObserver);
        if (!this.delayErrors) {
            this.f38335s.cancel();
            this.set.dispose();
            if (!this.error.addThrowable(th)) {
                C9815a.m1923b(th);
            } else if (getAndSet(0) > 0) {
                this.actual.onError(this.error.terminate());
            }
        } else if (!this.error.addThrowable(th)) {
            C9815a.m1923b(th);
        } else if (decrementAndGet() == 0) {
            this.actual.onError(this.error.terminate());
        } else if (this.maxConcurrency != Integer.MAX_VALUE) {
            this.f38335s.request(1L);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.set.isDisposed();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (decrementAndGet() != 0) {
            return;
        }
        if (this.error.get() != null) {
            this.actual.onError(this.error.terminate());
        } else {
            this.actual.onComplete();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (!this.delayErrors) {
            this.set.dispose();
            if (!this.error.addThrowable(th)) {
                C9815a.m1923b(th);
            } else if (getAndSet(0) > 0) {
                this.actual.onError(this.error.terminate());
            }
        } else if (!this.error.addThrowable(th)) {
            C9815a.m1923b(th);
        } else if (decrementAndGet() == 0) {
            this.actual.onError(this.error.terminate());
        }
    }

    public void onNext(AbstractC9809c cVar) {
        getAndIncrement();
        MergeInnerObserver mergeInnerObserver = new MergeInnerObserver();
        this.set.mo1828b(mergeInnerObserver);
        cVar.mo1980a(mergeInnerObserver);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38335s, dVar)) {
            this.f38335s = dVar;
            this.actual.onSubscribe(this);
            int i = this.maxConcurrency;
            if (i == Integer.MAX_VALUE) {
                dVar.request(Long.MAX_VALUE);
            } else {
                dVar.request(i);
            }
        }
    }
}
