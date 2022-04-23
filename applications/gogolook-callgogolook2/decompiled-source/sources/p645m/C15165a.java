package p645m;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* renamed from: m.a */
/* loaded from: classes3-dex2jar.jar:m/a.class */
public class C15165a extends C15194t {
    public static final long IDLE_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(60);
    public static final long IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(IDLE_TIMEOUT_MILLIS);
    @Nullable
    public static C15165a head;
    public boolean inQueue;
    @Nullable
    public C15165a next;
    public long timeoutAt;

    /* renamed from: m.a$a */
    /* loaded from: classes3-dex2jar.jar:m/a$a.class */
    public class C15166a implements AbstractC15192r {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15192r f33153a;

        public C15166a(AbstractC15192r rVar) {
            this.f33153a = rVar;
        }

        @Override // p645m.AbstractC15192r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            C15165a.this.enter();
            try {
                try {
                    this.f33153a.close();
                    C15165a.this.exit(true);
                } catch (IOException e) {
                    throw C15165a.this.exit(e);
                }
            } catch (Throwable th) {
                C15165a.this.exit(false);
                throw th;
            }
        }

        @Override // p645m.AbstractC15192r, java.io.Flushable
        public void flush() throws IOException {
            C15165a.this.enter();
            try {
                try {
                    this.f33153a.flush();
                    C15165a.this.exit(true);
                } catch (IOException e) {
                    throw C15165a.this.exit(e);
                }
            } catch (Throwable th) {
                C15165a.this.exit(false);
                throw th;
            }
        }

        @Override // p645m.AbstractC15192r
        public C15194t timeout() {
            return C15165a.this;
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.f33153a + ")";
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // p645m.AbstractC15192r
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void write(p645m.C15170c r8, long r9) throws java.io.IOException {
            /*
                r7 = this;
                r0 = r8
                long r0 = r0.f33160b
                r1 = 0
                r2 = r9
                p645m.C15196u.m262a(r0, r1, r2)
            L_0x0009:
                r0 = 0
                r11 = r0
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0088
                r0 = r8
                m.o r0 = r0.f33159a
                r13 = r0
            L_0x0018:
                r0 = r11
                r14 = r0
                r0 = r11
                r1 = 65536(0x10000, double:3.2379E-319)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x004d
                r0 = r11
                r1 = r13
                int r1 = r1.f33193c
                r2 = r13
                int r2 = r2.f33192b
                int r1 = r1 - r2
                long r1 = (long) r1
                long r0 = r0 + r1
                r11 = r0
                r0 = r11
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0043
                r0 = r9
                r14 = r0
                goto L_0x004d
            L_0x0043:
                r0 = r13
                m.o r0 = r0.f33196f
                r13 = r0
                goto L_0x0018
            L_0x004d:
                r0 = r7
                m.a r0 = p645m.C15165a.this
                r0.enter()
                r0 = r7
                m.r r0 = r0.f33153a     // Catch: all -> 0x0070, IOException -> 0x0074
                r1 = r8
                r2 = r14
                r0.write(r1, r2)     // Catch: all -> 0x0070, IOException -> 0x0074
                r0 = r9
                r1 = r14
                long r0 = r0 - r1
                r9 = r0
                r0 = r7
                m.a r0 = p645m.C15165a.this
                r1 = 1
                r0.exit(r1)
                goto L_0x0009
            L_0x0070:
                r8 = move-exception
                goto L_0x007e
            L_0x0074:
                r8 = move-exception
                r0 = r7
                m.a r0 = p645m.C15165a.this     // Catch: all -> 0x0070
                r1 = r8
                java.io.IOException r0 = r0.exit(r1)     // Catch: all -> 0x0070
                throw r0     // Catch: all -> 0x0070
            L_0x007e:
                r0 = r7
                m.a r0 = p645m.C15165a.this
                r1 = 0
                r0.exit(r1)
                r0 = r8
                throw r0
            L_0x0088:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p645m.C15165a.C15166a.write(m.c, long):void");
        }
    }

    /* renamed from: m.a$b */
    /* loaded from: classes3-dex2jar.jar:m/a$b.class */
    public class C15167b implements AbstractC15193s {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15193s f33155a;

        public C15167b(AbstractC15193s sVar) {
            this.f33155a = sVar;
        }

        @Override // p645m.AbstractC15193s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                try {
                    this.f33155a.close();
                    C15165a.this.exit(true);
                } catch (IOException e) {
                    throw C15165a.this.exit(e);
                }
            } catch (Throwable th) {
                C15165a.this.exit(false);
                throw th;
            }
        }

        @Override // p645m.AbstractC15193s
        public long read(C15170c cVar, long j) throws IOException {
            C15165a.this.enter();
            try {
                try {
                    long read = this.f33155a.read(cVar, j);
                    C15165a.this.exit(true);
                    return read;
                } catch (IOException e) {
                    throw C15165a.this.exit(e);
                }
            } catch (Throwable th) {
                C15165a.this.exit(false);
                throw th;
            }
        }

        @Override // p645m.AbstractC15193s
        public C15194t timeout() {
            return C15165a.this;
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.f33155a + ")";
        }
    }

    /* renamed from: m.a$c */
    /* loaded from: classes3-dex2jar.jar:m/a$c.class */
    public static final class C15168c extends Thread {
        public C15168c() {
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
            L_0x0000:
                java.lang.Class<m.a> r0 = p645m.C15165a.class
                monitor-enter(r0)     // Catch: InterruptedException -> 0x0030
                m.a r0 = p645m.C15165a.awaitTimeout()     // Catch: all -> 0x002a, InterruptedException -> 0x0030
                r4 = r0
                r0 = r4
                if (r0 != 0) goto L_0x0011
                java.lang.Class<m.a> r0 = p645m.C15165a.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                goto L_0x0000
            L_0x0011:
                r0 = r4
                m.a r1 = p645m.C15165a.head     // Catch: all -> 0x002a
                if (r0 != r1) goto L_0x0020
                r0 = 0
                p645m.C15165a.head = r0     // Catch: all -> 0x002a
                java.lang.Class<m.a> r0 = p645m.C15165a.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                return
            L_0x0020:
                java.lang.Class<m.a> r0 = p645m.C15165a.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                r0 = r4
                r0.timedOut()     // Catch: InterruptedException -> 0x0030
                goto L_0x0000
            L_0x002a:
                r4 = move-exception
                java.lang.Class<m.a> r0 = p645m.C15165a.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                r0 = r4
                throw r0     // Catch: InterruptedException -> 0x0030
            L_0x0030:
                r4 = move-exception
                goto L_0x0000
            */
            throw new UnsupportedOperationException("Method not decompiled: p645m.C15165a.C15168c.run():void");
        }
    }

    @Nullable
    public static C15165a awaitTimeout() throws InterruptedException {
        C15165a aVar = head.next;
        if (aVar == null) {
            long nanoTime = System.nanoTime();
            C15165a.class.wait(IDLE_TIMEOUT_MILLIS);
            C15165a aVar2 = null;
            if (head.next == null) {
                aVar2 = null;
                if (System.nanoTime() - nanoTime >= IDLE_TIMEOUT_NANOS) {
                    aVar2 = head;
                }
            }
            return aVar2;
        }
        long remainingNanos = aVar.remainingNanos(System.nanoTime());
        if (remainingNanos > 0) {
            long j = remainingNanos / 1000000;
            C15165a.class.wait(j, (int) (remainingNanos - (1000000 * j)));
            return null;
        }
        head.next = aVar.next;
        aVar.next = null;
        return aVar;
    }

    public static boolean cancelScheduledTimeout(C15165a aVar) {
        synchronized (C15165a.class) {
            try {
                for (C15165a aVar2 = head; aVar2 != null; aVar2 = aVar2.next) {
                    if (aVar2.next == aVar) {
                        aVar2.next = aVar.next;
                        aVar.next = null;
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void scheduleTimeout(C15165a aVar, long j, boolean z) {
        synchronized (C15165a.class) {
            try {
                if (head == null) {
                    head = new C15165a();
                    new C15168c().start();
                }
                long nanoTime = System.nanoTime();
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i != 0 && z) {
                    aVar.timeoutAt = Math.min(j, aVar.deadlineNanoTime() - nanoTime) + nanoTime;
                } else if (i != 0) {
                    aVar.timeoutAt = j + nanoTime;
                } else if (z) {
                    aVar.timeoutAt = aVar.deadlineNanoTime();
                } else {
                    throw new AssertionError();
                }
                long remainingNanos = aVar.remainingNanos(nanoTime);
                C15165a aVar2 = head;
                while (aVar2.next != null && remainingNanos >= aVar2.next.remainingNanos(nanoTime)) {
                    aVar2 = aVar2.next;
                }
                aVar.next = aVar2.next;
                aVar2.next = aVar;
                if (aVar2 == head) {
                    C15165a.class.notify();
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
            if (timeoutNanos != 0 || hasDeadline) {
                this.inQueue = true;
                scheduleTimeout(this, timeoutNanos, hasDeadline);
                return;
            }
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    public final IOException exit(IOException iOException) throws IOException {
        return !exit() ? iOException : newTimeoutException(iOException);
    }

    public final void exit(boolean z) throws IOException {
        if (exit() && z) {
            throw newTimeoutException(null);
        }
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return cancelScheduledTimeout(this);
    }

    public IOException newTimeoutException(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final long remainingNanos(long j) {
        return this.timeoutAt - j;
    }

    public final AbstractC15192r sink(AbstractC15192r rVar) {
        return new C15166a(rVar);
    }

    public final AbstractC15193s source(AbstractC15193s sVar) {
        return new C15167b(sVar);
    }

    public void timedOut() {
    }
}
