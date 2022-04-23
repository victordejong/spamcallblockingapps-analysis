package io.reactivex.internal.operators.flowable;

import java.util.concurrent.atomic.AtomicInteger;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSamplePublisher$SampleMainEmitLast.class */
public final class FlowableSamplePublisher$SampleMainEmitLast<T> extends FlowableSamplePublisher$SamplePublisherSubscriber<T> {
    public static final long serialVersionUID = -3029755663834015785L;
    public volatile boolean done;
    public final AtomicInteger wip = new AtomicInteger();

    public FlowableSamplePublisher$SampleMainEmitLast(AbstractC10433c<? super T> cVar, AbstractC10432b<?> bVar) {
        super(cVar, bVar);
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher$SamplePublisherSubscriber
    public void completeMain() {
        this.done = true;
        if (this.wip.getAndIncrement() == 0) {
            emit();
            this.actual.onComplete();
        }
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher$SamplePublisherSubscriber
    public void completeOther() {
        this.done = true;
        if (this.wip.getAndIncrement() == 0) {
            emit();
            this.actual.onComplete();
        }
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableSamplePublisher$SamplePublisherSubscriber
    public void run() {
        if (this.wip.getAndIncrement() == 0) {
            do {
                boolean z = this.done;
                emit();
                if (z) {
                    this.actual.onComplete();
                    return;
                }
            } while (this.wip.decrementAndGet() != 0);
        }
    }
}
