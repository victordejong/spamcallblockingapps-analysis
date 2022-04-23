package io.reactivex.subjects;

import io.reactivex.internal.observers.DeferredScalarDisposable;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p563h0.AbstractC9832b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/AsyncSubject.class */
public final class AsyncSubject<T> extends AbstractC9832b<T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/AsyncSubject$AsyncDisposable.class */
    public static final class AsyncDisposable<T> extends DeferredScalarDisposable<T> {
        public static final long serialVersionUID = 5629876084736248016L;
        public final AsyncSubject<T> parent;

        public AsyncDisposable(AbstractC9844r<? super T> rVar, AsyncSubject<T> asyncSubject) {
            super(rVar);
            this.parent = asyncSubject;
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            if (super.tryDispose()) {
                this.parent.m206a((AsyncDisposable) this);
                throw null;
            }
        }

        public void onComplete() {
            if (!isDisposed()) {
                this.actual.onComplete();
            }
        }

        public void onError(Throwable th) {
            if (isDisposed()) {
                C9815a.m1923b(th);
            } else {
                this.actual.onError(th);
            }
        }
    }

    /* renamed from: a */
    public void m206a(AsyncDisposable<T> asyncDisposable) {
        throw null;
    }
}
