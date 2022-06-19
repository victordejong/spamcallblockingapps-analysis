package com.google.common.util.concurrent;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/common/util/concurrent/AbstractFuture$Failure.class */
public final class AbstractFuture$Failure {
    public final Throwable exception;

    static {
        Objects.requireNonNull(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.common.util.concurrent.AbstractFuture$Failure.1
            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });
    }

    public AbstractFuture$Failure(Throwable th) {
        Objects.requireNonNull(th);
        this.exception = th;
    }
}
