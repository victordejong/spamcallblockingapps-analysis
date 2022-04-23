package io.reactivex.internal.disposables;

import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p543b0.p546c.AbstractC9656e;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/disposables/EmptyDisposable.class */
public enum EmptyDisposable implements AbstractC9656e<Object> {
    INSTANCE,
    NEVER;

    public static void complete(AbstractC9647b bVar) {
        bVar.onSubscribe(INSTANCE);
        bVar.onComplete();
    }

    public static void complete(AbstractC9836k<?> kVar) {
        kVar.onSubscribe(INSTANCE);
        kVar.onComplete();
    }

    public static void complete(AbstractC9844r<?> rVar) {
        rVar.onSubscribe(INSTANCE);
        rVar.onComplete();
    }

    public static void error(Throwable th, AbstractC9647b bVar) {
        bVar.onSubscribe(INSTANCE);
        bVar.onError(th);
    }

    public static void error(Throwable th, AbstractC9836k<?> kVar) {
        kVar.onSubscribe(INSTANCE);
        kVar.onError(th);
    }

    public static void error(Throwable th, AbstractC9844r<?> rVar) {
        rVar.onSubscribe(INSTANCE);
        rVar.onError(th);
    }

    public static void error(Throwable th, AbstractC9851u<?> uVar) {
        uVar.onSubscribe(INSTANCE);
        uVar.onError(th);
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this == INSTANCE;
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
    public Object poll() throws Exception {
        return null;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public int requestFusion(int i) {
        return i & 2;
    }
}
