package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\b\u0016\u0018�� $2\u00020\u0001:\u0002$%B\u0007¢\u0006\u0004\b#\u0010\bJ\u0019\u0010\u0004\u001a\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\f\u001a\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\f\u0010\u0005J\u0017\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0017\u0010\bJ'\u0010\u001b\u001a\u00028��\"\u0004\b��\u0010\u00182\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028��0\u0019H\u0086\bø\u0001��¢\u0006\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010\u001f\u001a\u0004\u0018\u00010��8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006&"}, d2 = {"Lokio/AsyncTimeout;", "Lokio/Timeout;", "Ljava/io/IOException;", "cause", "access$newTimeoutException", "(Ljava/io/IOException;)Ljava/io/IOException;", "", "enter", "()V", "", "exit", "()Z", "newTimeoutException", "", "now", "remainingNanos", "(J)J", "Lokio/Sink;", "sink", "(Lokio/Sink;)Lokio/Sink;", "Lokio/Source;", "source", "(Lokio/Source;)Lokio/Source;", "timedOut", "T", "Lkotlin/Function0;", "block", "withTimeout", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "inQueue", "Z", "next", "Lokio/AsyncTimeout;", "timeoutAt", "J", "<init>", "Companion", "Watchdog", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/AsyncTimeout.class */
public class AsyncTimeout extends Timeout {
    public static final Companion Companion = new Companion(null);
    private static final long IDLE_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(60);
    private static final long IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(IDLE_TIMEOUT_MILLIS);
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static AsyncTimeout head;
    private boolean inQueue;
    private AsyncTimeout next;
    private long timeoutAt;

    @Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u0004\u001a\u0004\u0018\u00010\u0001H��¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0007\u0010\bJ'\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lokio/AsyncTimeout$Companion;", "Lokio/AsyncTimeout;", "awaitTimeout$okio", "()Lokio/AsyncTimeout;", "awaitTimeout", "node", "", "cancelScheduledTimeout", "(Lokio/AsyncTimeout;)Z", "", "timeoutNanos", "hasDeadline", "", "scheduleTimeout", "(Lokio/AsyncTimeout;JZ)V", "IDLE_TIMEOUT_MILLIS", "J", "IDLE_TIMEOUT_NANOS", "", "TIMEOUT_WRITE_SIZE", "I", "head", "Lokio/AsyncTimeout;", "<init>", "()V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okio/AsyncTimeout$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public final boolean m227d(AsyncTimeout asyncTimeout) {
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

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e */
        public final void m226e(AsyncTimeout asyncTimeout, long j, boolean z) {
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
                    } else if (z) {
                        asyncTimeout.timeoutAt = asyncTimeout.deadlineNanoTime();
                    } else {
                        throw new AssertionError();
                    }
                    long remainingNanos = asyncTimeout.remainingNanos(nanoTime);
                    AsyncTimeout asyncTimeout2 = AsyncTimeout.head;
                    Intrinsics.m1832c(asyncTimeout2);
                    while (asyncTimeout2.next != null) {
                        AsyncTimeout asyncTimeout3 = asyncTimeout2.next;
                        Intrinsics.m1832c(asyncTimeout3);
                        if (remainingNanos < asyncTimeout3.remainingNanos(nanoTime)) {
                            break;
                        }
                        asyncTimeout2 = asyncTimeout2.next;
                        Intrinsics.m1832c(asyncTimeout2);
                    }
                    asyncTimeout.next = asyncTimeout2.next;
                    asyncTimeout2.next = asyncTimeout;
                    if (asyncTimeout2 == AsyncTimeout.head) {
                        AsyncTimeout.class.notify();
                    }
                    Unit unit = Unit.f20447a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Nullable
        /* renamed from: c */
        public final AsyncTimeout m228c() throws InterruptedException {
            AsyncTimeout asyncTimeout = AsyncTimeout.head;
            Intrinsics.m1832c(asyncTimeout);
            AsyncTimeout asyncTimeout2 = asyncTimeout.next;
            if (asyncTimeout2 == null) {
                long nanoTime = System.nanoTime();
                AsyncTimeout.class.wait(AsyncTimeout.IDLE_TIMEOUT_MILLIS);
                AsyncTimeout asyncTimeout3 = AsyncTimeout.head;
                Intrinsics.m1832c(asyncTimeout3);
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
            Intrinsics.m1832c(asyncTimeout5);
            asyncTimeout5.next = asyncTimeout2.next;
            asyncTimeout2.next = null;
            return asyncTimeout2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018��2\u00020\u0001B\t\b��¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lokio/AsyncTimeout$Watchdog;", "Ljava/lang/Thread;", "", "run", "()V", "<init>", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okio/AsyncTimeout$Watchdog.class */
    public static final class Watchdog extends Thread {
        public Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            AsyncTimeout c;
            while (true) {
                try {
                    synchronized (AsyncTimeout.class) {
                        c = AsyncTimeout.Companion.m228c();
                        if (c == AsyncTimeout.head) {
                            AsyncTimeout.head = null;
                            return;
                        }
                        Unit unit = Unit.f20447a;
                    }
                    if (c != null) {
                        c.timedOut();
                    }
                } catch (InterruptedException e) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long remainingNanos(long j) {
        return this.timeoutAt - j;
    }

    @PublishedApi
    @NotNull
    public final IOException access$newTimeoutException(@Nullable IOException iOException) {
        return newTimeoutException(iOException);
    }

    public final void enter() {
        if (!this.inQueue) {
            long timeoutNanos = timeoutNanos();
            boolean hasDeadline = hasDeadline();
            if (timeoutNanos != 0 || hasDeadline) {
                this.inQueue = true;
                Companion.m226e(this, timeoutNanos, hasDeadline);
                return;
            }
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit".toString());
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return Companion.m227d(this);
    }

    @NotNull
    protected IOException newTimeoutException(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    @NotNull
    public final Sink sink(@NotNull final Sink sink) {
        Intrinsics.m1830e(sink, "sink");
        return new Sink() { // from class: okio.AsyncTimeout$sink$1
            @NotNull
            /* renamed from: a */
            public AsyncTimeout timeout() {
                return AsyncTimeout.this;
            }

            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                asyncTimeout.enter();
                try {
                    try {
                        sink.close();
                        Unit unit = Unit.f20447a;
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
                        Unit unit = Unit.f20447a;
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

            @NotNull
            public String toString() {
                return "AsyncTimeout.sink(" + sink + ')';
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r11v0 */
            /* JADX WARN: Type inference failed for: r11v1, types: [long] */
            /* JADX WARN: Type inference failed for: r11v3 */
            /* JADX WARN: Type inference failed for: r9v1, types: [long] */
            /* JADX WARN: Type inference failed for: r9v3 */
            /* JADX WARN: Type inference failed for: r9v4 */
            /* JADX WARN: Unknown variable types count: 2 */
            @Override // okio.Sink
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void write(@org.jetbrains.annotations.NotNull okio.Buffer r8, long r9) {
                /*
                    r7 = this;
                    r0 = r8
                    java.lang.String r1 = "source"
                    kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
                    r0 = r8
                    long r0 = r0.m188v0()
                    r1 = 0
                    r2 = r9
                    okio._Util.m23b(r0, r1, r2)
                L_0x000f:
                    r0 = 0
                    r11 = r0
                    r0 = r9
                    r1 = 0
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 <= 0) goto L_0x00b1
                    r0 = r8
                    okio.Segment r0 = r0.f24125f
                    r13 = r0
                    r0 = r13
                    kotlin.jvm.internal.Intrinsics.m1832c(r0)
                L_0x0023:
                    r0 = r11
                    r14 = r0
                    r0 = r11
                    r1 = 65536(0x10000, float:9.18355E-41)
                    long r1 = (long) r1
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 >= 0) goto L_0x005d
                    r0 = r11
                    r1 = r13
                    int r1 = r1.f24198c
                    r2 = r13
                    int r2 = r2.f24197b
                    int r1 = r1 - r2
                    long r1 = (long) r1
                    long r0 = r0 + r1
                    r11 = r0
                    r0 = r11
                    r1 = r9
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 < 0) goto L_0x004e
                    r0 = r9
                    r14 = r0
                    goto L_0x005d
                L_0x004e:
                    r0 = r13
                    okio.Segment r0 = r0.f24201f
                    r13 = r0
                    r0 = r13
                    kotlin.jvm.internal.Intrinsics.m1832c(r0)
                    goto L_0x0023
                L_0x005d:
                    r0 = r7
                    okio.AsyncTimeout r0 = okio.AsyncTimeout.this
                    r13 = r0
                    r0 = r13
                    r0.enter()
                    r0 = r7
                    okio.Sink r0 = r5     // Catch: all -> 0x0090, IOException -> 0x0094
                    r1 = r8
                    r2 = r14
                    r0.write(r1, r2)     // Catch: all -> 0x0090, IOException -> 0x0094
                    kotlin.Unit r0 = kotlin.Unit.f20447a     // Catch: all -> 0x0090, IOException -> 0x0094
                    r16 = r0
                    r0 = r13
                    boolean r0 = r0.exit()
                    if (r0 != 0) goto L_0x0089
                    r0 = r9
                    r1 = r14
                    long r0 = r0 - r1
                    r9 = r0
                    goto L_0x000f
                L_0x0089:
                    r0 = r13
                    r1 = 0
                    java.io.IOException r0 = r0.access$newTimeoutException(r1)
                    throw r0
                L_0x0090:
                    r8 = move-exception
                    goto L_0x00a9
                L_0x0094:
                    r8 = move-exception
                    r0 = r13
                    boolean r0 = r0.exit()     // Catch: all -> 0x0090
                    if (r0 != 0) goto L_0x00a0
                    goto L_0x00a7
                L_0x00a0:
                    r0 = r13
                    r1 = r8
                    java.io.IOException r0 = r0.access$newTimeoutException(r1)     // Catch: all -> 0x0090
                    r8 = r0
                L_0x00a7:
                    r0 = r8
                    throw r0     // Catch: all -> 0x0090
                L_0x00a9:
                    r0 = r13
                    boolean r0 = r0.exit()
                    r0 = r8
                    throw r0
                L_0x00b1:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: okio.AsyncTimeout$sink$1.write(okio.Buffer, long):void");
            }
        };
    }

    @NotNull
    public final Source source(@NotNull final Source source) {
        Intrinsics.m1830e(source, "source");
        return new Source() { // from class: okio.AsyncTimeout$source$1
            @NotNull
            /* renamed from: a */
            public AsyncTimeout timeout() {
                return AsyncTimeout.this;
            }

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                asyncTimeout.enter();
                try {
                    try {
                        source.close();
                        Unit unit = Unit.f20447a;
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
            public long read(@NotNull Buffer sink, long j) {
                Intrinsics.m1830e(sink, "sink");
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                asyncTimeout.enter();
                try {
                    try {
                        long read = source.read(sink, j);
                        if (!asyncTimeout.exit()) {
                            return read;
                        }
                        throw asyncTimeout.access$newTimeoutException(null);
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

            @NotNull
            public String toString() {
                return "AsyncTimeout.source(" + source + ')';
            }
        };
    }

    protected void timedOut() {
    }

    /* JADX WARN: Finally extract failed */
    public final <T> T withTimeout(@NotNull Function0<? extends T> block) {
        Intrinsics.m1830e(block, "block");
        enter();
        try {
            try {
                T t = (T) block.invoke();
                InlineMarker.m1836b(1);
                if (!exit()) {
                    InlineMarker.m1837a(1);
                    return t;
                }
                throw access$newTimeoutException(null);
            } catch (IOException e) {
                e = e;
                if (exit()) {
                    e = access$newTimeoutException(e);
                }
                throw e;
            }
        } catch (Throwable th) {
            InlineMarker.m1836b(1);
            exit();
            InlineMarker.m1837a(1);
            throw th;
        }
    }
}
