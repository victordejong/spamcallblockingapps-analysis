package io.reactivex.internal.subscriptions;

import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/EmptySubscription.class */
public enum EmptySubscription implements AbstractC9658g<Object> {
    INSTANCE;

    public static void complete(AbstractC10433c<?> cVar) {
        cVar.onSubscribe(INSTANCE);
        cVar.onComplete();
    }

    public static void error(Throwable th, AbstractC10433c<?> cVar) {
        cVar.onSubscribe(INSTANCE);
        cVar.onError(th);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return true;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    public boolean offer(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public Object poll() {
        return null;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        SubscriptionHelper.validate(j);
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public int requestFusion(int i) {
        return i & 2;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "EmptySubscription";
    }
}
