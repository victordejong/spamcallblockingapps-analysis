package io.reactivex.internal.operators.completable;

import io.reactivex.CompletableSource;
import io.reactivex.Flowable;
import io.reactivex.internal.observers.SubscriberCompletableObserver;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableToFlowable.class */
public final class CompletableToFlowable<T> extends Flowable<T> {

    /* renamed from: g */
    final CompletableSource f15394g;

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15394g.mo4514b(new SubscriberCompletableObserver(subscriber));
    }
}
