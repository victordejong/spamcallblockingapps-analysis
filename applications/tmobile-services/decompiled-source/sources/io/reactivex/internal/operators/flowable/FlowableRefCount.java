package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.flowables.ConnectableFlowable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRefCount.class */
public final class FlowableRefCount<T> extends Flowable<T> {

    /* renamed from: g */
    final ConnectableFlowable<T> f16363g;

    /* renamed from: h */
    final int f16364h;

    /* renamed from: i */
    final long f16365i;

    /* renamed from: j */
    final TimeUnit f16366j;

    /* renamed from: k */
    final Scheduler f16367k;

    /* renamed from: l */
    RefConnection f16368l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRefCount$RefConnection.class */
    public static final class RefConnection extends AtomicReference<Disposable> implements Runnable, Consumer<Disposable> {
        private static final long serialVersionUID = -4552101107598366241L;

        /* renamed from: f */
        final FlowableRefCount<?> f16369f;

        /* renamed from: g */
        Disposable f16370g;

        /* renamed from: h */
        long f16371h;

        /* renamed from: i */
        boolean f16372i;

        /* renamed from: j */
        boolean f16373j;

        RefConnection(FlowableRefCount<?> flowableRefCount) {
            this.f16369f = flowableRefCount;
        }

        /* renamed from: a */
        public void accept(Disposable disposable) throws Exception {
            DisposableHelper.replace(this, disposable);
            synchronized (this.f16369f) {
                if (this.f16373j) {
                    ((ResettableConnectable) this.f16369f.f16363g).mo3733b(disposable);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f16369f.m4119G(this);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRefCount$RefCountSubscriber.class */
    static final class RefCountSubscriber<T> extends AtomicBoolean implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -7419642935409022375L;

        /* renamed from: f */
        final Subscriber<? super T> f16374f;

        /* renamed from: g */
        final FlowableRefCount<T> f16375g;

        /* renamed from: h */
        final RefConnection f16376h;

        /* renamed from: i */
        Subscription f16377i;

        RefCountSubscriber(Subscriber<? super T> subscriber, FlowableRefCount<T> flowableRefCount, RefConnection refConnection) {
            this.f16374f = subscriber;
            this.f16375g = flowableRefCount;
            this.f16376h = refConnection;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16377i.cancel();
            if (compareAndSet(false, true)) {
                this.f16375g.m4123C(this.f16376h);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.f16375g.m4120F(this.f16376h);
                this.f16374f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (compareAndSet(false, true)) {
                this.f16375g.m4120F(this.f16376h);
                this.f16374f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16374f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16377i, subscription)) {
                this.f16377i = subscription;
                this.f16374f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f16377i.request(j);
        }
    }

    /* renamed from: C */
    void m4123C(RefConnection refConnection) {
        synchronized (this) {
            if (this.f16368l != null && this.f16368l == refConnection) {
                long j = refConnection.f16371h - 1;
                refConnection.f16371h = j;
                if (j == 0 && refConnection.f16372i) {
                    if (this.f16365i == 0) {
                        m4119G(refConnection);
                        return;
                    }
                    SequentialDisposable sequentialDisposable = new SequentialDisposable();
                    refConnection.f16370g = sequentialDisposable;
                    sequentialDisposable.m4422a(this.f16367k.mo3498e(refConnection, this.f16365i, this.f16366j));
                }
            }
        }
    }

    /* renamed from: D */
    void m4122D(RefConnection refConnection) {
        Disposable disposable = refConnection.f16370g;
        if (disposable != null) {
            disposable.dispose();
            refConnection.f16370g = null;
        }
    }

    /* renamed from: E */
    void m4121E(RefConnection refConnection) {
        ConnectableFlowable<T> connectableFlowable = this.f16363g;
        if (connectableFlowable instanceof Disposable) {
            ((Disposable) connectableFlowable).dispose();
        } else if (connectableFlowable instanceof ResettableConnectable) {
            ((ResettableConnectable) connectableFlowable).mo3733b(refConnection.get());
        }
    }

    /* renamed from: F */
    void m4120F(RefConnection refConnection) {
        synchronized (this) {
            if (this.f16363g instanceof FlowablePublishClassic) {
                if (this.f16368l != null && this.f16368l == refConnection) {
                    this.f16368l = null;
                    m4122D(refConnection);
                }
                long j = refConnection.f16371h - 1;
                refConnection.f16371h = j;
                if (j == 0) {
                    m4121E(refConnection);
                }
            } else if (this.f16368l != null && this.f16368l == refConnection) {
                m4122D(refConnection);
                long j2 = refConnection.f16371h - 1;
                refConnection.f16371h = j2;
                if (j2 == 0) {
                    this.f16368l = null;
                    m4121E(refConnection);
                }
            }
        }
    }

    /* renamed from: G */
    void m4119G(RefConnection refConnection) {
        synchronized (this) {
            if (refConnection.f16371h == 0 && refConnection == this.f16368l) {
                this.f16368l = null;
                Disposable disposable = refConnection.get();
                DisposableHelper.dispose(refConnection);
                if (this.f16363g instanceof Disposable) {
                    ((Disposable) this.f16363g).dispose();
                } else if (this.f16363g instanceof ResettableConnectable) {
                    if (disposable == null) {
                        refConnection.f16373j = true;
                    } else {
                        ((ResettableConnectable) this.f16363g).mo3733b(disposable);
                    }
                }
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        RefConnection refConnection;
        boolean z;
        synchronized (this) {
            RefConnection refConnection2 = this.f16368l;
            refConnection = refConnection2;
            if (refConnection2 == null) {
                refConnection = new RefConnection(this);
                this.f16368l = refConnection;
            }
            long j = refConnection.f16371h;
            if (j == 0 && refConnection.f16370g != null) {
                refConnection.f16370g.dispose();
            }
            long j2 = j + 1;
            refConnection.f16371h = j2;
            z = true;
            if (refConnection.f16372i || j2 != this.f16364h) {
                z = false;
            } else {
                refConnection.f16372i = true;
            }
        }
        this.f16363g.m4493v(new RefCountSubscriber(subscriber, this, refConnection));
        if (z) {
            this.f16363g.mo4105C(refConnection);
        }
    }
}
