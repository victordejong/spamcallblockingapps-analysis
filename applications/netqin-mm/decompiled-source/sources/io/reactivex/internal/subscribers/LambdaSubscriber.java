package io.reactivex.internal.subscribers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/LambdaSubscriber.class */
public final class LambdaSubscriber<T> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<T>, AbstractC10434d, AbstractC9861b {
    public static final long serialVersionUID = -7251123623727029452L;
    public final AbstractC9638a onComplete;
    public final AbstractC9644g<? super Throwable> onError;
    public final AbstractC9644g<? super T> onNext;
    public final AbstractC9644g<? super AbstractC10434d> onSubscribe;

    public LambdaSubscriber(AbstractC9644g<? super T> gVar, AbstractC9644g<? super Throwable> gVar2, AbstractC9638a aVar, AbstractC9644g<? super AbstractC10434d> gVar3) {
        this.onNext = gVar;
        this.onError = gVar2;
        this.onComplete = aVar;
        this.onSubscribe = gVar3;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        cancel();
    }

    public boolean hasCustomOnError() {
        return this.onError != Functions.f38323e;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        AbstractC10434d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.onComplete.run();
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        AbstractC10434d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.onError.accept(th);
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                C9815a.m1923b(new CompositeException(th, th2));
            }
        } else {
            C9815a.m1923b(th);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!isDisposed()) {
            try {
                this.onNext.accept(t);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                get().cancel();
                onError(th);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            try {
                this.onSubscribe.accept(this);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                dVar.cancel();
                onError(th);
            }
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        get().request(j);
    }
}
