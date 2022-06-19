package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$Listener.class */
public final class AbstractFuture$Listener {
    public static final AbstractFuture$Listener TOMBSTONE = new AbstractFuture$Listener(null, null);
    public final Executor executor;
    public AbstractFuture$Listener next;
    public final Runnable task;

    public AbstractFuture$Listener(Runnable runnable, Executor executor) {
        this.task = runnable;
        this.executor = executor;
    }
}
