package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.TimeUnit;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p562g0.C9828b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer.class */
public final class FlowableReplay$SizeAndTimeBoundReplayBuffer<T> extends FlowableReplay$BoundedReplayBuffer<T> {
    public static final long serialVersionUID = 3457957419649567404L;
    public final int limit;
    public final long maxAge;
    public final AbstractC9845s scheduler;
    public final TimeUnit unit;

    public FlowableReplay$SizeAndTimeBoundReplayBuffer(int i, long j, TimeUnit timeUnit, AbstractC9845s sVar) {
        this.scheduler = sVar;
        this.limit = i;
        this.maxAge = j;
        this.unit = timeUnit;
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableReplay$BoundedReplayBuffer
    public Object enterTransform(Object obj) {
        return new C9828b(obj, this.scheduler.m1852a(this.unit), this.unit);
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableReplay$BoundedReplayBuffer
    public FlowableReplay$Node getHead() {
        long a = this.scheduler.m1852a(this.unit);
        long j = this.maxAge;
        FlowableReplay$Node flowableReplay$Node = get();
        FlowableReplay$Node flowableReplay$Node2 = flowableReplay$Node.get();
        while (flowableReplay$Node2 != null) {
            C9828b bVar = (C9828b) flowableReplay$Node2.value;
            if (NotificationLite.isComplete(bVar.m1913b()) || NotificationLite.isError(bVar.m1913b()) || bVar.m1914a() > a - j) {
                break;
            }
            flowableReplay$Node2 = flowableReplay$Node2.get();
            flowableReplay$Node = flowableReplay$Node2;
        }
        return flowableReplay$Node;
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableReplay$BoundedReplayBuffer
    public Object leaveTransform(Object obj) {
        return ((C9828b) obj).m1913b();
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableReplay$BoundedReplayBuffer
    public void truncate() {
        long a = this.scheduler.m1852a(this.unit);
        long j = this.maxAge;
        FlowableReplay$Node flowableReplay$Node = get();
        FlowableReplay$Node flowableReplay$Node2 = flowableReplay$Node.get();
        int i = 0;
        while (flowableReplay$Node2 != null) {
            int i2 = this.size;
            if (i2 <= this.limit) {
                if (((C9828b) flowableReplay$Node2.value).m1914a() > a - j) {
                    break;
                }
                i++;
                this.size--;
                flowableReplay$Node2 = flowableReplay$Node2.get();
                flowableReplay$Node = flowableReplay$Node2;
            } else {
                i++;
                this.size = i2 - 1;
                flowableReplay$Node2 = flowableReplay$Node2.get();
                flowableReplay$Node = flowableReplay$Node2;
            }
        }
        if (i != 0) {
            setFirst(flowableReplay$Node);
        }
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableReplay$BoundedReplayBuffer
    public void truncateFinal() {
        long a = this.scheduler.m1852a(this.unit);
        long j = this.maxAge;
        FlowableReplay$Node flowableReplay$Node = get();
        FlowableReplay$Node flowableReplay$Node2 = flowableReplay$Node.get();
        int i = 0;
        while (flowableReplay$Node2 != null && this.size > 1 && ((C9828b) flowableReplay$Node2.value).m1914a() <= a - j) {
            i++;
            this.size--;
            flowableReplay$Node2 = flowableReplay$Node2.get();
            flowableReplay$Node = flowableReplay$Node2;
        }
        if (i != 0) {
            setFirst(flowableReplay$Node);
        }
    }
}
