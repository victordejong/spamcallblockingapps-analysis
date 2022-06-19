package com.google.common.util.concurrent;
/* loaded from: classes3-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$AtomicHelper.class */
public abstract class AbstractFuture$AtomicHelper {
    public AbstractFuture$AtomicHelper(AbstractFuture$1 abstractFuture$1) {
    }

    public abstract boolean casListeners(AbstractFuture<?> abstractFuture, AbstractFuture$Listener abstractFuture$Listener, AbstractFuture$Listener abstractFuture$Listener2);

    public abstract boolean casValue(AbstractFuture<?> abstractFuture, Object obj, Object obj2);

    public abstract boolean casWaiters(AbstractFuture<?> abstractFuture, AbstractFuture$Waiter abstractFuture$Waiter, AbstractFuture$Waiter abstractFuture$Waiter2);

    public abstract void putNext(AbstractFuture$Waiter abstractFuture$Waiter, AbstractFuture$Waiter abstractFuture$Waiter2);

    public abstract void putThread(AbstractFuture$Waiter abstractFuture$Waiter, Thread thread);
}
