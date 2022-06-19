package com.facebook.bolts;

import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/facebook/bolts/CancellationTokenSource.class */
public class CancellationTokenSource implements Closeable {
    private boolean cancellationRequested;
    private boolean closed;
    private ScheduledFuture<?> scheduledCancellation;
    private final Object lock = new Object();
    private final List<CancellationTokenRegistration> registrations = new ArrayList();
    private final ScheduledExecutorService executor = BoltsExecutors.scheduled();

    private void cancelAfter(long j, TimeUnit timeUnit) {
        int i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
        if (i >= 0) {
            if (j == 0) {
                cancel();
                return;
            }
            synchronized (this.lock) {
                if (this.cancellationRequested) {
                    return;
                }
                cancelScheduledCancellation();
                if (i != 0) {
                    this.scheduledCancellation = this.executor.schedule(new Runnable() { // from class: com.facebook.bolts.CancellationTokenSource.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (CrashShieldHandler.isObjectCrashing(this)) {
                                return;
                            }
                            try {
                                synchronized (CancellationTokenSource.this.lock) {
                                    CancellationTokenSource.this.scheduledCancellation = null;
                                }
                                CancellationTokenSource.this.cancel();
                            } catch (Throwable th) {
                                CrashShieldHandler.handleThrowable(th, this);
                            }
                        }
                    }, j, timeUnit);
                }
                return;
            }
        }
        throw new IllegalArgumentException("Delay must be >= -1");
    }

    private void cancelScheduledCancellation() {
        ScheduledFuture<?> scheduledFuture = this.scheduledCancellation;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.scheduledCancellation = null;
        }
    }

    private void notifyListeners(List<CancellationTokenRegistration> list) {
        for (CancellationTokenRegistration cancellationTokenRegistration : list) {
            cancellationTokenRegistration.runAction();
        }
    }

    private void throwIfClosed() {
        if (!this.closed) {
            return;
        }
        throw new IllegalStateException("Object already closed");
    }

    public void cancel() {
        synchronized (this.lock) {
            throwIfClosed();
            if (this.cancellationRequested) {
                return;
            }
            cancelScheduledCancellation();
            this.cancellationRequested = true;
            notifyListeners(new ArrayList(this.registrations));
        }
    }

    public void cancelAfter(long j) {
        cancelAfter(j, TimeUnit.MILLISECONDS);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            cancelScheduledCancellation();
            for (CancellationTokenRegistration cancellationTokenRegistration : this.registrations) {
                cancellationTokenRegistration.close();
            }
            this.registrations.clear();
            this.closed = true;
        }
    }

    public CancellationToken getToken() {
        CancellationToken cancellationToken;
        synchronized (this.lock) {
            throwIfClosed();
            cancellationToken = new CancellationToken(this);
        }
        return cancellationToken;
    }

    public boolean isCancellationRequested() {
        boolean z;
        synchronized (this.lock) {
            throwIfClosed();
            z = this.cancellationRequested;
        }
        return z;
    }

    public CancellationTokenRegistration register(Runnable runnable) {
        CancellationTokenRegistration cancellationTokenRegistration;
        synchronized (this.lock) {
            throwIfClosed();
            cancellationTokenRegistration = new CancellationTokenRegistration(this, runnable);
            if (this.cancellationRequested) {
                cancellationTokenRegistration.runAction();
            } else {
                this.registrations.add(cancellationTokenRegistration);
            }
        }
        return cancellationTokenRegistration;
    }

    public void throwIfCancellationRequested() throws CancellationException {
        synchronized (this.lock) {
            throwIfClosed();
            if (this.cancellationRequested) {
                throw new CancellationException();
            }
        }
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(isCancellationRequested()));
    }

    public void unregister(CancellationTokenRegistration cancellationTokenRegistration) {
        synchronized (this.lock) {
            throwIfClosed();
            this.registrations.remove(cancellationTokenRegistration);
        }
    }
}
