package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9652a;
import p530d.p541c.p543b0.p557i.C9804f;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber.class */
public final class FlowableWithLatestFromMany$WithLatestFromSubscriber<T, R> extends AtomicInteger implements AbstractC9652a<T>, AbstractC10434d {
    public static final long serialVersionUID = 1577321883966341961L;
    public final AbstractC10433c<? super R> actual;
    public final AbstractC9645h<? super Object[], R> combiner;
    public volatile boolean done;
    public final AtomicThrowable error;
    public final AtomicLong requested;

    /* renamed from: s */
    public final AtomicReference<AbstractC10434d> f38445s;
    public final FlowableWithLatestFromMany$WithLatestInnerSubscriber[] subscribers;
    public final AtomicReferenceArray<Object> values;

    public FlowableWithLatestFromMany$WithLatestFromSubscriber(AbstractC10433c<? super R> cVar, AbstractC9645h<? super Object[], R> hVar, int i) {
        this.actual = cVar;
        this.combiner = hVar;
        FlowableWithLatestFromMany$WithLatestInnerSubscriber[] flowableWithLatestFromMany$WithLatestInnerSubscriberArr = new FlowableWithLatestFromMany$WithLatestInnerSubscriber[i];
        for (int i2 = 0; i2 < i; i2++) {
            flowableWithLatestFromMany$WithLatestInnerSubscriberArr[i2] = new FlowableWithLatestFromMany$WithLatestInnerSubscriber(this, i2);
        }
        this.subscribers = flowableWithLatestFromMany$WithLatestInnerSubscriberArr;
        this.values = new AtomicReferenceArray<>(i);
        this.f38445s = new AtomicReference<>();
        this.requested = new AtomicLong();
        this.error = new AtomicThrowable();
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this.f38445s);
        for (FlowableWithLatestFromMany$WithLatestInnerSubscriber flowableWithLatestFromMany$WithLatestInnerSubscriber : this.subscribers) {
            flowableWithLatestFromMany$WithLatestInnerSubscriber.dispose();
        }
    }

    public void cancelAllBut(int i) {
        FlowableWithLatestFromMany$WithLatestInnerSubscriber[] flowableWithLatestFromMany$WithLatestInnerSubscriberArr = this.subscribers;
        for (int i2 = 0; i2 < flowableWithLatestFromMany$WithLatestInnerSubscriberArr.length; i2++) {
            if (i2 != i) {
                flowableWithLatestFromMany$WithLatestInnerSubscriberArr[i2].dispose();
            }
        }
    }

    public void innerComplete(int i, boolean z) {
        if (!z) {
            this.done = true;
            SubscriptionHelper.cancel(this.f38445s);
            cancelAllBut(i);
            C9804f.m1996a(this.actual, this, this.error);
        }
    }

    public void innerError(int i, Throwable th) {
        this.done = true;
        SubscriptionHelper.cancel(this.f38445s);
        cancelAllBut(i);
        C9804f.m1997a((AbstractC10433c<?>) this.actual, th, (AtomicInteger) this, this.error);
    }

    public void innerNext(int i, Object obj) {
        this.values.set(i, obj);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            cancelAllBut(-1);
            C9804f.m1996a(this.actual, this, this.error);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.done = true;
        cancelAllBut(-1);
        C9804f.m1997a((AbstractC10433c<?>) this.actual, th, (AtomicInteger) this, this.error);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!tryOnNext(t) && !this.done) {
            this.f38445s.get().request(1L);
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.deferredSetOnce(this.f38445s, this.requested, dVar);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        SubscriptionHelper.deferredRequest(this.f38445s, this.requested, j);
    }

    public void subscribe(AbstractC10432b<?>[] bVarArr, int i) {
        FlowableWithLatestFromMany$WithLatestInnerSubscriber[] flowableWithLatestFromMany$WithLatestInnerSubscriberArr = this.subscribers;
        AtomicReference<AbstractC10434d> atomicReference = this.f38445s;
        for (int i2 = 0; i2 < i && !SubscriptionHelper.isCancelled(atomicReference.get()); i2++) {
            bVarArr[i2].subscribe(flowableWithLatestFromMany$WithLatestInnerSubscriberArr[i2]);
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9652a
    public boolean tryOnNext(T t) {
        if (this.done) {
            return false;
        }
        AtomicReferenceArray<Object> atomicReferenceArray = this.values;
        int length = atomicReferenceArray.length();
        Object[] objArr = new Object[length + 1];
        objArr[0] = t;
        int i = 0;
        while (i < length) {
            Object obj = atomicReferenceArray.get(i);
            if (obj == null) {
                return false;
            }
            i++;
            objArr[i] = obj;
        }
        try {
            R apply = this.combiner.apply(objArr);
            C9650a.m2095a(apply, "The combiner returned a null value");
            C9804f.m1998a(this.actual, apply, this, this.error);
            return true;
        } catch (Throwable th) {
            C9863a.m1822b(th);
            cancel();
            onError(th);
            return false;
        }
    }
}
