package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMapNotification.class */
public final class FlowableMapNotification<T, R> extends AbstractFlowableWithUpstream<T, R> {

    /* renamed from: h */
    final Function<? super T, ? extends R> f16149h;

    /* renamed from: i */
    final Function<? super Throwable, ? extends R> f16150i;

    /* renamed from: j */
    final Callable<? extends R> f16151j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber.class */
    static final class MapNotificationSubscriber<T, R> extends SinglePostCompleteSubscriber<T, R> {
        private static final long serialVersionUID = 2757120512858778108L;

        /* renamed from: j */
        final Function<? super T, ? extends R> f16152j;

        /* renamed from: k */
        final Function<? super Throwable, ? extends R> f16153k;

        /* renamed from: l */
        final Callable<? extends R> f16154l;

        MapNotificationSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends R> function, Function<? super Throwable, ? extends R> function2, Callable<? extends R> callable) {
            super(subscriber);
            this.f16152j = function;
            this.f16153k = function2;
            this.f16154l = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            try {
                Object call = this.f16154l.call();
                ObjectHelper.m4363e(call, "The onComplete publisher returned is null");
                m3473a(call);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f19391f.onError(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            try {
                Object apply = this.f16153k.apply(th);
                ObjectHelper.m4363e(apply, "The onError publisher returned is null");
                m3473a(apply);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f19391f.onError(new CompositeException(th, th2));
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            try {
                Object apply = this.f16152j.apply(t);
                ObjectHelper.m4363e(apply, "The onNext publisher returned is null");
                this.f19394i++;
                this.f19391f.onNext(apply);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f19391f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f15411g.m4493v(new MapNotificationSubscriber(subscriber, this.f16149h, this.f16150i, this.f16151j));
    }
}
