package com.google.common.util.concurrent;
/* loaded from: classes3-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$Cancellation.class */
public final class AbstractFuture$Cancellation {
    public static final AbstractFuture$Cancellation CAUSELESS_CANCELLED;
    public static final AbstractFuture$Cancellation CAUSELESS_INTERRUPTED;
    public final Throwable cause;
    public final boolean wasInterrupted;

    static {
        if (AbstractFuture.GENERATE_CANCELLATION_CAUSES) {
            CAUSELESS_CANCELLED = null;
            CAUSELESS_INTERRUPTED = null;
            return;
        }
        CAUSELESS_CANCELLED = new AbstractFuture$Cancellation(false, null);
        CAUSELESS_INTERRUPTED = new AbstractFuture$Cancellation(true, null);
    }

    public AbstractFuture$Cancellation(boolean z, Throwable th) {
        this.wasInterrupted = z;
        this.cause = th;
    }
}
