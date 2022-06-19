package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:okio/AsyncTimeout.class */
public class AsyncTimeout extends Timeout {
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    static AsyncTimeout head;
    private boolean inQueue;
    private AsyncTimeout next;
    private long timeoutAt;

    /* loaded from: classes2-dex2jar.jar:okio/AsyncTimeout$Watchdog.class */
    public static final class Watchdog extends Thread {
        Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
            r0.timedOut();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L30
                okio.AsyncTimeout r0 = okio.AsyncTimeout.awaitTimeout()     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L30
                r4 = r0
                r0 = r4
                if (r0 != 0) goto L11
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                goto L0
            L11:
                r0 = r4
                okio.AsyncTimeout r1 = okio.AsyncTimeout.head     // Catch: java.lang.Throwable -> L2a
                if (r0 != r1) goto L20
                r0 = 0
                okio.AsyncTimeout.head = r0     // Catch: java.lang.Throwable -> L2a
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                return
            L20:
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                r0 = r4
                r0.timedOut()     // Catch: java.lang.InterruptedException -> L30
                goto L0
            L2a:
                r4 = move-exception
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                r0 = r4
                throw r0     // Catch: java.lang.InterruptedException -> L30
            L30:
                r4 = move-exception
                goto L0
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.AsyncTimeout.Watchdog.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    static AsyncTimeout awaitTimeout() {
        AsyncTimeout asyncTimeout = head.next;
        if (asyncTimeout == null) {
            long nanoTime = System.nanoTime();
            AsyncTimeout.class.wait(IDLE_TIMEOUT_MILLIS);
            AsyncTimeout asyncTimeout2 = null;
            if (head.next == null) {
                asyncTimeout2 = null;
                if (System.nanoTime() - nanoTime >= IDLE_TIMEOUT_NANOS) {
                    asyncTimeout2 = head;
                }
            }
            return asyncTimeout2;
        }
        long remainingNanos = asyncTimeout.remainingNanos(System.nanoTime());
        if (remainingNanos > 0) {
            long j = remainingNanos / 1000000;
            AsyncTimeout.class.wait(j, (int) (remainingNanos - (1000000 * j)));
            return null;
        }
        head.next = asyncTimeout.next;
        asyncTimeout.next = null;
        return asyncTimeout;
    }

    private static boolean cancelScheduledTimeout(AsyncTimeout asyncTimeout) {
        synchronized (AsyncTimeout.class) {
            try {
                AsyncTimeout asyncTimeout2 = head;
                while (true) {
                    AsyncTimeout asyncTimeout3 = asyncTimeout2;
                    if (asyncTimeout3 == null) {
                        return true;
                    }
                    AsyncTimeout asyncTimeout4 = asyncTimeout3.next;
                    if (asyncTimeout4 == asyncTimeout) {
                        asyncTimeout3.next = asyncTimeout.next;
                        asyncTimeout.next = null;
                        return false;
                    }
                    asyncTimeout2 = asyncTimeout4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private long remainingNanos(long j) {
        return this.timeoutAt - j;
    }

    private static void scheduleTimeout(AsyncTimeout asyncTimeout, long j, boolean z) {
        synchronized (AsyncTimeout.class) {
            try {
                if (head == null) {
                    head = new AsyncTimeout();
                    new Watchdog().start();
                }
                long nanoTime = System.nanoTime();
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i != 0 && z) {
                    asyncTimeout.timeoutAt = Math.min(j, asyncTimeout.deadlineNanoTime() - nanoTime) + nanoTime;
                } else if (i != 0) {
                    asyncTimeout.timeoutAt = j + nanoTime;
                } else if (!z) {
                    throw new AssertionError();
                } else {
                    asyncTimeout.timeoutAt = asyncTimeout.deadlineNanoTime();
                }
                long remainingNanos = asyncTimeout.remainingNanos(nanoTime);
                AsyncTimeout asyncTimeout2 = head;
                while (true) {
                    AsyncTimeout asyncTimeout3 = asyncTimeout2.next;
                    if (asyncTimeout3 == null || remainingNanos < asyncTimeout3.remainingNanos(nanoTime)) {
                        break;
                    }
                    asyncTimeout2 = asyncTimeout2.next;
                }
                asyncTimeout.next = asyncTimeout2.next;
                asyncTimeout2.next = asyncTimeout;
                if (asyncTimeout2 == head) {
                    AsyncTimeout.class.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void enter() {
        if (!this.inQueue) {
            long timeoutNanos = timeoutNanos();
            boolean hasDeadline = hasDeadline();
            if (timeoutNanos == 0 && !hasDeadline) {
                return;
            }
            this.inQueue = true;
            scheduleTimeout(this, timeoutNanos, hasDeadline);
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    final IOException exit(IOException iOException) {
        return !exit() ? iOException : newTimeoutException(iOException);
    }

    final void exit(boolean z) {
        if (!exit() || !z) {
            return;
        }
        throw newTimeoutException(null);
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return cancelScheduledTimeout(this);
    }

    protected IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final Sink sink(final Sink sink) {
        return new Sink() { // from class: okio.AsyncTimeout.1
            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                AsyncTimeout.this.enter();
                try {
                    try {
                        sink.close();
                        AsyncTimeout.this.exit(true);
                    } catch (IOException e) {
                        throw AsyncTimeout.this.exit(e);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() {
                AsyncTimeout.this.enter();
                try {
                    try {
                        sink.flush();
                        AsyncTimeout.this.exit(true);
                    } catch (IOException e) {
                        throw AsyncTimeout.this.exit(e);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.Sink
            public Timeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.sink(" + sink + ")";
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v22, types: [long] */
            /* JADX WARN: Type inference failed for: r0v26, types: [long] */
            /* JADX WARN: Type inference failed for: r9v1 */
            /* JADX WARN: Type inference failed for: r9v2 */
            /* JADX WARN: Type inference failed for: r9v3 */
            @Override // okio.Sink
            public void write(Buffer buffer, long j) {
                char c;
                Util.checkOffsetAndCount(buffer.size, 0L, j);
                ?? r9 = j;
                while (true) {
                    char c2 = 0;
                    if (r9 > 0) {
                        Segment segment = buffer.head;
                        while (true) {
                            Segment segment2 = segment;
                            c = c2;
                            if (c2 >= 65536) {
                                break;
                            }
                            c2 += segment2.limit - segment2.pos;
                            if (c2 >= r9) {
                                c = r9;
                                break;
                            }
                            segment = segment2.next;
                        }
                        AsyncTimeout.this.enter();
                        try {
                            try {
                                sink.write(buffer, c);
                                r9 -= c;
                                AsyncTimeout.this.exit(true);
                            } catch (IOException e) {
                                throw AsyncTimeout.this.exit(e);
                            }
                        } catch (Throwable th) {
                            AsyncTimeout.this.exit(false);
                            throw th;
                        }
                    } else {
                        return;
                    }
                }
            }
        };
    }

    public final Source source(final Source source) {
        return new Source() { // from class: okio.AsyncTimeout.2
            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    try {
                        source.close();
                        AsyncTimeout.this.exit(true);
                    } catch (IOException e) {
                        throw AsyncTimeout.this.exit(e);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.Source
            public long read(Buffer buffer, long j) {
                AsyncTimeout.this.enter();
                try {
                    try {
                        long read = source.read(buffer, j);
                        AsyncTimeout.this.exit(true);
                        return read;
                    } catch (IOException e) {
                        throw AsyncTimeout.this.exit(e);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.Source
            public Timeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.source(" + source + ")";
            }
        };
    }

    protected void timedOut() {
    }
}
