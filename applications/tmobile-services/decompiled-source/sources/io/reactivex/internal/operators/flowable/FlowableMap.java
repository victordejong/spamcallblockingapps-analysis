package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.annotations.Nullable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableSubscriber;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMap.class */
public final class FlowableMap<T, U> extends AbstractFlowableWithUpstream<T, U> {

    /* renamed from: h */
    final Function<? super T, ? extends U> f16146h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMap$MapConditionalSubscriber.class */
    static final class MapConditionalSubscriber<T, U> extends BasicFuseableConditionalSubscriber<T, U> {

        /* renamed from: k */
        final Function<? super T, ? extends U> f16147k;

        MapConditionalSubscriber(ConditionalSubscriber<? super U> conditionalSubscriber, Function<? super T, ? extends U> function) {
            super(conditionalSubscriber);
            this.f16147k = function;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f19346i) {
                if (this.f19347j != 0) {
                    this.f19343f.onNext(null);
                    return;
                }
                try {
                    Object apply = this.f16147k.apply(t);
                    ObjectHelper.m4363e(apply, "The mapper function returned a null value.");
                    this.f19343f.onNext(apply);
                } catch (Throwable th) {
                    m3492c(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        public boolean mo3605p(T t) {
            if (this.f19346i) {
                return false;
            }
            try {
                Object apply = this.f16147k.apply(t);
                ObjectHelper.m4363e(apply, "The mapper function returned a null value.");
                return this.f19343f.mo3605p(apply);
            } catch (Throwable th) {
                m3492c(th);
                return true;
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public U poll() throws Exception {
            U u;
            T poll = this.f19345h.poll();
            if (poll != null) {
                u = (U) this.f16147k.apply(poll);
                ObjectHelper.m4363e(u, "The mapper function returned a null value.");
            } else {
                u = null;
            }
            return u;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m3491d(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMap$MapSubscriber.class */
    static final class MapSubscriber<T, U> extends BasicFuseableSubscriber<T, U> {

        /* renamed from: k */
        final Function<? super T, ? extends U> f16148k;

        /* JADX INFO: Access modifiers changed from: package-private */
        public MapSubscriber(Subscriber<? super U> subscriber, Function<? super T, ? extends U> function) {
            super(subscriber);
            this.f16148k = function;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f19351i) {
                if (this.f19352j != 0) {
                    this.f19348f.onNext(null);
                    return;
                }
                try {
                    Object apply = this.f16148k.apply(t);
                    ObjectHelper.m4363e(apply, "The mapper function returned a null value.");
                    this.f19348f.onNext(apply);
                } catch (Throwable th) {
                    m3488c(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public U poll() throws Exception {
            U u;
            T poll = this.f19350h.poll();
            if (poll != null) {
                u = (U) this.f16148k.apply(poll);
                ObjectHelper.m4363e(u, "The mapper function returned a null value.");
            } else {
                u = null;
            }
            return u;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m3487d(i);
        }
    }

    public FlowableMap(Flowable<T> flowable, Function<? super T, ? extends U> function) {
        super(flowable);
        this.f16146h = function;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super U> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            this.f15411g.m4493v(new MapConditionalSubscriber((ConditionalSubscriber) subscriber, this.f16146h));
        } else {
            this.f15411g.m4493v(new MapSubscriber(subscriber, this.f16146h));
        }
    }
}
