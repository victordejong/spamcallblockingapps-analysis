package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Collection;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDistinct.class */
public final class FlowableDistinct<T, K> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Function<? super T, K> f15782h;

    /* renamed from: i */
    final Callable<? extends Collection<? super K>> f15783i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDistinct$DistinctSubscriber.class */
    static final class DistinctSubscriber<T, K> extends BasicFuseableSubscriber<T, T> {

        /* renamed from: k */
        final Collection<? super K> f15784k;

        /* renamed from: l */
        final Function<? super T, K> f15785l;

        DistinctSubscriber(Subscriber<? super T> subscriber, Function<? super T, K> function, Collection<? super K> collection) {
            super(subscriber);
            this.f15785l = function;
            this.f15784k = collection;
        }

        @Override // io.reactivex.internal.subscribers.BasicFuseableSubscriber, io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f15784k.clear();
            super.clear();
        }

        @Override // io.reactivex.internal.subscribers.BasicFuseableSubscriber, org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f19351i) {
                this.f19351i = true;
                this.f15784k.clear();
                this.f19348f.onComplete();
            }
        }

        @Override // io.reactivex.internal.subscribers.BasicFuseableSubscriber, org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f19351i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f19351i = true;
            this.f15784k.clear();
            this.f19348f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f19351i) {
                if (this.f19352j == 0) {
                    try {
                        K apply = this.f15785l.apply(t);
                        ObjectHelper.m4363e(apply, "The keySelector returned a null key");
                        if (this.f15784k.add(apply)) {
                            this.f19348f.onNext(t);
                        } else {
                            this.f19349g.request(1L);
                        }
                    } catch (Throwable th) {
                        m3488c(th);
                    }
                } else {
                    this.f19348f.onNext(null);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            T poll;
            while (true) {
                poll = this.f19350h.poll();
                if (poll == null) {
                    break;
                }
                Collection<? super K> collection = this.f15784k;
                Object obj = (K) this.f15785l.apply(poll);
                ObjectHelper.m4363e(obj, "The keySelector returned a null key");
                if (collection.add(obj)) {
                    break;
                } else if (this.f19352j == 2) {
                    this.f19349g.request(1L);
                }
            }
            return poll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m3487d(i);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        try {
            Object call = this.f15783i.call();
            ObjectHelper.m4363e(call, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
            this.f15411g.m4493v(new DistinctSubscriber(subscriber, this.f15782h, (Collection) call));
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}
