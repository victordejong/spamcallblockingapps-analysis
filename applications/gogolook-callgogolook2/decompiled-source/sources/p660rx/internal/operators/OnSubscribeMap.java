package p660rx.internal.operators;

import p660rx.Observable;
import p660rx.Producer;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
import p660rx.exceptions.OnErrorThrowable;
import p660rx.functions.Func1;
import p660rx.plugins.RxJavaHooks;
/* renamed from: rx.internal.operators.OnSubscribeMap */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeMap.class */
public final class OnSubscribeMap<T, R> implements Observable.OnSubscribe<R> {
    public final Observable<T> source;
    public final Func1<? super T, ? extends R> transformer;

    /* renamed from: rx.internal.operators.OnSubscribeMap$MapSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeMap$MapSubscriber.class */
    public static final class MapSubscriber<T, R> extends Subscriber<T> {
        public final Subscriber<? super R> actual;
        public boolean done;
        public final Func1<? super T, ? extends R> mapper;

        public MapSubscriber(Subscriber<? super R> subscriber, Func1<? super T, ? extends R> func1) {
            this.actual = subscriber;
            this.mapper = func1;
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            if (!this.done) {
                this.actual.onCompleted();
            }
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
                return;
            }
            this.done = true;
            this.actual.onError(th);
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            try {
                this.actual.onNext(this.mapper.call(t));
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                unsubscribe();
                onError(OnErrorThrowable.addValueAsLastCause(th, t));
            }
        }

        @Override // p660rx.Subscriber
        public void setProducer(Producer producer) {
            this.actual.setProducer(producer);
        }
    }

    public OnSubscribeMap(Observable<T> observable, Func1<? super T, ? extends R> func1) {
        this.source = observable;
        this.transformer = func1;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((Subscriber) ((Subscriber) obj));
    }

    public void call(Subscriber<? super R> subscriber) {
        MapSubscriber mapSubscriber = new MapSubscriber(subscriber, this.transformer);
        subscriber.add(mapSubscriber);
        this.source.unsafeSubscribe(mapSubscriber);
    }
}
