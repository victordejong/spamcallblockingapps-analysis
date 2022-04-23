package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscribers.InnerQueuedSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p556h.AbstractC9797c;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber.class */
public final class FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber<T, R> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d, AbstractC9797c<R> {
    public static final long serialVersionUID = -4255299542215038287L;
    public final AbstractC10433c<? super R> actual;
    public volatile boolean cancelled;
    public volatile InnerQueuedSubscriber<R> current;
    public volatile boolean done;
    public final ErrorMode errorMode;
    public final AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> mapper;
    public final int maxConcurrency;
    public final int prefetch;

    /* renamed from: s */
    public AbstractC10434d f38351s;
    public final C9772a<InnerQueuedSubscriber<R>> subscribers;
    public final AtomicThrowable errors = new AtomicThrowable();
    public final AtomicLong requested = new AtomicLong();

    public FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber(AbstractC10433c<? super R> cVar, AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar, int i, int i2, ErrorMode errorMode) {
        this.actual = cVar;
        this.mapper = hVar;
        this.maxConcurrency = i;
        this.prefetch = i2;
        this.errorMode = errorMode;
        this.subscribers = new C9772a<>(Math.min(i2, i));
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.f38351s.cancel();
            drainAndCancel();
        }
    }

    public void cancelAll() {
        while (true) {
            InnerQueuedSubscriber<R> poll = this.subscribers.poll();
            if (poll != null) {
                poll.cancel();
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r19v0, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p530d.p541c.p543b0.p556h.AbstractC9797c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drain() {
        /*
            Method dump skipped, instructions count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableConcatMapEager$ConcatMapEagerDelayErrorSubscriber.drain():void");
    }

    public void drainAndCancel() {
        if (getAndIncrement() == 0) {
            do {
                cancelAll();
            } while (decrementAndGet() != 0);
        }
    }

    @Override // p530d.p541c.p543b0.p556h.AbstractC9797c
    public void innerComplete(InnerQueuedSubscriber<R> innerQueuedSubscriber) {
        innerQueuedSubscriber.setDone();
        drain();
    }

    @Override // p530d.p541c.p543b0.p556h.AbstractC9797c
    public void innerError(InnerQueuedSubscriber<R> innerQueuedSubscriber, Throwable th) {
        if (this.errors.addThrowable(th)) {
            innerQueuedSubscriber.setDone();
            if (this.errorMode != ErrorMode.END) {
                this.f38351s.cancel();
            }
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.p543b0.p556h.AbstractC9797c
    public void innerNext(InnerQueuedSubscriber<R> innerQueuedSubscriber, R r) {
        if (innerQueuedSubscriber.queue().offer(r)) {
            drain();
            return;
        }
        innerQueuedSubscriber.cancel();
        innerError(innerQueuedSubscriber, new MissingBackpressureException());
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.errors.addThrowable(th)) {
            this.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        try {
            Object apply = this.mapper.apply(t);
            C9650a.m2095a(apply, "The mapper returned a null Publisher");
            AbstractC10432b bVar = (AbstractC10432b) apply;
            InnerQueuedSubscriber<R> innerQueuedSubscriber = new InnerQueuedSubscriber<>(this, this.prefetch);
            if (!this.cancelled) {
                this.subscribers.offer(innerQueuedSubscriber);
                bVar.subscribe(innerQueuedSubscriber);
                if (this.cancelled) {
                    innerQueuedSubscriber.cancel();
                    drainAndCancel();
                }
            }
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.f38351s.cancel();
            onError(th);
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38351s, dVar)) {
            this.f38351s = dVar;
            this.actual.onSubscribe(this);
            int i = this.maxConcurrency;
            dVar.request(i == Integer.MAX_VALUE ? Long.MAX_VALUE : i);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            drain();
        }
    }
}
