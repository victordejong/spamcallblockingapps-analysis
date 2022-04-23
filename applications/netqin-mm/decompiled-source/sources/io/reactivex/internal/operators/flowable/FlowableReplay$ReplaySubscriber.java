package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9699o;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber.class */
public final class FlowableReplay$ReplaySubscriber<T> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<T>, AbstractC9861b {
    public static final FlowableReplay$InnerSubscription[] EMPTY = new FlowableReplay$InnerSubscription[0];
    public static final FlowableReplay$InnerSubscription[] TERMINATED = new FlowableReplay$InnerSubscription[0];
    public static final long serialVersionUID = 7224554242710036740L;
    public final AbstractC9699o<T> buffer;
    public boolean done;
    public long maxChildRequested;
    public long maxUpstreamRequested;
    public final AtomicInteger management = new AtomicInteger();
    public final AtomicReference<FlowableReplay$InnerSubscription<T>[]> subscribers = new AtomicReference<>(EMPTY);
    public final AtomicBoolean shouldConnect = new AtomicBoolean();

    public FlowableReplay$ReplaySubscriber(AbstractC9699o<T> oVar) {
        this.buffer = oVar;
    }

    public boolean add(FlowableReplay$InnerSubscription<T> flowableReplay$InnerSubscription) {
        FlowableReplay$InnerSubscription<T>[] flowableReplay$InnerSubscriptionArr;
        FlowableReplay$InnerSubscription<T>[] flowableReplay$InnerSubscriptionArr2;
        if (flowableReplay$InnerSubscription != null) {
            do {
                flowableReplay$InnerSubscriptionArr = this.subscribers.get();
                if (flowableReplay$InnerSubscriptionArr == TERMINATED) {
                    return false;
                }
                int length = flowableReplay$InnerSubscriptionArr.length;
                flowableReplay$InnerSubscriptionArr2 = new FlowableReplay$InnerSubscription[length + 1];
                System.arraycopy(flowableReplay$InnerSubscriptionArr, 0, flowableReplay$InnerSubscriptionArr2, 0, length);
                flowableReplay$InnerSubscriptionArr2[length] = flowableReplay$InnerSubscription;
            } while (!this.subscribers.compareAndSet(flowableReplay$InnerSubscriptionArr, flowableReplay$InnerSubscriptionArr2));
            return true;
        }
        throw null;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.subscribers.set(TERMINATED);
        SubscriptionHelper.cancel(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.subscribers.get() == TERMINATED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void manageRequests() {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableReplay$ReplaySubscriber.manageRequests():void");
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            this.buffer.complete();
            for (FlowableReplay$InnerSubscription<T> flowableReplay$InnerSubscription : this.subscribers.getAndSet(TERMINATED)) {
                this.buffer.replay(flowableReplay$InnerSubscription);
            }
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (!this.done) {
            this.done = true;
            this.buffer.error(th);
            for (FlowableReplay$InnerSubscription<T> flowableReplay$InnerSubscription : this.subscribers.getAndSet(TERMINATED)) {
                this.buffer.replay(flowableReplay$InnerSubscription);
            }
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.done) {
            this.buffer.next(t);
            for (FlowableReplay$InnerSubscription<T> flowableReplay$InnerSubscription : this.subscribers.get()) {
                this.buffer.replay(flowableReplay$InnerSubscription);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            manageRequests();
            for (FlowableReplay$InnerSubscription<T> flowableReplay$InnerSubscription : this.subscribers.get()) {
                this.buffer.replay(flowableReplay$InnerSubscription);
            }
        }
    }

    public void remove(FlowableReplay$InnerSubscription<T> flowableReplay$InnerSubscription) {
        FlowableReplay$InnerSubscription<T>[] flowableReplay$InnerSubscriptionArr;
        FlowableReplay$InnerSubscription<T>[] flowableReplay$InnerSubscriptionArr2;
        do {
            flowableReplay$InnerSubscriptionArr = this.subscribers.get();
            int length = flowableReplay$InnerSubscriptionArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (flowableReplay$InnerSubscriptionArr[i2].equals(flowableReplay$InnerSubscription)) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        flowableReplay$InnerSubscriptionArr2 = EMPTY;
                    } else {
                        flowableReplay$InnerSubscriptionArr2 = new FlowableReplay$InnerSubscription[length - 1];
                        System.arraycopy(flowableReplay$InnerSubscriptionArr, 0, flowableReplay$InnerSubscriptionArr2, 0, i);
                        System.arraycopy(flowableReplay$InnerSubscriptionArr, i + 1, flowableReplay$InnerSubscriptionArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.subscribers.compareAndSet(flowableReplay$InnerSubscriptionArr, flowableReplay$InnerSubscriptionArr2));
    }
}
