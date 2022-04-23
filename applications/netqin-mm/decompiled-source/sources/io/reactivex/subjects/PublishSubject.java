package io.reactivex.subjects;

import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p563h0.AbstractC9832b;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/PublishSubject.class */
public final class PublishSubject<T> extends AbstractC9832b<T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/PublishSubject$PublishDisposable.class */
    public static final class PublishDisposable<T> extends AtomicBoolean implements AbstractC9861b {
        public static final long serialVersionUID = 3562861878281475070L;
        public final AbstractC9844r<? super T> actual;
        public final PublishSubject<T> parent;

        public PublishDisposable(AbstractC9844r<? super T> rVar, PublishSubject<T> publishSubject) {
            this.actual = rVar;
            this.parent = publishSubject;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.parent.m199a((PublishDisposable) this);
                throw null;
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get();
        }

        public void onComplete() {
            if (!get()) {
                this.actual.onComplete();
            }
        }

        public void onError(Throwable th) {
            if (get()) {
                C9815a.m1923b(th);
            } else {
                this.actual.onError(th);
            }
        }

        public void onNext(T t) {
            if (!get()) {
                this.actual.onNext(t);
            }
        }
    }

    /* renamed from: a */
    public void m199a(PublishDisposable<T> publishDisposable) {
        throw null;
    }
}
