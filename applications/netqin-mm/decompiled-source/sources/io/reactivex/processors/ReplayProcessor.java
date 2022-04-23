package io.reactivex.processors;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p561f0.AbstractC9817a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor.class */
public final class ReplayProcessor<T> extends AbstractC9817a<T> {

    /* renamed from: c */
    public static final Object[] f38578c = new Object[0];

    /* renamed from: b */
    public final AbstractC10430a<T> f38579b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$Node.class */
    public static final class Node<T> extends AtomicReference<Node<T>> {
        public static final long serialVersionUID = 6404226426336033100L;
        public final T value;

        public Node(T t) {
            this.value = t;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$ReplaySubscription.class */
    public static final class ReplaySubscription<T> extends AtomicInteger implements AbstractC10434d {
        public static final long serialVersionUID = 466549804534799122L;
        public final AbstractC10433c<? super T> actual;
        public volatile boolean cancelled;
        public long emitted;
        public Object index;
        public final AtomicLong requested = new AtomicLong();
        public final ReplayProcessor<T> state;

        public ReplaySubscription(AbstractC10433c<? super T> cVar, ReplayProcessor<T> replayProcessor) {
            this.actual = cVar;
            this.state = replayProcessor;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.state.m216a((ReplaySubscription) this);
                throw null;
            }
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                C9800b.m2012a(this.requested, j);
                this.state.f38579b.m215a(this);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$TimedNode.class */
    public static final class TimedNode<T> extends AtomicReference<TimedNode<T>> {
        public static final long serialVersionUID = 6404226426336033100L;
        public final long time;
        public final T value;

        public TimedNode(T t, long j) {
            this.value = t;
            this.time = j;
        }
    }

    /* renamed from: io.reactivex.processors.ReplayProcessor$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/ReplayProcessor$a.class */
    public interface AbstractC10430a<T> {
        /* renamed from: a */
        void m215a(ReplaySubscription<T> replaySubscription);
    }

    /* renamed from: a */
    public void m216a(ReplaySubscription<T> replaySubscription) {
        throw null;
    }
}
