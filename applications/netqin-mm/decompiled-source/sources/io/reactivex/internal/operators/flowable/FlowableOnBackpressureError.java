package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9677a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureError.class */
public final class FlowableOnBackpressureError<T> extends AbstractC9677a<T, T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber.class */
    public static final class BackpressureErrorSubscriber<T> extends AtomicLong implements AbstractC9829h<T>, AbstractC10434d {
        public static final long serialVersionUID = -3176480756392482682L;
        public final AbstractC10433c<? super T> actual;
        public boolean done;

        /* renamed from: s */
        public AbstractC10434d f38402s;

        public BackpressureErrorSubscriber(AbstractC10433c<? super T> cVar) {
            this.actual = cVar;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            this.f38402s.cancel();
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                this.actual.onComplete();
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
        public void onNext(T t) {
            if (!this.done) {
                if (get() != 0) {
                    this.actual.onNext(t);
                    C9800b.m2009c(this, 1L);
                    return;
                }
                onError(new MissingBackpressureException("could not emit value due to lack of requests"));
            }
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.f38402s, dVar)) {
                this.f38402s = dVar;
                this.actual.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                C9800b.m2012a(this, j);
            }
        }
    }

    public FlowableOnBackpressureError(AbstractC9814e<T> eVar) {
        super(eVar);
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        this.f36754b.m1965a((AbstractC9829h) new BackpressureErrorSubscriber(cVar));
    }
}
