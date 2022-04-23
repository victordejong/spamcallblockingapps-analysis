package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p546c.AbstractC9652a;
import p530d.p541c.p543b0.p557i.C9804f;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber.class */
public final class FlowableSkipUntil$SkipUntilMainSubscriber<T> extends AtomicInteger implements AbstractC9652a<T>, AbstractC10434d {
    public static final long serialVersionUID = -6270983465606289181L;
    public final AbstractC10433c<? super T> actual;
    public volatile boolean gate;

    /* renamed from: s */
    public final AtomicReference<AbstractC10434d> f38426s = new AtomicReference<>();
    public final AtomicLong requested = new AtomicLong();
    public final FlowableSkipUntil$SkipUntilMainSubscriber<T>.OtherSubscriber other = new OtherSubscriber();
    public final AtomicThrowable error = new AtomicThrowable();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber$OtherSubscriber.class */
    public final class OtherSubscriber extends AtomicReference<AbstractC10434d> implements AbstractC9829h<Object> {
        public static final long serialVersionUID = -5592042965931999169L;

        public OtherSubscriber() {
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            FlowableSkipUntil$SkipUntilMainSubscriber.this.gate = true;
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(FlowableSkipUntil$SkipUntilMainSubscriber.this.f38426s);
            FlowableSkipUntil$SkipUntilMainSubscriber flowableSkipUntil$SkipUntilMainSubscriber = FlowableSkipUntil$SkipUntilMainSubscriber.this;
            C9804f.m1997a((AbstractC10433c<?>) flowableSkipUntil$SkipUntilMainSubscriber.actual, th, (AtomicInteger) flowableSkipUntil$SkipUntilMainSubscriber, flowableSkipUntil$SkipUntilMainSubscriber.error);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(Object obj) {
            FlowableSkipUntil$SkipUntilMainSubscriber.this.gate = true;
            get().cancel();
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    public FlowableSkipUntil$SkipUntilMainSubscriber(AbstractC10433c<? super T> cVar) {
        this.actual = cVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this.f38426s);
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
        if (!tryOnNext(t)) {
            this.f38426s.get().request(1L);
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.deferredSetOnce(this.f38426s, this.requested, dVar);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        SubscriptionHelper.deferredRequest(this.f38426s, this.requested, j);
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9652a
    public boolean tryOnNext(T t) {
        if (!this.gate) {
            return false;
        }
        C9804f.m1998a(this.actual, t, this, this.error);
        return true;
    }
}
