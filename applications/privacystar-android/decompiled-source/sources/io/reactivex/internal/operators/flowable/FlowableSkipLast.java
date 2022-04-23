package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipLast.class */
public final class FlowableSkipLast<T> extends AbstractFlowableWithUpstream<T, T> {
    final int skip;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber.class */
    static final class SkipLastSubscriber<T> extends ArrayDeque<T> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -3807491841935125653L;
        final Subscriber<? super T> actual;

        /* renamed from: s */
        Subscription f468s;
        final int skip;

        SkipLastSubscriber(Subscriber<? super T> subscriber, int i) {
            super(i);
            this.actual = subscriber;
            this.skip = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f468s.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.actual.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.skip == size()) {
                this.actual.onNext((T) poll());
            } else {
                this.f468s.request(1L);
            }
            offer(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f468s, subscription)) {
                this.f468s = subscription;
                this.actual.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f468s.request(j);
        }
    }

    public FlowableSkipLast(Flowable<T> flowable, int i) {
        super(flowable);
        this.skip = i;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super T> subscriber) {
        this.source.subscribe((FlowableSubscriber) new SkipLastSubscriber(subscriber, this.skip));
    }
}
