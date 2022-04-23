package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import java.util.concurrent.Callable;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMapNotification$MapNotificationSubscriber.class */
public final class FlowableMapNotification$MapNotificationSubscriber<T, R> extends SinglePostCompleteSubscriber<T, R> {
    public static final long serialVersionUID = 2757120512858778108L;
    public final Callable<? extends R> onCompleteSupplier;
    public final AbstractC9645h<? super Throwable, ? extends R> onErrorMapper;
    public final AbstractC9645h<? super T, ? extends R> onNextMapper;

    public FlowableMapNotification$MapNotificationSubscriber(AbstractC10433c<? super R> cVar, AbstractC9645h<? super T, ? extends R> hVar, AbstractC9645h<? super Throwable, ? extends R> hVar2, Callable<? extends R> callable) {
        super(cVar);
        this.onNextMapper = hVar;
        this.onErrorMapper = hVar2;
        this.onCompleteSupplier = callable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        try {
            Object call = this.onCompleteSupplier.call();
            C9650a.m2095a(call, "The onComplete publisher returned is null");
            complete(call);
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.actual.onError(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        try {
            Object apply = this.onErrorMapper.apply(th);
            C9650a.m2095a(apply, "The onError publisher returned is null");
            complete(apply);
        } catch (Throwable th2) {
            C9863a.m1822b(th2);
            this.actual.onError(new CompositeException(th, th2));
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        try {
            Object apply = this.onNextMapper.apply(t);
            C9650a.m2095a(apply, "The onNext publisher returned is null");
            this.produced++;
            this.actual.onNext(apply);
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.actual.onError(th);
        }
    }
}
