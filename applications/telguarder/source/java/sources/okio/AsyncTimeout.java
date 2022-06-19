package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018�� \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0001J\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\u0004J\u0012\u0010\u000e\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u00020\fH\u0014J%\u0010\u0016\u001a\u0002H\u0017\"\u0004\b��\u0010\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00170\u0019H\u0086\bø\u0001��¢\u0006\u0002\u0010\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010��X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001d"}, m400d2 = {"Lokio/AsyncTimeout;", "Lokio/Timeout;", "()V", "inQueue", "", "next", "timeoutAt", "", "access$newTimeoutException", "Ljava/io/IOException;", "cause", "enter", "", "exit", "newTimeoutException", "remainingNanos", "now", "sink", "Lokio/Sink;", "source", "Lokio/Source;", "timedOut", "withTimeout", "T", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Companion", "Watchdog", "okio"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/AsyncTimeout.class */
public class AsyncTimeout extends Timeout {
    public static final Companion Companion = new Companion(null);
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static AsyncTimeout head;
    private boolean inQueue;
    private AsyncTimeout next;
    private long timeoutAt;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\u0004\u0018\u00010\tH��¢\u0006\u0002\b\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0013"}, m400d2 = {"Lokio/AsyncTimeout$Companion;", "", "()V", "IDLE_TIMEOUT_MILLIS", "", "IDLE_TIMEOUT_NANOS", "TIMEOUT_WRITE_SIZE", "", "head", "Lokio/AsyncTimeout;", "awaitTimeout", "awaitTimeout$okio", "cancelScheduledTimeout", "", "node", "scheduleTimeout", "", "timeoutNanos", "hasDeadline", "okio"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:okio/AsyncTimeout$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean cancelScheduledTimeout(AsyncTimeout asyncTimeout) {
            synchronized (AsyncTimeout.class) {
                try {
                    for (AsyncTimeout asyncTimeout2 = AsyncTimeout.head; asyncTimeout2 != null; asyncTimeout2 = asyncTimeout2.next) {
                        if (asyncTimeout2.next == asyncTimeout) {
                            asyncTimeout2.next = asyncTimeout.next;
                            asyncTimeout.next = null;
                            return false;
                        }
                    }
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void scheduleTimeout(AsyncTimeout asyncTimeout, long j, boolean z) {
            synchronized (AsyncTimeout.class) {
                try {
                    if (AsyncTimeout.head == null) {
                        AsyncTimeout.head = new AsyncTimeout();
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
                    AsyncTimeout asyncTimeout2 = AsyncTimeout.head;
                    Intrinsics.checkNotNull(asyncTimeout2);
                    while (asyncTimeout2.next != null) {
                        AsyncTimeout asyncTimeout3 = asyncTimeout2.next;
                        Intrinsics.checkNotNull(asyncTimeout3);
                        if (remainingNanos < asyncTimeout3.remainingNanos(nanoTime)) {
                            break;
                        }
                        asyncTimeout2 = asyncTimeout2.next;
                        Intrinsics.checkNotNull(asyncTimeout2);
                    }
                    asyncTimeout.next = asyncTimeout2.next;
                    asyncTimeout2.next = asyncTimeout;
                    if (asyncTimeout2 == AsyncTimeout.head) {
                        AsyncTimeout.class.notify();
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final AsyncTimeout awaitTimeout$okio() throws InterruptedException {
            AsyncTimeout asyncTimeout = AsyncTimeout.head;
            Intrinsics.checkNotNull(asyncTimeout);
            AsyncTimeout asyncTimeout2 = asyncTimeout.next;
            if (asyncTimeout2 == null) {
                long nanoTime = System.nanoTime();
                AsyncTimeout.class.wait(AsyncTimeout.IDLE_TIMEOUT_MILLIS);
                AsyncTimeout asyncTimeout3 = AsyncTimeout.head;
                Intrinsics.checkNotNull(asyncTimeout3);
                AsyncTimeout asyncTimeout4 = null;
                if (asyncTimeout3.next == null) {
                    asyncTimeout4 = null;
                    if (System.nanoTime() - nanoTime >= AsyncTimeout.IDLE_TIMEOUT_NANOS) {
                        asyncTimeout4 = AsyncTimeout.head;
                    }
                }
                return asyncTimeout4;
            }
            long remainingNanos = asyncTimeout2.remainingNanos(System.nanoTime());
            if (remainingNanos > 0) {
                long j = remainingNanos / 1000000;
                AsyncTimeout.class.wait(j, (int) (remainingNanos - (1000000 * j)));
                return null;
            }
            AsyncTimeout asyncTimeout5 = AsyncTimeout.head;
            Intrinsics.checkNotNull(asyncTimeout5);
            asyncTimeout5.next = asyncTimeout2.next;
            asyncTimeout2.next = null;
            return asyncTimeout2;
        }
    }

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b\u0002\u0018��2\u00020\u0001B\u0007\b��¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, m400d2 = {"Lokio/AsyncTimeout$Watchdog;", "Ljava/lang/Thread;", "()V", "run", "", "okio"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:okio/AsyncTimeout$Watchdog.class */
    public static final class Watchdog extends Thread {
        public Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            AsyncTimeout awaitTimeout$okio;
            while (true) {
                try {
                    AsyncTimeout asyncTimeout = null;
                    synchronized (AsyncTimeout.class) {
                        awaitTimeout$okio = AsyncTimeout.Companion.awaitTimeout$okio();
                        if (awaitTimeout$okio == AsyncTimeout.head) {
                            AsyncTimeout.head = null;
                            return;
                        }
                        Unit unit = Unit.INSTANCE;
                    }
                    if (awaitTimeout$okio != null) {
                        awaitTimeout$okio.timedOut();
                    }
                } catch (InterruptedException e) {
                }
            }
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    public final long remainingNanos(long j) {
        return this.timeoutAt - j;
    }

    public final IOException access$newTimeoutException(IOException iOException) {
        return newTimeoutException(iOException);
    }

    public final void enter() {
        if (!this.inQueue) {
            long timeoutNanos = timeoutNanos();
            boolean hasDeadline = hasDeadline();
            if (timeoutNanos == 0 && !hasDeadline) {
                return;
            }
            this.inQueue = true;
            Companion.scheduleTimeout(this, timeoutNanos, hasDeadline);
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit".toString());
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return Companion.cancelScheduledTimeout(this);
    }

    protected IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final Sink sink(final Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return new Sink() { // from class: okio.AsyncTimeout$sink$1
            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                asyncTimeout.enter();
                try {
                    try {
                        sink.close();
                        Unit unit = Unit.INSTANCE;
                        if (asyncTimeout.exit()) {
                            throw asyncTimeout.access$newTimeoutException(null);
                        }
                    } catch (IOException e) {
                        e = e;
                        if (asyncTimeout.exit()) {
                            e = asyncTimeout.access$newTimeoutException(e);
                        }
                        throw e;
                    }
                } catch (Throwable th) {
                    asyncTimeout.exit();
                    throw th;
                }
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() {
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                asyncTimeout.enter();
                try {
                    try {
                        sink.flush();
                        Unit unit = Unit.INSTANCE;
                        if (asyncTimeout.exit()) {
                            throw asyncTimeout.access$newTimeoutException(null);
                        }
                    } catch (IOException e) {
                        e = e;
                        if (asyncTimeout.exit()) {
                            e = asyncTimeout.access$newTimeoutException(e);
                        }
                        throw e;
                    }
                } catch (Throwable th) {
                    asyncTimeout.exit();
                    throw th;
                }
            }

            @Override // okio.Sink
            public AsyncTimeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.sink(" + sink + ')';
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v34, types: [long] */
            /* JADX WARN: Type inference failed for: r0v36, types: [long] */
            /* JADX WARN: Type inference failed for: r9v1 */
            /* JADX WARN: Type inference failed for: r9v2 */
            /* JADX WARN: Type inference failed for: r9v3 */
            @Override // okio.Sink
            public void write(Buffer source, long j) {
                char c;
                Intrinsics.checkNotNullParameter(source, "source");
                _Util.checkOffsetAndCount(source.size(), 0L, j);
                ?? r9 = j;
                while (true) {
                    char c2 = 0;
                    if (r9 > 0) {
                        Segment segment = source.head;
                        Intrinsics.checkNotNull(segment);
                        while (true) {
                            c = c2;
                            if (c2 >= 65536) {
                                break;
                            }
                            c2 += segment.limit - segment.pos;
                            if (c2 >= r9) {
                                c = r9;
                                break;
                            } else {
                                segment = segment.next;
                                Intrinsics.checkNotNull(segment);
                            }
                        }
                        AsyncTimeout asyncTimeout = AsyncTimeout.this;
                        asyncTimeout.enter();
                        try {
                            try {
                                sink.write(source, c);
                                Unit unit = Unit.INSTANCE;
                                if (asyncTimeout.exit()) {
                                    throw asyncTimeout.access$newTimeoutException(null);
                                }
                                r9 -= c;
                            } catch (IOException e) {
                                e = e;
                                if (asyncTimeout.exit()) {
                                    e = asyncTimeout.access$newTimeoutException(e);
                                }
                                throw e;
                            }
                        } catch (Throwable th) {
                            asyncTimeout.exit();
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
        Intrinsics.checkNotNullParameter(source, "source");
        return new Source() { // from class: okio.AsyncTimeout$source$1
            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                asyncTimeout.enter();
                try {
                    try {
                        source.close();
                        Unit unit = Unit.INSTANCE;
                        if (asyncTimeout.exit()) {
                            throw asyncTimeout.access$newTimeoutException(null);
                        }
                    } catch (IOException e) {
                        e = e;
                        if (asyncTimeout.exit()) {
                            e = asyncTimeout.access$newTimeoutException(e);
                        }
                        throw e;
                    }
                } catch (Throwable th) {
                    asyncTimeout.exit();
                    throw th;
                }
            }

            @Override // okio.Source
            public long read(Buffer sink, long j) {
                Intrinsics.checkNotNullParameter(sink, "sink");
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                asyncTimeout.enter();
                try {
                    try {
                        long read = source.read(sink, j);
                        if (asyncTimeout.exit()) {
                            throw asyncTimeout.access$newTimeoutException(null);
                        }
                        return read;
                    } catch (IOException e) {
                        e = e;
                        if (asyncTimeout.exit()) {
                            e = asyncTimeout.access$newTimeoutException(e);
                        }
                        throw e;
                    }
                } catch (Throwable th) {
                    asyncTimeout.exit();
                    throw th;
                }
            }

            @Override // okio.Source
            public AsyncTimeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.source(" + source + ')';
            }
        };
    }

    protected void timedOut() {
    }

    /* JADX WARN: Finally extract failed */
    public final <T> T withTimeout(Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        enter();
        try {
            try {
                T invoke = block.invoke();
                InlineMarker.finallyStart(1);
                if (exit()) {
                    throw access$newTimeoutException(null);
                }
                InlineMarker.finallyEnd(1);
                return invoke;
            } catch (IOException e) {
                e = e;
                if (exit()) {
                    e = access$newTimeoutException(e);
                }
                throw e;
            }
        } catch (Throwable th) {
            InlineMarker.finallyStart(1);
            exit();
            InlineMarker.finallyEnd(1);
            throw th;
        }
    }
}
