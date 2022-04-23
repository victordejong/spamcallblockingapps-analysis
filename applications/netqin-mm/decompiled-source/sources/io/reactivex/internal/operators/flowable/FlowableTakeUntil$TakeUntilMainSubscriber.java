package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p557i.C9804f;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber.class */
public final class FlowableTakeUntil$TakeUntilMainSubscriber<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = -4945480365982832967L;
    public final AbstractC10433c<? super T> actual;
    public final AtomicLong requested = new AtomicLong();

    /* renamed from: s */
    public final AtomicReference<AbstractC10434d> f38434s = new AtomicReference<>();
    public final FlowableTakeUntil$TakeUntilMainSubscriber<T>.OtherSubscriber other = new OtherSubscriber();
    public final AtomicThrowable error = new AtomicThrowable();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeUntil$TakeUntilMainSubscriber$OtherSubscriber.class */
    public final class OtherSubscriber extends AtomicReference<AbstractC10434d> implements AbstractC9829h<Object> {
        public static final long serialVersionUID = -3592821756711087922L;

        public OtherSubscriber() {
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            SubscriptionHelper.cancel(FlowableTakeUntil$TakeUntilMainSubscriber.this.f38434s);
            FlowableTakeUntil$TakeUntilMainSubscriber flowableTakeUntil$TakeUntilMainSubscriber = FlowableTakeUntil$TakeUntilMainSubscriber.this;
            C9804f.m1996a(flowableTakeUntil$TakeUntilMainSubscriber.actual, flowableTakeUntil$TakeUntilMainSubscriber, flowableTakeUntil$TakeUntilMainSubscriber.error);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(FlowableTakeUntil$TakeUntilMainSubscriber.this.f38434s);
            FlowableTakeUntil$TakeUntilMainSubscriber flowableTakeUntil$TakeUntilMainSubscriber = FlowableTakeUntil$TakeUntilMainSubscriber.this;
            C9804f.m1997a((AbstractC10433c<?>) flowableTakeUntil$TakeUntilMainSubscriber.actual, th, (AtomicInteger) flowableTakeUntil$TakeUntilMainSubscriber, flowableTakeUntil$TakeUntilMainSubscriber.error);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(Object obj) {
            SubscriptionHelper.cancel(this);
            onComplete();
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    public FlowableTakeUntil$TakeUntilMainSubscriber(AbstractC10433c<? super T> cVar) {
        this.actual = cVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this.f38434s);
        SubscriptionHelper.cancel(this.other);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        SubscriptionHelper.cancel(this.other);
        C9804f.m1996a(this.actual, this, this.error);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        SubscriptionHelper.cancel(this.other);
        C9804f.m1997a((AbstractC10433c<?>) this.actual, th, (AtomicInteger) this, this.error);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        C9804f.m1998a(this.actual, t, this, this.error);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.deferredSetOnce(this.f38434s, this.requested, dVar);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        SubscriptionHelper.deferredRequest(this.f38434s, this.requested, j);
    }
}
