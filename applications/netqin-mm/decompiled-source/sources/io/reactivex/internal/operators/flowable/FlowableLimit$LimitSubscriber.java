package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableLimit$LimitSubscriber.class */
public final class FlowableLimit$LimitSubscriber<T> extends AtomicLong implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = 2288246011222124525L;
    public final AbstractC10433c<? super T> actual;
    public long remaining;
    public AbstractC10434d upstream;

    public FlowableLimit$LimitSubscriber(AbstractC10433c<? super T> cVar, long j) {
        this.actual = cVar;
        this.remaining = j;
        lazySet(j);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.upstream.cancel();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (this.remaining > 0) {
            this.remaining = 0L;
            this.actual.onComplete();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.remaining > 0) {
            this.remaining = 0L;
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        long j = this.remaining;
        if (j > 0) {
            long j2 = j - 1;
            this.remaining = j2;
            this.actual.onNext(t);
            if (j2 == 0) {
                this.upstream.cancel();
                this.actual.onComplete();
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (!SubscriptionHelper.validate(this.upstream, dVar)) {
            return;
        }
        if (this.remaining == 0) {
            dVar.cancel();
            EmptySubscription.complete(this.actual);
            return;
        }
        this.upstream = dVar;
        this.actual.onSubscribe(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p611j.p612a.AbstractC10434d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void request(long r9) {
        /*
            r8 = this;
            r0 = r9
            boolean r0 = io.reactivex.internal.subscriptions.SubscriptionHelper.validate(r0)
            if (r0 == 0) goto L_0x003b
        L_0x0007:
            r0 = r8
            long r0 = r0.get()
            r11 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0015
            goto L_0x003b
        L_0x0015:
            r0 = r11
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0021
            r0 = r11
            r13 = r0
            goto L_0x0024
        L_0x0021:
            r0 = r9
            r13 = r0
        L_0x0024:
            r0 = r8
            r1 = r11
            r2 = r11
            r3 = r13
            long r2 = r2 - r3
            boolean r0 = r0.compareAndSet(r1, r2)
            if (r0 == 0) goto L_0x0007
            r0 = r8
            j.a.d r0 = r0.upstream
            r1 = r13
            r0.request(r1)
        L_0x003b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableLimit$LimitSubscriber.request(long):void");
    }
}
