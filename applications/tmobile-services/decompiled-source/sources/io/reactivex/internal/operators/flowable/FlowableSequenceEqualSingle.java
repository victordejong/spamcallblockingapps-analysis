package io.reactivex.internal.operators.flowable;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiPredicate;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.operators.flowable.FlowableSequenceEqual;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle.class */
public final class FlowableSequenceEqualSingle<T> extends Single<Boolean> implements FuseToFlowable<Boolean> {

    /* renamed from: f */
    final Publisher<? extends T> f16521f;

    /* renamed from: g */
    final Publisher<? extends T> f16522g;

    /* renamed from: h */
    final BiPredicate<? super T, ? super T> f16523h;

    /* renamed from: i */
    final int f16524i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator.class */
    static final class EqualCoordinator<T> extends AtomicInteger implements Disposable, FlowableSequenceEqual.EqualCoordinatorHelper {
        private static final long serialVersionUID = -6178010334400373240L;

        /* renamed from: f */
        final SingleObserver<? super Boolean> f16525f;

        /* renamed from: g */
        final BiPredicate<? super T, ? super T> f16526g;

        /* renamed from: h */
        final FlowableSequenceEqual.EqualSubscriber<T> f16527h;

        /* renamed from: i */
        final FlowableSequenceEqual.EqualSubscriber<T> f16528i;

        /* renamed from: j */
        final AtomicThrowable f16529j = new AtomicThrowable();

        /* renamed from: k */
        T f16530k;

        /* renamed from: l */
        T f16531l;

        EqualCoordinator(SingleObserver<? super Boolean> singleObserver, int i, BiPredicate<? super T, ? super T> biPredicate) {
            this.f16525f = singleObserver;
            this.f16526g = biPredicate;
            this.f16527h = new FlowableSequenceEqual.EqualSubscriber<>(this, i);
            this.f16528i = new FlowableSequenceEqual.EqualSubscriber<>(this, i);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSequenceEqual.EqualCoordinatorHelper
        /* renamed from: a */
        public void mo4069a(Throwable th) {
            if (this.f16529j.m3456a(th)) {
                mo4068b();
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSequenceEqual.EqualCoordinatorHelper
        /* renamed from: b */
        public void mo4068b() {
            int addAndGet;
            if (getAndIncrement() == 0) {
                int i = 1;
                do {
                    SimpleQueue<T> simpleQueue = this.f16527h.f16518j;
                    SimpleQueue<T> simpleQueue2 = this.f16528i.f16518j;
                    if (simpleQueue != null && simpleQueue2 != null) {
                        while (!isDisposed()) {
                            if (this.f16529j.get() != null) {
                                m4067c();
                                this.f16525f.onError(this.f16529j.m3455b());
                                return;
                            }
                            boolean z = this.f16527h.f16519k;
                            T t = this.f16530k;
                            T t2 = t;
                            if (t == null) {
                                try {
                                    t2 = simpleQueue.poll();
                                    this.f16530k = t2;
                                } catch (Throwable th) {
                                    Exceptions.m4428b(th);
                                    m4067c();
                                    this.f16529j.m3456a(th);
                                    this.f16525f.onError(this.f16529j.m3455b());
                                    return;
                                }
                            }
                            boolean z2 = false;
                            boolean z3 = t2 == null;
                            boolean z4 = this.f16528i.f16519k;
                            T t3 = this.f16531l;
                            T t4 = t3;
                            if (t3 == null) {
                                try {
                                    t4 = simpleQueue2.poll();
                                    this.f16531l = t4;
                                } catch (Throwable th2) {
                                    Exceptions.m4428b(th2);
                                    m4067c();
                                    this.f16529j.m3456a(th2);
                                    this.f16525f.onError(this.f16529j.m3455b());
                                    return;
                                }
                            }
                            if (t4 == null) {
                                z2 = true;
                            }
                            if (z && z4 && z3 && z2) {
                                this.f16525f.onSuccess(Boolean.TRUE);
                                return;
                            } else if (z && z4 && z3 != z2) {
                                m4067c();
                                this.f16525f.onSuccess(Boolean.FALSE);
                                return;
                            } else if (!z3 && !z2) {
                                try {
                                    if (!this.f16526g.mo4360a(t2, t4)) {
                                        m4067c();
                                        this.f16525f.onSuccess(Boolean.FALSE);
                                        return;
                                    }
                                    this.f16530k = null;
                                    this.f16531l = null;
                                    this.f16527h.m4070c();
                                    this.f16528i.m4070c();
                                } catch (Throwable th3) {
                                    Exceptions.m4428b(th3);
                                    m4067c();
                                    this.f16529j.m3456a(th3);
                                    this.f16525f.onError(this.f16529j.m3455b());
                                    return;
                                }
                            }
                        }
                        this.f16527h.m4071b();
                        this.f16528i.m4071b();
                        return;
                    } else if (isDisposed()) {
                        this.f16527h.m4071b();
                        this.f16528i.m4071b();
                        return;
                    } else if (this.f16529j.get() != null) {
                        m4067c();
                        this.f16525f.onError(this.f16529j.m3455b());
                        return;
                    }
                    addAndGet = addAndGet(-i);
                    i = addAndGet;
                } while (addAndGet != 0);
            }
        }

        /* renamed from: c */
        void m4067c() {
            this.f16527h.m4072a();
            this.f16527h.m4071b();
            this.f16528i.m4072a();
            this.f16528i.m4071b();
        }

        /* renamed from: d */
        void m4066d(Publisher<? extends T> publisher, Publisher<? extends T> publisher2) {
            publisher.mo5c(this.f16527h);
            publisher2.mo5c(this.f16528i);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f16527h.m4072a();
            this.f16528i.m4072a();
            if (getAndIncrement() == 0) {
                this.f16527h.m4071b();
                this.f16528i.m4071b();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16527h.get() == SubscriptionHelper.CANCELLED;
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    public void mo3189k(SingleObserver<? super Boolean> singleObserver) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(singleObserver, this.f16524i, this.f16523h);
        singleObserver.onSubscribe(equalCoordinator);
        equalCoordinator.m4066d(this.f16521f, this.f16522g);
    }
}
