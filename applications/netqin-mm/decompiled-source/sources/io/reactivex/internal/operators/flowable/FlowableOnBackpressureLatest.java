package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9677a;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureLatest.class */
public final class FlowableOnBackpressureLatest<T> extends AbstractC9677a<T, T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureLatest$BackpressureLatestSubscriber.class */
    public static final class BackpressureLatestSubscriber<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
        public static final long serialVersionUID = 163080509307634843L;
        public final AbstractC10433c<? super T> actual;
        public volatile boolean cancelled;
        public volatile boolean done;
        public Throwable error;

        /* renamed from: s */
        public AbstractC10434d f38403s;
        public final AtomicLong requested = new AtomicLong();
        public final AtomicReference<T> current = new AtomicReference<>();

        public BackpressureLatestSubscriber(AbstractC10433c<? super T> cVar) {
            this.actual = cVar;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.f38403s.cancel();
                if (getAndIncrement() == 0) {
                    this.current.lazySet(null);
                }
            }
        }

        public boolean checkTerminated(boolean z, boolean z2, AbstractC10433c<?> cVar, AtomicReference<T> atomicReference) {
            if (this.cancelled) {
                atomicReference.lazySet(null);
                return true;
            } else if (!z) {
                return false;
            } else {
                Throwable th = this.error;
                if (th != null) {
                    atomicReference.lazySet(null);
                    cVar.onError(th);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    cVar.onComplete();
                    return true;
                }
            }
        }

        public void drain() {
            int addAndGet;
            boolean z;
            if (getAndIncrement() == 0) {
                AbstractC10433c<? super T> cVar = this.actual;
                AtomicLong atomicLong = this.requested;
                AtomicReference<T> atomicReference = this.current;
                int i = 1;
                do {
                    long j = 0;
                    while (true) {
                        z = false;
                        if (j == atomicLong.get()) {
                            break;
                        }
                        boolean z2 = this.done;
                        Object obj = (T) atomicReference.getAndSet(null);
                        boolean z3 = obj == null;
                        if (!checkTerminated(z2, z3, cVar, atomicReference)) {
                            if (z3) {
                                break;
                            }
                            cVar.onNext(obj);
                            j++;
                        } else {
                            return;
                        }
                    }
                    if (j == atomicLong.get()) {
                        boolean z4 = this.done;
                        if (atomicReference.get() == null) {
                            z = true;
                        }
                        if (checkTerminated(z4, z, cVar, atomicReference)) {
                            return;
                        }
                    }
                    if (j != 0) {
                        C9800b.m2009c(atomicLong, j);
                    }
                    addAndGet = addAndGet(-i);
                    i = addAndGet;
                } while (addAndGet != 0);
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            this.current.lazySet(t);
            drain();
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.f38403s, dVar)) {
                this.f38403s = dVar;
                this.actual.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
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

    public FlowableOnBackpressureLatest(AbstractC9814e<T> eVar) {
        super(eVar);
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        this.f36754b.m1965a((AbstractC9829h) new BackpressureLatestSubscriber(cVar));
    }
}
