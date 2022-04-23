package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p543b0.p547d.C9665d;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelayWithPublisher$OtherSubscriber.class */
public final class SingleDelayWithPublisher$OtherSubscriber<T, U> extends AtomicReference<AbstractC9861b> implements AbstractC9829h<U>, AbstractC9861b {
    public static final long serialVersionUID = -8565274649390031272L;
    public final AbstractC9851u<? super T> actual;
    public boolean done;

    /* renamed from: s */
    public AbstractC10434d f38544s;
    public final AbstractC9852v<T> source;

    public SingleDelayWithPublisher$OtherSubscriber(AbstractC9851u<? super T> uVar, AbstractC9852v<T> vVar) {
        this.actual = uVar;
        this.source = vVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38544s.cancel();
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            this.source.mo1841a(new C9665d(this, this.actual));
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.done = true;
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(U u) {
        this.f38544s.cancel();
        onComplete();
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38544s, dVar)) {
            this.f38544s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }
}
