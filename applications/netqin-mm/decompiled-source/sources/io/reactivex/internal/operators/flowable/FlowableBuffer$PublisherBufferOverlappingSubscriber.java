package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9642e;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p543b0.p557i.C9808j;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber.class */
public final class FlowableBuffer$PublisherBufferOverlappingSubscriber<T, C extends Collection<? super T>> extends AtomicLong implements AbstractC9829h<T>, AbstractC10434d, AbstractC9642e {
    public static final long serialVersionUID = -7370244972039324525L;
    public final AbstractC10433c<? super C> actual;
    public final Callable<C> bufferSupplier;
    public volatile boolean cancelled;
    public boolean done;
    public int index;
    public long produced;

    /* renamed from: s */
    public AbstractC10434d f38339s;
    public final int size;
    public final int skip;
    public final AtomicBoolean once = new AtomicBoolean();
    public final ArrayDeque<C> buffers = new ArrayDeque<>();

    public FlowableBuffer$PublisherBufferOverlappingSubscriber(AbstractC10433c<? super C> cVar, int i, int i2, Callable<C> callable) {
        this.actual = cVar;
        this.size = i;
        this.skip = i2;
        this.bufferSupplier = callable;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.cancelled = true;
        this.f38339s.cancel();
    }

    @Override // p530d.p541c.p542a0.AbstractC9642e
    public boolean getAsBoolean() {
        return this.cancelled;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            long j = this.produced;
            if (j != 0) {
                C9800b.m2009c(this, j);
            }
            C9808j.m1983a(this.actual, this.buffers, this, this);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.done = true;
        this.buffers.clear();
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.done) {
            ArrayDeque<C> arrayDeque = this.buffers;
            int i = this.index;
            int i2 = i + 1;
            if (i == 0) {
                try {
                    C call = this.bufferSupplier.call();
                    C9650a.m2095a(call, "The bufferSupplier returned a null buffer");
                    arrayDeque.offer(call);
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            C peek = arrayDeque.peek();
            if (peek != null && peek.size() + 1 == this.size) {
                arrayDeque.poll();
                peek.add(t);
                this.produced++;
                this.actual.onNext(peek);
            }
            Iterator<C> it = arrayDeque.iterator();
            while (it.hasNext()) {
                it.next().add(t);
            }
            int i3 = i2;
            if (i2 == this.skip) {
                i3 = 0;
            }
            this.index = i3;
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38339s, dVar)) {
            this.f38339s = dVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j) && !C9808j.m1981b(j, this.actual, this.buffers, this, this)) {
            if (this.once.get() || !this.once.compareAndSet(false, true)) {
                this.f38339s.request(C9800b.m2011b(this.skip, j));
                return;
            }
            this.f38339s.request(C9800b.m2013a(this.size, C9800b.m2011b(this.skip, j - 1)));
        }
    }
}
