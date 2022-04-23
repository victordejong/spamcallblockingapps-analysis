package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRefCount.class */
public final class FlowableRefCount<T> extends AbstractC9814e<T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection.class */
    public static final class RefConnection extends AtomicReference<AbstractC9861b> implements Runnable, AbstractC9644g<AbstractC9861b> {
        public static final long serialVersionUID = -4552101107598366241L;
        public boolean connected;
        public final FlowableRefCount<?> parent;
        public long subscriberCount;
        public AbstractC9861b timer;

        public RefConnection(FlowableRefCount<?> flowableRefCount) {
            this.parent = flowableRefCount;
        }

        public void accept(AbstractC9861b bVar) throws Exception {
            DisposableHelper.replace(this, bVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.parent.m246c(this);
            throw null;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRefCount$RefCountSubscriber.class */
    public static final class RefCountSubscriber<T> extends AtomicBoolean implements AbstractC9829h<T>, AbstractC10434d {
        public static final long serialVersionUID = -7419642935409022375L;
        public final AbstractC10433c<? super T> actual;
        public final RefConnection connection;
        public final FlowableRefCount<T> parent;
        public AbstractC10434d upstream;

        public RefCountSubscriber(AbstractC10433c<? super T> cVar, FlowableRefCount<T> flowableRefCount, RefConnection refConnection) {
            this.actual = cVar;
            this.parent = flowableRefCount;
            this.connection = refConnection;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            this.upstream.cancel();
            if (compareAndSet(false, true)) {
                this.parent.m248a(this.connection);
                throw null;
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.parent.m247b(this.connection);
                throw null;
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            if (!compareAndSet(false, true)) {
                C9815a.m1923b(th);
            } else {
                this.parent.m247b(this.connection);
                throw null;
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            this.actual.onNext(t);
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.actual.onSubscribe(this);
            }
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            this.upstream.request(j);
        }
    }

    /* renamed from: a */
    public void m248a(RefConnection refConnection) {
        throw null;
    }

    /* renamed from: b */
    public void m247b(RefConnection refConnection) {
        throw null;
    }

    /* renamed from: c */
    public void m246c(RefConnection refConnection) {
        throw null;
    }
}
