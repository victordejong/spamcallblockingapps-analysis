package com.facebook.bolts;

import java.io.Closeable;
/* loaded from: classes-dex2jar.jar:com/facebook/bolts/CancellationTokenRegistration.class */
public class CancellationTokenRegistration implements Closeable {
    private Runnable action;
    private boolean closed;
    private final Object lock = new Object();
    private CancellationTokenSource tokenSource;

    public CancellationTokenRegistration(CancellationTokenSource cancellationTokenSource, Runnable runnable) {
        this.tokenSource = cancellationTokenSource;
        this.action = runnable;
    }

    private void throwIfClosed() {
        if (!this.closed) {
            return;
        }
        throw new IllegalStateException("Object already closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            this.tokenSource.unregister(this);
            this.tokenSource = null;
            this.action = null;
        }
    }

    public void runAction() {
        synchronized (this.lock) {
            throwIfClosed();
            this.action.run();
            close();
        }
    }
}
