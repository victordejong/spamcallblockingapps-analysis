package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9677a;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer.class */
public final class FlowableOnBackpressureBuffer<T> extends AbstractC9677a<T, T> {

    /* renamed from: c */
    public final int f38394c;

    /* renamed from: d */
    public final boolean f38395d;

    /* renamed from: e */
    public final boolean f38396e;

    /* renamed from: f */
    public final AbstractC9638a f38397f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureBuffer$BackpressureBufferSubscriber.class */
    public static final class BackpressureBufferSubscriber<T> extends BasicIntQueueSubscription<T> implements AbstractC9829h<T> {
        public static final long serialVersionUID = -2514538129242366402L;
        public final AbstractC10433c<? super T> actual;
        public volatile boolean cancelled;
        public final boolean delayError;
        public volatile boolean done;
        public Throwable error;
        public final AbstractC9638a onOverflow;
        public boolean outputFused;
        public final AbstractC9660i<T> queue;
        public final AtomicLong requested = new AtomicLong();

        /* renamed from: s */
        public AbstractC10434d f38398s;

        public BackpressureBufferSubscriber(AbstractC10433c<? super T> cVar, int i, boolean z, boolean z2, AbstractC9638a aVar) {
            this.actual = cVar;
            this.onOverflow = aVar;
            this.delayError = z2;
            this.queue = z ? new C9772a<>(i) : new SpscArrayQueue<>(i);
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.f38398s.cancel();
                if (getAndIncrement() == 0) {
                    this.queue.clear();
                }
            }
        }

        public boolean checkTerminated(boolean z, boolean z2, AbstractC10433c<? super T> cVar) {
            if (this.cancelled) {
                this.queue.clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                if (!this.delayError) {
                    Throwable th = this.error;
                    if (th != null) {
                        this.queue.clear();
                        cVar.onError(th);
                        return true;
                    } else if (!z2) {
                        return false;
                    } else {
                        cVar.onComplete();
                        return true;
                    }
                } else if (!z2) {
                    return false;
                } else {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        cVar.onError(th2);
                        return true;
                    }
                    cVar.onComplete();
                    return true;
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public void clear() {
            this.queue.clear();
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                AbstractC9660i<T> iVar = this.queue;
                AbstractC10433c<? super T> cVar = this.actual;
                int i = 1;
                while (!checkTerminated(this.done, iVar.isEmpty(), cVar)) {
                    long j = this.requested.get();
                    long j2 = 0;
                    while (j2 != j) {
                        boolean z = this.done;
                        Object obj = (T) iVar.poll();
                        boolean z2 = obj == null;
                        if (!checkTerminated(z, z2, cVar)) {
                            if (z2) {
                                break;
                            }
                            cVar.onNext(obj);
                            j2++;
                        } else {
                            return;
                        }
                    }
                    if (j2 != j || !checkTerminated(this.done, iVar.isEmpty(), cVar)) {
                        if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                            this.requested.addAndGet(-j2);
                        }
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            this.done = true;
            if (this.outputFused) {
                this.actual.onComplete();
            } else {
                drain();
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            if (this.outputFused) {
                this.actual.onError(th);
            } else {
                drain();
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            if (!this.queue.offer(t)) {
                this.f38398s.cancel();
                MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
                try {
                    this.onOverflow.run();
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    missingBackpressureException.initCause(th);
                }
                onError(missingBackpressureException);
            } else if (this.outputFused) {
                this.actual.onNext(null);
            } else {
                drain();
            }
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.f38398s, dVar)) {
                this.f38398s = dVar;
                this.actual.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public T poll() throws Exception {
            return this.queue.poll();
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            if (!this.outputFused && SubscriptionHelper.validate(j)) {
                C9800b.m2012a(this.requested, j);
                drain();
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }
    }

    public FlowableOnBackpressureBuffer(AbstractC9814e<T> eVar, int i, boolean z, boolean z2, AbstractC9638a aVar) {
        super(eVar);
        this.f38394c = i;
        this.f38395d = z;
        this.f38396e = z2;
        this.f38397f = aVar;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        this.f36754b.m1965a((AbstractC9829h) new BackpressureBufferSubscriber(cVar, this.f38394c, this.f38395d, this.f38396e, this.f38397f));
    }
}
