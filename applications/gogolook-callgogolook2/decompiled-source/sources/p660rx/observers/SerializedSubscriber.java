package p660rx.observers;

import p660rx.Observer;
import p660rx.Subscriber;
/* renamed from: rx.observers.SerializedSubscriber */
/* loaded from: classes3-dex2jar.jar:rx/observers/SerializedSubscriber.class */
public class SerializedSubscriber<T> extends Subscriber<T> {

    /* renamed from: s */
    public final Observer<T> f33477s;

    public SerializedSubscriber(Subscriber<? super T> subscriber) {
        this(subscriber, true);
    }

    public SerializedSubscriber(Subscriber<? super T> subscriber, boolean z) {
        super(subscriber, z);
        this.f33477s = new SerializedObserver(subscriber);
    }

    @Override // p660rx.Observer
    public void onCompleted() {
        this.f33477s.onCompleted();
    }

    @Override // p660rx.Observer
    public void onError(Throwable th) {
        this.f33477s.onError(th);
    }

    @Override // p660rx.Observer
    public void onNext(T t) {
        this.f33477s.onNext(t);
    }
}
