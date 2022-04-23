package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber.class */
public final class FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber<T> extends BasicIntQueueSubscription<T> implements AbstractC9829h<T> {
    public static final long serialVersionUID = 8443155186132538303L;
    public final AbstractC10433c<? super T> actual;
    public volatile boolean cancelled;
    public final boolean delayErrors;
    public final AbstractC9645h<? super T, ? extends AbstractC9809c> mapper;
    public final int maxConcurrency;

    /* renamed from: s */
    public AbstractC10434d f38376s;
    public final AtomicThrowable errors = new AtomicThrowable();
    public final C9860a set = new C9860a();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber$InnerConsumer.class */
    public final class InnerConsumer extends AtomicReference<AbstractC9861b> implements AbstractC9647b, AbstractC9861b {
        public static final long serialVersionUID = 8606673141535671828L;

        public InnerConsumer() {
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onComplete() {
            FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber.this.innerComplete(this);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber.this.innerError(this, th);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber(AbstractC10433c<? super T> cVar, AbstractC9645h<? super T, ? extends AbstractC9809c> hVar, boolean z, int i) {
        this.actual = cVar;
        this.mapper = hVar;
        this.delayErrors = z;
        this.maxConcurrency = i;
        lazySet(1);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.cancelled = true;
        this.f38376s.cancel();
        this.set.dispose();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
    }

    public void innerComplete(FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber<T>.InnerConsumer innerConsumer) {
        this.set.mo1827c(innerConsumer);
        onComplete();
    }

    public void innerError(FlowableFlatMapCompletable$FlatMapCompletableMainSubscriber<T>.InnerConsumer innerConsumer, Throwable th) {
        this.set.mo1827c(innerConsumer);
        onError(th);
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return true;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (decrementAndGet() == 0) {
            Throwable terminate = this.errors.terminate();
            if (terminate != null) {
                this.actual.onError(terminate);
            } else {
                this.actual.onComplete();
            }
        } else if (this.maxConcurrency != Integer.MAX_VALUE) {
            this.f38376s.request(1L);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (!this.errors.addThrowable(th)) {
            C9815a.m1923b(th);
        } else if (!this.delayErrors) {
            cancel();
            if (getAndSet(0) > 0) {
                this.actual.onError(this.errors.terminate());
            }
        } else if (decrementAndGet() == 0) {
            this.actual.onError(this.errors.terminate());
        } else if (this.maxConcurrency != Integer.MAX_VALUE) {
            this.f38376s.request(1L);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        try {
            Object apply = this.mapper.apply(t);
            C9650a.m2095a(apply, "The mapper returned a null CompletableSource");
            AbstractC9809c cVar = (AbstractC9809c) apply;
            getAndIncrement();
            InnerConsumer innerConsumer = new InnerConsumer();
            if (!this.cancelled && this.set.mo1828b(innerConsumer)) {
                cVar.mo1980a(innerConsumer);
            }
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.f38376s.cancel();
            onError(th);
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38376s, dVar)) {
            this.f38376s = dVar;
            this.actual.onSubscribe(this);
            int i = this.maxConcurrency;
            if (i == Integer.MAX_VALUE) {
                dVar.request(Long.MAX_VALUE);
            } else {
                dVar.request(i);
            }
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public T poll() throws Exception {
        return null;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public int requestFusion(int i) {
        return i & 2;
    }
}
