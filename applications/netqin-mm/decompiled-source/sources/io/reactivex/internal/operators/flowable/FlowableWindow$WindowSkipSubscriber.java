package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.processors.UnicastProcessor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber.class */
public final class FlowableWindow$WindowSkipSubscriber<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d, Runnable {
    public static final long serialVersionUID = -8792836352386833856L;
    public final AbstractC10433c<? super AbstractC9814e<T>> actual;
    public final int bufferSize;
    public long index;

    /* renamed from: s */
    public AbstractC10434d f38443s;
    public final long size;
    public final long skip;
    public UnicastProcessor<T> window;
    public final AtomicBoolean once = new AtomicBoolean();
    public final AtomicBoolean firstRequest = new AtomicBoolean();

    public FlowableWindow$WindowSkipSubscriber(AbstractC10433c<? super AbstractC9814e<T>> cVar, long j, long j2, int i) {
        super(1);
        this.actual = cVar;
        this.size = j;
        this.skip = j2;
        this.bufferSize = i;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (this.once.compareAndSet(false, true)) {
            run();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        UnicastProcessor<T> unicastProcessor = this.window;
        if (unicastProcessor != null) {
            this.window = null;
            unicastProcessor.onComplete();
        }
        this.actual.onComplete();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        UnicastProcessor<T> unicastProcessor = this.window;
        if (unicastProcessor != null) {
            this.window = null;
            unicastProcessor.onError(th);
        }
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        long j = this.index;
        UnicastProcessor<T> unicastProcessor = this.window;
        if (j == 0) {
            getAndIncrement();
            unicastProcessor = UnicastProcessor.m214a(this.bufferSize, this);
            this.window = unicastProcessor;
            this.actual.onNext(unicastProcessor);
        }
        long j2 = j + 1;
        if (unicastProcessor != null) {
            unicastProcessor.onNext(t);
        }
        if (j2 == this.size) {
            this.window = null;
            unicastProcessor.onComplete();
        }
        if (j2 == this.skip) {
            this.index = 0L;
        } else {
            this.index = j2;
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38443s, dVar)) {
            this.f38443s = dVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (!SubscriptionHelper.validate(j)) {
            return;
        }
        if (this.firstRequest.get() || !this.firstRequest.compareAndSet(false, true)) {
            this.f38443s.request(C9800b.m2011b(this.skip, j));
            return;
        }
        this.f38443s.request(C9800b.m2013a(C9800b.m2011b(this.size, j), C9800b.m2011b(this.skip - this.size, j - 1)));
    }

    @Override // java.lang.Runnable
    public void run() {
        if (decrementAndGet() == 0) {
            this.f38443s.cancel();
        }
    }
}
