package c;

import com.appsflyer.internal.referrer.Payload;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018�� \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0001J\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\u0004J\u0012\u0010\u000e\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u00020\fH\u0014J%\u0010\u0016\u001a\u0002H\u0017\"\u0004\b��\u0010\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00170\u0019H\u0086\bø\u0001��¢\u0006\u0002\u0010\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010��X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001d"}, d2 = {"Lokio/AsyncTimeout;", "Lokio/Timeout;", "()V", "inQueue", "", "next", "timeoutAt", "", "access$newTimeoutException", "Ljava/io/IOException;", "cause", "enter", "", "exit", "newTimeoutException", "remainingNanos", "now", "sink", "Lokio/Sink;", Payload.SOURCE, "Lokio/Source;", "timedOut", "withTimeout", "T", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Companion", "Watchdog", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/d.class */
public class d extends ae {
    public static final a Companion = new a(null);
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static d head;
    private boolean inQueue;
    private d next;
    private long timeoutAt;

    @Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\u0004\u0018\u00010\tH��¢\u0006\u0002\b\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0013"}, d2 = {"Lokio/AsyncTimeout$Companion;", "", "()V", "IDLE_TIMEOUT_MILLIS", "", "IDLE_TIMEOUT_NANOS", "TIMEOUT_WRITE_SIZE", "", "head", "Lokio/AsyncTimeout;", "awaitTimeout", "awaitTimeout$okio", "cancelScheduledTimeout", "", "node", "scheduleTimeout", "", "timeoutNanos", "hasDeadline", "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:c/d$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        static void a(d dVar, long j, boolean z) {
            synchronized (d.class) {
                try {
                    if (d.head == null) {
                        d.head = new d();
                        new b().start();
                    }
                    long nanoTime = System.nanoTime();
                    int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                    if (i != 0 && z) {
                        dVar.timeoutAt = Math.min(j, dVar.deadlineNanoTime() - nanoTime) + nanoTime;
                    } else if (i != 0) {
                        dVar.timeoutAt = j + nanoTime;
                    } else if (z) {
                        dVar.timeoutAt = dVar.deadlineNanoTime();
                    } else {
                        throw new AssertionError();
                    }
                    long remainingNanos = dVar.remainingNanos(nanoTime);
                    d dVar2 = d.head;
                    p.a(dVar2);
                    while (dVar2.next != null) {
                        d dVar3 = dVar2.next;
                        p.a(dVar3);
                        if (remainingNanos < dVar3.remainingNanos(nanoTime)) {
                            break;
                        }
                        dVar2 = dVar2.next;
                        p.a(dVar2);
                    }
                    dVar.next = dVar2.next;
                    dVar2.next = dVar;
                    if (dVar2 == d.head) {
                        d.class.notify();
                    }
                    v vVar = v.f38654a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        static boolean a(d dVar) {
            synchronized (d.class) {
                try {
                    for (d dVar2 = d.head; dVar2 != null; dVar2 = dVar2.next) {
                        if (dVar2.next == dVar) {
                            dVar2.next = dVar.next;
                            dVar.next = null;
                            return false;
                        }
                    }
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b\u0002\u0018��2\u00020\u0001B\u0007\b��¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Lokio/AsyncTimeout$Watchdog;", "Ljava/lang/Thread;", "()V", "run", "", "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:c/d$b.class */
    public static final class b extends Thread {
        public b() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x009b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00a3 A[SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r10 = this;
            L_0x0000:
                java.lang.Class<c.d> r0 = c.d.class
                monitor-enter(r0)     // Catch: InterruptedException -> 0x00bc
                c.d$a r0 = c.d.Companion     // Catch: all -> 0x00b6, InterruptedException -> 0x00bc
                r11 = r0
                c.d r0 = c.d.access$getHead$cp()     // Catch: all -> 0x00b6
                r11 = r0
                r0 = r11
                kotlin.jvm.internal.p.a(r0)     // Catch: all -> 0x00b6
                r0 = r11
                c.d r0 = c.d.access$getNext$p(r0)     // Catch: all -> 0x00b6
                r11 = r0
                r0 = r11
                if (r0 != 0) goto L_0x0049
                long r0 = java.lang.System.nanoTime()     // Catch: all -> 0x00b6
                r12 = r0
                java.lang.Class<c.d> r0 = c.d.class
                java.lang.Object r0 = (java.lang.Object) r0     // Catch: all -> 0x00b6
                long r1 = c.d.access$getIDLE_TIMEOUT_MILLIS$cp()     // Catch: all -> 0x00b6
                r0.wait(r1)     // Catch: all -> 0x00b6
                c.d r0 = c.d.access$getHead$cp()     // Catch: all -> 0x00b6
                r11 = r0
                r0 = r11
                kotlin.jvm.internal.p.a(r0)     // Catch: all -> 0x00b6
                r0 = r11
                c.d r0 = c.d.access$getNext$p(r0)     // Catch: all -> 0x00b6
                if (r0 != 0) goto L_0x0077
                long r0 = java.lang.System.nanoTime()     // Catch: all -> 0x00b6
                r1 = r12
                long r0 = r0 - r1
                long r1 = c.d.access$getIDLE_TIMEOUT_NANOS$cp()     // Catch: all -> 0x00b6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0077
                c.d r0 = c.d.access$getHead$cp()     // Catch: all -> 0x00b6
                r11 = r0
                goto L_0x0094
            L_0x0049:
                r0 = r11
                long r1 = java.lang.System.nanoTime()     // Catch: all -> 0x00b6
                long r0 = c.d.access$remainingNanos(r0, r1)     // Catch: all -> 0x00b6
                r12 = r0
                r0 = r12
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x007c
                r0 = r12
                r1 = 1000000(0xf4240, double:4.940656E-318)
                long r0 = r0 / r1
                r14 = r0
                r0 = r14
                int r0 = java.lang.Long.signum(r0)
                java.lang.Class<c.d> r0 = c.d.class
                java.lang.Object r0 = (java.lang.Object) r0     // Catch: all -> 0x00b6
                r1 = r14
                r2 = r12
                r3 = 1000000(0xf4240, double:4.940656E-318)
                r4 = r14
                long r3 = r3 * r4
                long r2 = r2 - r3
                int r2 = (int) r2     // Catch: all -> 0x00b6
                r0.wait(r1, r2)     // Catch: all -> 0x00b6
            L_0x0077:
                r0 = 0
                r11 = r0
                goto L_0x0094
            L_0x007c:
                c.d r0 = c.d.access$getHead$cp()     // Catch: all -> 0x00b6
                r16 = r0
                r0 = r16
                kotlin.jvm.internal.p.a(r0)     // Catch: all -> 0x00b6
                r0 = r16
                r1 = r11
                c.d r1 = c.d.access$getNext$p(r1)     // Catch: all -> 0x00b6
                c.d.access$setNext$p(r0, r1)     // Catch: all -> 0x00b6
                r0 = r11
                r1 = 0
                c.d.access$setNext$p(r0, r1)     // Catch: all -> 0x00b6
            L_0x0094:
                r0 = r11
                c.d r1 = c.d.access$getHead$cp()     // Catch: all -> 0x00b6
                if (r0 != r1) goto L_0x00a3
                r0 = 0
                c.d.access$setHead$cp(r0)     // Catch: all -> 0x00b6
                java.lang.Class<c.d> r0 = c.d.class
                monitor-exit(r0)     // Catch: InterruptedException -> 0x00bc
                return
            L_0x00a3:
                kotlin.v r0 = kotlin.v.f38654a     // Catch: all -> 0x00b6
                r16 = r0
                java.lang.Class<c.d> r0 = c.d.class
                monitor-exit(r0)     // Catch: InterruptedException -> 0x00bc
                r0 = r11
                if (r0 == 0) goto L_0x0000
                r0 = r11
                r0.timedOut()     // Catch: InterruptedException -> 0x00bc
                goto L_0x0000
            L_0x00b6:
                r11 = move-exception
                java.lang.Class<c.d> r0 = c.d.class
                monitor-exit(r0)     // Catch: InterruptedException -> 0x00bc
                r0 = r11
                throw r0     // Catch: InterruptedException -> 0x00bc
            L_0x00bc:
                r11 = move-exception
                goto L_0x0000
            */
            throw new UnsupportedOperationException("Method not decompiled: c.d.b.run():void");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��-\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, d2 = {"okio/AsyncTimeout$sink$1", "Lokio/Sink;", EventConstants.CLOSE, "", "flush", "timeout", "Lokio/AsyncTimeout;", "toString", "", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:c/d$c.class */
    public static final class c implements ab {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ab f6285b;

        c(ab abVar) {
            this.f6285b = abVar;
        }

        @Override // c.ab, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            d dVar = d.this;
            dVar.enter();
            try {
                try {
                    this.f6285b.close();
                    v vVar = v.f38654a;
                    if (dVar.exit()) {
                        throw dVar.access$newTimeoutException(null);
                    }
                } catch (IOException e) {
                    e = e;
                    if (dVar.exit()) {
                        e = dVar.access$newTimeoutException(e);
                    }
                    throw e;
                }
            } catch (Throwable th) {
                dVar.exit();
                throw th;
            }
        }

        @Override // c.ab, java.io.Flushable
        public final void flush() {
            d dVar = d.this;
            dVar.enter();
            try {
                try {
                    this.f6285b.flush();
                    v vVar = v.f38654a;
                    if (dVar.exit()) {
                        throw dVar.access$newTimeoutException(null);
                    }
                } catch (IOException e) {
                    e = e;
                    if (dVar.exit()) {
                        e = dVar.access$newTimeoutException(e);
                    }
                    throw e;
                }
            } catch (Throwable th) {
                dVar.exit();
                throw th;
            }
        }

        @Override // c.ab
        public final /* bridge */ /* synthetic */ ae timeout() {
            return d.this;
        }

        public final String toString() {
            return "AsyncTimeout.sink(" + this.f6285b + ')';
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // c.ab
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void write(c.f r8, long r9) {
            /*
                r7 = this;
                r0 = r8
                java.lang.String r1 = "source"
                kotlin.jvm.internal.p.d(r0, r1)
                r0 = r8
                long r0 = r0.f6289b
                r1 = 0
                r2 = r9
                c.c.a(r0, r1, r2)
            L_0x000f:
                r0 = 0
                r11 = r0
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x00bc
                r0 = r8
                c.y r0 = r0.f6288a
                r13 = r0
                r0 = r13
                kotlin.jvm.internal.p.a(r0)
            L_0x0023:
                r0 = r11
                r14 = r0
                r0 = r11
                r1 = 65536(0x10000, double:3.2379E-319)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x005d
                r0 = r11
                r1 = r13
                int r1 = r1.f6341c
                r2 = r13
                int r2 = r2.f6340b
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
                c.y r0 = r0.f
                r13 = r0
                r0 = r13
                kotlin.jvm.internal.p.a(r0)
                goto L_0x0023
            L_0x005d:
                r0 = r7
                c.d r0 = c.d.this
                r13 = r0
                r0 = r13
                r0.enter()
                r0 = r7
                c.ab r0 = r0.f6285b     // Catch: all -> 0x0093, IOException -> 0x0097
                r1 = r8
                r2 = r14
                r0.write(r1, r2)     // Catch: all -> 0x0093, IOException -> 0x0097
                kotlin.v r0 = kotlin.v.f38654a     // Catch: all -> 0x0093, IOException -> 0x0097
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
                java.lang.Throwable r0 = (java.lang.Throwable) r0
                throw r0
            L_0x0093:
                r8 = move-exception
                goto L_0x00b4
            L_0x0097:
                r8 = move-exception
                r0 = r13
                boolean r0 = r0.exit()     // Catch: all -> 0x0093
                if (r0 != 0) goto L_0x00a8
            L_0x00a0:
                r0 = r8
                java.lang.Throwable r0 = (java.lang.Throwable) r0     // Catch: all -> 0x0093
                r8 = r0
                goto L_0x00b2
            L_0x00a8:
                r0 = r13
                r1 = r8
                java.io.IOException r0 = r0.access$newTimeoutException(r1)     // Catch: all -> 0x0093
                r8 = r0
                goto L_0x00a0
            L_0x00b2:
                r0 = r8
                throw r0     // Catch: all -> 0x0093
            L_0x00b4:
                r0 = r13
                boolean r0 = r0.exit()
                r0 = r8
                throw r0
            L_0x00bc:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: c.d.c.write(c.f, long):void");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��+\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"okio/AsyncTimeout$source$1", "Lokio/Source;", EventConstants.CLOSE, "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "timeout", "Lokio/AsyncTimeout;", "toString", "", "okio"}, k = 1, mv = {1, 4, 0})
    /* renamed from: c.d$d  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:c/d$d.class */
    public static final class C0127d implements ad {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ad f6287b;

        C0127d(ad adVar) {
            this.f6287b = adVar;
        }

        @Override // c.ad, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            d dVar = d.this;
            dVar.enter();
            try {
                try {
                    this.f6287b.close();
                    v vVar = v.f38654a;
                    if (dVar.exit()) {
                        throw dVar.access$newTimeoutException(null);
                    }
                } catch (IOException e) {
                    e = e;
                    if (dVar.exit()) {
                        e = dVar.access$newTimeoutException(e);
                    }
                    throw e;
                }
            } catch (Throwable th) {
                dVar.exit();
                throw th;
            }
        }

        @Override // c.ad
        public final long read(f sink, long j) {
            p.d(sink, "sink");
            d dVar = d.this;
            dVar.enter();
            try {
                try {
                    long read = this.f6287b.read(sink, j);
                    if (!dVar.exit()) {
                        return read;
                    }
                    throw dVar.access$newTimeoutException(null);
                } catch (IOException e) {
                    e = e;
                    if (dVar.exit()) {
                        e = dVar.access$newTimeoutException(e);
                    }
                    throw e;
                }
            } catch (Throwable th) {
                dVar.exit();
                throw th;
            }
        }

        @Override // c.ad
        public final /* bridge */ /* synthetic */ ae timeout() {
            return d.this;
        }

        public final String toString() {
            return "AsyncTimeout.source(" + this.f6287b + ')';
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    /* JADX INFO: Access modifiers changed from: private */
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
            if (timeoutNanos != 0 || hasDeadline) {
                this.inQueue = true;
                a.a(this, timeoutNanos, hasDeadline);
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
        return a.a(this);
    }

    protected IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final ab sink(ab sink) {
        p.d(sink, "sink");
        return new c(sink);
    }

    public final ad source(ad source) {
        p.d(source, "source");
        return new C0127d(source);
    }

    protected void timedOut() {
    }

    public final <T> T withTimeout(Function0<? extends T> block) {
        p.d(block, "block");
        enter();
        try {
            try {
                T t = (T) block.invoke();
                if (!exit()) {
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
            exit();
            throw th;
        }
    }
}
