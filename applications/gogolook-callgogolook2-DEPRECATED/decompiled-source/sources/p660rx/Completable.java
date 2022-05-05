package p660rx;

import p660rx.functions.Action1;
import p660rx.functions.Func1;
import p660rx.plugins.RxJavaHooks;
import p660rx.subscriptions.Subscriptions;
/* renamed from: rx.Completable */
/* loaded from: classes3-dex2jar.jar:rx/Completable.class */
public class Completable {

    /* renamed from: rx.Completable$OnSubscribe */
    /* loaded from: classes3-dex2jar.jar:rx/Completable$OnSubscribe.class */
    public interface OnSubscribe extends Action1<CompletableSubscriber> {
    }

    /* renamed from: rx.Completable$Operator */
    /* loaded from: classes3-dex2jar.jar:rx/Completable$Operator.class */
    public interface Operator extends Func1<CompletableSubscriber, CompletableSubscriber> {
    }

    static {
        new Completable(new OnSubscribe() { // from class: rx.Completable.1
            public void call(CompletableSubscriber completableSubscriber) {
                completableSubscriber.onSubscribe(Subscriptions.unsubscribed());
                completableSubscriber.onCompleted();
            }
        }, false);
        new Completable(new OnSubscribe() { // from class: rx.Completable.2
            public void call(CompletableSubscriber completableSubscriber) {
                completableSubscriber.onSubscribe(Subscriptions.unsubscribed());
            }
        }, false);
    }

    public Completable(OnSubscribe onSubscribe, boolean z) {
        if (z) {
            RxJavaHooks.onCreate(onSubscribe);
        }
    }
}
