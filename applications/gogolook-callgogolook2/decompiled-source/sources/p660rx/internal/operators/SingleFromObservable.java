package p660rx.internal.operators;

import java.util.NoSuchElementException;
import p660rx.Observable;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscriber;
import p660rx.plugins.RxJavaHooks;
/* renamed from: rx.internal.operators.SingleFromObservable */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleFromObservable.class */
public final class SingleFromObservable<T> implements Single.OnSubscribe<T> {
    public final Observable.OnSubscribe<T> source;

    /* renamed from: rx.internal.operators.SingleFromObservable$WrapSingleIntoSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleFromObservable$WrapSingleIntoSubscriber.class */
    public static final class WrapSingleIntoSubscriber<T> extends Subscriber<T> {
        public final SingleSubscriber<? super T> actual;
        public int state;
        public T value;

        public WrapSingleIntoSubscriber(SingleSubscriber<? super T> singleSubscriber) {
            this.actual = singleSubscriber;
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            int i = this.state;
            if (i == 0) {
                this.actual.onError(new NoSuchElementException());
            } else if (i == 1) {
                this.state = 2;
                T t = this.value;
                this.value = null;
                this.actual.onSuccess(t);
            }
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            if (this.state == 2) {
                RxJavaHooks.onError(th);
                return;
            }
            this.value = null;
            this.actual.onError(th);
        }

        @Override // p660rx.Observer
        public void onNext(T t) {
            int i = this.state;
            if (i == 0) {
                this.state = 1;
                this.value = t;
            } else if (i == 1) {
                this.state = 2;
                this.actual.onError(new IndexOutOfBoundsException("The upstream produced more than one value"));
            }
        }
    }

    public SingleFromObservable(Observable.OnSubscribe<T> onSubscribe) {
        this.source = onSubscribe;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((SingleSubscriber) ((SingleSubscriber) obj));
    }

    public void call(SingleSubscriber<? super T> singleSubscriber) {
        WrapSingleIntoSubscriber wrapSingleIntoSubscriber = new WrapSingleIntoSubscriber(singleSubscriber);
        singleSubscriber.add(wrapSingleIntoSubscriber);
        this.source.call(wrapSingleIntoSubscriber);
    }
}
