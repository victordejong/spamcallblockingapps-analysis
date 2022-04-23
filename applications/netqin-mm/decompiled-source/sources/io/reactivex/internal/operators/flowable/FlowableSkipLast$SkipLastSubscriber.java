package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber.class */
public final class FlowableSkipLast$SkipLastSubscriber<T> extends ArrayDeque<T> implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = -3807491841935125653L;
    public final AbstractC10433c<? super T> actual;

    /* renamed from: s */
    public AbstractC10434d f38424s;
    public final int skip;

    public FlowableSkipLast$SkipLastSubscriber(AbstractC10433c<? super T> cVar, int i) {
        super(i);
        this.actual = cVar;
        this.skip = i;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.f38424s.cancel();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.actual.onComplete();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (this.skip == size()) {
            this.actual.onNext((T) poll());
        } else {
            this.f38424s.request(1L);
        }
        offer(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38424s, dVar)) {
            this.f38424s = dVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        this.f38424s.request(j);
    }
}
