package com.google.common.util.concurrent;
/* loaded from: classes3-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$Waiter.class */
public final class AbstractFuture$Waiter {
    public static final AbstractFuture$Waiter TOMBSTONE = new AbstractFuture$Waiter(false);
    public volatile AbstractFuture$Waiter next;
    public volatile Thread thread;

    public AbstractFuture$Waiter() {
        AbstractFuture.ATOMIC_HELPER.putThread(this, Thread.currentThread());
    }

    public AbstractFuture$Waiter(boolean z) {
    }
}
