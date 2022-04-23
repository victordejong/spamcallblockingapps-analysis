package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p548e.p551c.AbstractC9712a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSubscribeOn.class */
public final class MaybeSubscribeOn<T> extends AbstractC9712a<T, T> {

    /* renamed from: b */
    public final AbstractC9845s f38468b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeOnMaybeObserver.class */
    public static final class SubscribeOnMaybeObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9861b {
        public static final long serialVersionUID = 8571289934935992137L;
        public final AbstractC9836k<? super T> actual;
        public final SequentialDisposable task = new SequentialDisposable();

        public SubscribeOnMaybeObserver(AbstractC9836k<? super T> kVar) {
            this.actual = kVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            DisposableHelper.dispose(this);
            this.task.dispose();
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.actual.onComplete();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            this.actual.onSuccess(t);
        }
    }

    /* renamed from: io.reactivex.internal.operators.maybe.MaybeSubscribeOn$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeSubscribeOn$a.class */
    public static final class RunnableC10413a<T> implements Runnable {

        /* renamed from: a */
        public final AbstractC9836k<? super T> f38469a;

        /* renamed from: b */
        public final AbstractC9838m<T> f38470b;

        public RunnableC10413a(AbstractC9836k<? super T> kVar, AbstractC9838m<T> mVar) {
            this.f38469a = kVar;
            this.f38470b = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f38470b.mo1876a(this.f38469a);
        }
    }

    public MaybeSubscribeOn(AbstractC9838m<T> mVar, AbstractC9845s sVar) {
        super(mVar);
        this.f38468b = sVar;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        SubscribeOnMaybeObserver subscribeOnMaybeObserver = new SubscribeOnMaybeObserver(kVar);
        kVar.onSubscribe(subscribeOnMaybeObserver);
        subscribeOnMaybeObserver.task.replace(this.f38468b.mo1854a(new RunnableC10413a(subscribeOnMaybeObserver, this.f36803a)));
    }
}
