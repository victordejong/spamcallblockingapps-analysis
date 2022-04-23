package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber.class */
public final class FlowableBufferBoundary$BufferBoundarySubscriber<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = -8466418554264089604L;
    public final AbstractC10433c<? super C> actual;
    public final AbstractC9645h<? super Open, ? extends AbstractC10432b<? extends Close>> bufferClose;
    public final AbstractC10432b<? extends Open> bufferOpen;
    public final Callable<C> bufferSupplier;
    public volatile boolean cancelled;
    public volatile boolean done;
    public long emitted;
    public long index;
    public final C9772a<C> queue = new C9772a<>(AbstractC9814e.m1946g());
    public final C9860a subscribers = new C9860a();
    public final AtomicLong requested = new AtomicLong();
    public final AtomicReference<AbstractC10434d> upstream = new AtomicReference<>();
    public Map<Long, C> buffers = new LinkedHashMap();
    public final AtomicThrowable errors = new AtomicThrowable();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferBoundary$BufferBoundarySubscriber$BufferOpenSubscriber.class */
    public static final class BufferOpenSubscriber<Open> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<Open>, AbstractC9861b {
        public static final long serialVersionUID = -8498650778633225126L;
        public final FlowableBufferBoundary$BufferBoundarySubscriber<?, ?, Open, ?> parent;

        public BufferOpenSubscriber(FlowableBufferBoundary$BufferBoundarySubscriber<?, ?, Open, ?> flowableBufferBoundary$BufferBoundarySubscriber) {
            this.parent = flowableBufferBoundary$BufferBoundarySubscriber;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            lazySet(SubscriptionHelper.CANCELLED);
            this.parent.openComplete(this);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            lazySet(SubscriptionHelper.CANCELLED);
            this.parent.boundaryError(this, th);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(Open open) {
            this.parent.open(open);
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    public FlowableBufferBoundary$BufferBoundarySubscriber(AbstractC10433c<? super C> cVar, AbstractC10432b<? extends Open> bVar, AbstractC9645h<? super Open, ? extends AbstractC10432b<? extends Close>> hVar, Callable<C> callable) {
        this.actual = cVar;
        this.bufferSupplier = callable;
        this.bufferOpen = bVar;
        this.bufferClose = hVar;
    }

    public void boundaryError(AbstractC9861b bVar, Throwable th) {
        SubscriptionHelper.cancel(this.upstream);
        this.subscribers.mo1827c(bVar);
        onError(th);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (SubscriptionHelper.cancel(this.upstream)) {
            this.cancelled = true;
            this.subscribers.dispose();
            synchronized (this) {
                this.buffers = null;
            }
            if (getAndIncrement() != 0) {
                this.queue.clear();
            }
        }
    }

    public void close(FlowableBufferBoundary$BufferCloseSubscriber<T, C> flowableBufferBoundary$BufferCloseSubscriber, long j) {
        boolean z;
        this.subscribers.mo1827c(flowableBufferBoundary$BufferCloseSubscriber);
        if (this.subscribers.m1831a() == 0) {
            SubscriptionHelper.cancel(this.upstream);
            z = true;
        } else {
            z = false;
        }
        synchronized (this) {
            if (this.buffers != null) {
                this.queue.offer(this.buffers.remove(Long.valueOf(j)));
                if (z) {
                    this.done = true;
                }
                drain();
            }
        }
    }

    public void drain() {
        int addAndGet;
        if (getAndIncrement() == 0) {
            long j = this.emitted;
            AbstractC10433c<? super C> cVar = this.actual;
            C9772a<C> aVar = this.queue;
            int i = 1;
            do {
                long j2 = this.requested.get();
                while (j != j2) {
                    if (this.cancelled) {
                        aVar.clear();
                        return;
                    }
                    boolean z = this.done;
                    if (!z || this.errors.get() == null) {
                        C poll = aVar.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            cVar.onComplete();
                            return;
                        } else if (z2) {
                            break;
                        } else {
                            cVar.onNext(poll);
                            j++;
                        }
                    } else {
                        aVar.clear();
                        cVar.onError(this.errors.terminate());
                        return;
                    }
                }
                if (j == j2) {
                    if (this.cancelled) {
                        aVar.clear();
                        return;
                    } else if (this.done) {
                        if (this.errors.get() != null) {
                            aVar.clear();
                            cVar.onError(this.errors.terminate());
                            return;
                        } else if (aVar.isEmpty()) {
                            cVar.onComplete();
                            return;
                        }
                    }
                }
                this.emitted = j;
                addAndGet = addAndGet(-i);
                i = addAndGet;
            } while (addAndGet != 0);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.subscribers.dispose();
        synchronized (this) {
            try {
                Map<Long, C> map = this.buffers;
                if (map != null) {
                    for (C c : map.values()) {
                        this.queue.offer(c);
                    }
                    this.buffers = null;
                    this.done = true;
                    drain();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.errors.addThrowable(th)) {
            this.subscribers.dispose();
            synchronized (this) {
                this.buffers = null;
            }
            this.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        synchronized (this) {
            try {
                Map<Long, C> map = this.buffers;
                if (map != null) {
                    for (C c : map.values()) {
                        c.add(t);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.setOnce(this.upstream, dVar)) {
            BufferOpenSubscriber bufferOpenSubscriber = new BufferOpenSubscriber(this);
            this.subscribers.mo1828b(bufferOpenSubscriber);
            this.bufferOpen.subscribe(bufferOpenSubscriber);
            dVar.request(Long.MAX_VALUE);
        }
    }

    public void open(Open open) {
        try {
            C call = this.bufferSupplier.call();
            C9650a.m2095a(call, "The bufferSupplier returned a null Collection");
            C c = call;
            Object apply = this.bufferClose.apply(open);
            C9650a.m2095a(apply, "The bufferClose returned a null Publisher");
            AbstractC10432b bVar = (AbstractC10432b) apply;
            long j = this.index;
            this.index = 1 + j;
            synchronized (this) {
                Map<Long, C> map = this.buffers;
                if (map != null) {
                    map.put(Long.valueOf(j), c);
                    FlowableBufferBoundary$BufferCloseSubscriber flowableBufferBoundary$BufferCloseSubscriber = new FlowableBufferBoundary$BufferCloseSubscriber(this, j);
                    this.subscribers.mo1828b(flowableBufferBoundary$BufferCloseSubscriber);
                    bVar.subscribe(flowableBufferBoundary$BufferCloseSubscriber);
                }
            }
        } catch (Throwable th) {
            C9863a.m1822b(th);
            SubscriptionHelper.cancel(this.upstream);
            onError(th);
        }
    }

    public void openComplete(BufferOpenSubscriber<Open> bufferOpenSubscriber) {
        this.subscribers.mo1827c(bufferOpenSubscriber);
        if (this.subscribers.m1831a() == 0) {
            SubscriptionHelper.cancel(this.upstream);
            this.done = true;
            drain();
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        C9800b.m2012a(this.requested, j);
        drain();
    }
}
