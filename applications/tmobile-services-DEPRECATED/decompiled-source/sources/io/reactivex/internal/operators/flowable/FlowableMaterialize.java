package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.Notification;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMaterialize.class */
public final class FlowableMaterialize<T> extends AbstractFlowableWithUpstream<T, Notification<T>> {

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMaterialize$MaterializeSubscriber.class */
    static final class MaterializeSubscriber<T> extends SinglePostCompleteSubscriber<T, Notification<T>> {
        private static final long serialVersionUID = -3740826063558713822L;

        MaterializeSubscriber(Subscriber<? super Notification<T>> subscriber) {
            super(subscriber);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: c */
        public void mo3472b(Notification<T> notification) {
            if (notification.m4478g()) {
                RxJavaPlugins.m3354t(notification.m4481d());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            m3473a(Notification.m4484a());
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            m3473a(Notification.m4483b(th));
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f19394i++;
            this.f19391f.onNext(Notification.m4482c(t));
        }
    }

    public FlowableMaterialize(Flowable<T> flowable) {
        super(flowable);
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super Notification<T>> subscriber) {
        this.f15411g.m4493v(new MaterializeSubscriber(subscriber));
    }
}
