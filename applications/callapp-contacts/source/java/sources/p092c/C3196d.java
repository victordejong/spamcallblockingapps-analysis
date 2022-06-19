package p092c;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.appsflyer.internal.referrer.Payload;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018�� \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0001J\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\u0004J\u0012\u0010\u000e\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u00020\fH\u0014J%\u0010\u0016\u001a\u0002H\u0017\"\u0004\b��\u0010\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00170\u0019H\u0086\bø\u0001��¢\u0006\u0002\u0010\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010��X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001d"}, m4298d2 = {"Lokio/AsyncTimeout;", "Lokio/Timeout;", "()V", "inQueue", "", "next", "timeoutAt", "", "access$newTimeoutException", "Ljava/io/IOException;", "cause", "enter", "", "exit", "newTimeoutException", "remainingNanos", "now", "sink", "Lokio/Sink;", Payload.SOURCE, "Lokio/Source;", "timedOut", "withTimeout", "T", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Companion", "Watchdog", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.d */
/* loaded from: classes-dex2jar.jar:c/d.class */
public class C3196d extends C3191ae {
    public static final C3197a Companion = new C3197a(null);
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static C3196d head;
    private boolean inQueue;
    private C3196d next;
    private long timeoutAt;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\u0004\u0018\u00010\tH��¢\u0006\u0002\b\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0013"}, m4298d2 = {"Lokio/AsyncTimeout$Companion;", "", "()V", "IDLE_TIMEOUT_MILLIS", "", "IDLE_TIMEOUT_NANOS", "TIMEOUT_WRITE_SIZE", "", "head", "Lokio/AsyncTimeout;", "awaitTimeout", "awaitTimeout$okio", "cancelScheduledTimeout", "", "node", "scheduleTimeout", "", "timeoutNanos", "hasDeadline", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.d$a */
    /* loaded from: classes-dex2jar.jar:c/d$a.class */
    public static final class C3197a {
        private C3197a() {
        }

        public /* synthetic */ C3197a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        static void m39223a(C3196d c3196d, long j, boolean z) {
            synchronized (C3196d.class) {
                try {
                    if (C3196d.head == null) {
                        C3196d.head = new C3196d();
                        new C3198b().start();
                    }
                    long nanoTime = System.nanoTime();
                    int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                    if (i != 0 && z) {
                        c3196d.timeoutAt = Math.min(j, c3196d.deadlineNanoTime() - nanoTime) + nanoTime;
                    } else if (i != 0) {
                        c3196d.timeoutAt = j + nanoTime;
                    } else if (!z) {
                        throw new AssertionError();
                    } else {
                        c3196d.timeoutAt = c3196d.deadlineNanoTime();
                    }
                    long remainingNanos = c3196d.remainingNanos(nanoTime);
                    C3196d c3196d2 = C3196d.head;
                    C18524p.m3851a(c3196d2);
                    while (c3196d2.next != null) {
                        C3196d c3196d3 = c3196d2.next;
                        C18524p.m3851a(c3196d3);
                        if (remainingNanos < c3196d3.remainingNanos(nanoTime)) {
                            break;
                        }
                        c3196d2 = c3196d2.next;
                        C18524p.m3851a(c3196d2);
                    }
                    c3196d.next = c3196d2.next;
                    c3196d2.next = c3196d;
                    if (c3196d2 == C3196d.head) {
                        C3196d.class.notify();
                    }
                    C20128v c20128v = C20128v.f66529a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* renamed from: a */
        static boolean m39224a(C3196d c3196d) {
            synchronized (C3196d.class) {
                try {
                    for (C3196d c3196d2 = C3196d.head; c3196d2 != null; c3196d2 = c3196d2.next) {
                        if (c3196d2.next == c3196d) {
                            c3196d2.next = c3196d.next;
                            c3196d.next = null;
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

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b\u0002\u0018��2\u00020\u0001B\u0007\b��¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, m4298d2 = {"Lokio/AsyncTimeout$Watchdog;", "Ljava/lang/Thread;", "()V", "run", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.d$b */
    /* loaded from: classes-dex2jar.jar:c/d$b.class */
    public static final class C3198b extends Thread {
        public C3198b() {
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
            L0:
                java.lang.Class<c.d> r0 = p092c.C3196d.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> Lbc
                c.d$a r0 = p092c.C3196d.Companion     // Catch: java.lang.Throwable -> Lb6 java.lang.InterruptedException -> Lbc
                r11 = r0
                c.d r0 = p092c.C3196d.access$getHead$cp()     // Catch: java.lang.Throwable -> Lb6
                r11 = r0
                r0 = r11
                kotlin.jvm.internal.C18524p.m3851a(r0)     // Catch: java.lang.Throwable -> Lb6
                r0 = r11
                c.d r0 = p092c.C3196d.access$getNext$p(r0)     // Catch: java.lang.Throwable -> Lb6
                r11 = r0
                r0 = r11
                if (r0 != 0) goto L49
                long r0 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> Lb6
                r12 = r0
                java.lang.Class<c.d> r0 = p092c.C3196d.class
                java.lang.Object r0 = (java.lang.Object) r0     // Catch: java.lang.Throwable -> Lb6
                long r1 = p092c.C3196d.access$getIDLE_TIMEOUT_MILLIS$cp()     // Catch: java.lang.Throwable -> Lb6
                r0.wait(r1)     // Catch: java.lang.Throwable -> Lb6
                c.d r0 = p092c.C3196d.access$getHead$cp()     // Catch: java.lang.Throwable -> Lb6
                r11 = r0
                r0 = r11
                kotlin.jvm.internal.C18524p.m3851a(r0)     // Catch: java.lang.Throwable -> Lb6
                r0 = r11
                c.d r0 = p092c.C3196d.access$getNext$p(r0)     // Catch: java.lang.Throwable -> Lb6
                if (r0 != 0) goto L77
                long r0 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> Lb6
                r1 = r12
                long r0 = r0 - r1
                long r1 = p092c.C3196d.access$getIDLE_TIMEOUT_NANOS$cp()     // Catch: java.lang.Throwable -> Lb6
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L77
                c.d r0 = p092c.C3196d.access$getHead$cp()     // Catch: java.lang.Throwable -> Lb6
                r11 = r0
                goto L94
            L49:
                r0 = r11
                long r1 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> Lb6
                long r0 = p092c.C3196d.access$remainingNanos(r0, r1)     // Catch: java.lang.Throwable -> Lb6
                r12 = r0
                r0 = r12
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L7c
                r0 = r12
                r1 = 1000000(0xf4240, double:4.940656E-318)
                long r0 = r0 / r1
                r14 = r0
                r0 = r14
                int r0 = java.lang.Long.signum(r0)
                java.lang.Class<c.d> r0 = p092c.C3196d.class
                java.lang.Object r0 = (java.lang.Object) r0     // Catch: java.lang.Throwable -> Lb6
                r1 = r14
                r2 = r12
                r3 = 1000000(0xf4240, double:4.940656E-318)
                r4 = r14
                long r3 = r3 * r4
                long r2 = r2 - r3
                int r2 = (int) r2     // Catch: java.lang.Throwable -> Lb6
                r0.wait(r1, r2)     // Catch: java.lang.Throwable -> Lb6
            L77:
                r0 = 0
                r11 = r0
                goto L94
            L7c:
                c.d r0 = p092c.C3196d.access$getHead$cp()     // Catch: java.lang.Throwable -> Lb6
                r16 = r0
                r0 = r16
                kotlin.jvm.internal.C18524p.m3851a(r0)     // Catch: java.lang.Throwable -> Lb6
                r0 = r16
                r1 = r11
                c.d r1 = p092c.C3196d.access$getNext$p(r1)     // Catch: java.lang.Throwable -> Lb6
                p092c.C3196d.access$setNext$p(r0, r1)     // Catch: java.lang.Throwable -> Lb6
                r0 = r11
                r1 = 0
                p092c.C3196d.access$setNext$p(r0, r1)     // Catch: java.lang.Throwable -> Lb6
            L94:
                r0 = r11
                c.d r1 = p092c.C3196d.access$getHead$cp()     // Catch: java.lang.Throwable -> Lb6
                if (r0 != r1) goto La3
                r0 = 0
                p092c.C3196d.access$setHead$cp(r0)     // Catch: java.lang.Throwable -> Lb6
                java.lang.Class<c.d> r0 = p092c.C3196d.class
                monitor-exit(r0)     // Catch: java.lang.InterruptedException -> Lbc
                return
            La3:
                kotlin.v r0 = kotlin.C20128v.f66529a     // Catch: java.lang.Throwable -> Lb6
                r16 = r0
                java.lang.Class<c.d> r0 = p092c.C3196d.class
                monitor-exit(r0)     // Catch: java.lang.InterruptedException -> Lbc
                r0 = r11
                if (r0 == 0) goto L0
                r0 = r11
                r0.timedOut()     // Catch: java.lang.InterruptedException -> Lbc
                goto L0
            Lb6:
                r11 = move-exception
                java.lang.Class<c.d> r0 = p092c.C3196d.class
                monitor-exit(r0)     // Catch: java.lang.InterruptedException -> Lbc
                r0 = r11
                throw r0     // Catch: java.lang.InterruptedException -> Lbc
            Lbc:
                r11 = move-exception
                goto L0
            */
            throw new UnsupportedOperationException("Method not decompiled: p092c.C3196d.C3198b.run():void");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��-\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, m4298d2 = {"okio/AsyncTimeout$sink$1", "Lokio/Sink;", EventConstants.CLOSE, "", "flush", "timeout", "Lokio/AsyncTimeout;", "toString", "", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.d$c */
    /* loaded from: classes-dex2jar.jar:c/d$c.class */
    public static final class C3199c implements AbstractC3188ab {

        /* renamed from: b */
        final /* synthetic */ AbstractC3188ab f11568b;

        C3199c(AbstractC3188ab abstractC3188ab) {
            C3196d.this = r4;
            this.f11568b = abstractC3188ab;
        }

        @Override // p092c.AbstractC3188ab, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            C3196d c3196d = C3196d.this;
            c3196d.enter();
            try {
                try {
                    this.f11568b.close();
                    C20128v c20128v = C20128v.f66529a;
                    if (c3196d.exit()) {
                        throw c3196d.access$newTimeoutException(null);
                    }
                } catch (IOException e) {
                    e = e;
                    if (c3196d.exit()) {
                        e = c3196d.access$newTimeoutException(e);
                    }
                    throw e;
                }
            } catch (Throwable th) {
                c3196d.exit();
                throw th;
            }
        }

        @Override // p092c.AbstractC3188ab, java.io.Flushable
        public final void flush() {
            C3196d c3196d = C3196d.this;
            c3196d.enter();
            try {
                try {
                    this.f11568b.flush();
                    C20128v c20128v = C20128v.f66529a;
                    if (c3196d.exit()) {
                        throw c3196d.access$newTimeoutException(null);
                    }
                } catch (IOException e) {
                    e = e;
                    if (c3196d.exit()) {
                        e = c3196d.access$newTimeoutException(e);
                    }
                    throw e;
                }
            } catch (Throwable th) {
                c3196d.exit();
                throw th;
            }
        }

        @Override // p092c.AbstractC3188ab
        public final /* bridge */ /* synthetic */ C3191ae timeout() {
            return C3196d.this;
        }

        public final String toString() {
            return "AsyncTimeout.sink(" + this.f11568b + ')';
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v34, types: [long] */
        /* JADX WARN: Type inference failed for: r0v36, types: [long] */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v3 */
        @Override // p092c.AbstractC3188ab
        public final void write(C3202f source, long j) {
            char c;
            C18524p.m3840d(source, "source");
            C3195c.m39226a(source.f11572b, 0L, j);
            ?? r9 = j;
            while (true) {
                char c2 = 0;
                if (r9 > 0) {
                    C3229y c3229y = source.f11571a;
                    C18524p.m3851a(c3229y);
                    while (true) {
                        c = c2;
                        if (c2 >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                            break;
                        }
                        c2 += c3229y.f11636c - c3229y.f11635b;
                        if (c2 >= r9) {
                            c = r9;
                            break;
                        } else {
                            c3229y = c3229y.f11639f;
                            C18524p.m3851a(c3229y);
                        }
                    }
                    C3196d c3196d = C3196d.this;
                    c3196d.enter();
                    try {
                        try {
                            this.f11568b.write(source, c);
                            C20128v c20128v = C20128v.f66529a;
                            if (c3196d.exit()) {
                                throw c3196d.access$newTimeoutException(null);
                            }
                            r9 -= c;
                        } catch (IOException e) {
                            e = e;
                            if (c3196d.exit()) {
                                e = c3196d.access$newTimeoutException(e);
                            }
                            throw e;
                        }
                    } catch (Throwable th) {
                        c3196d.exit();
                        throw th;
                    }
                } else {
                    return;
                }
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��+\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, m4298d2 = {"okio/AsyncTimeout$source$1", "Lokio/Source;", EventConstants.CLOSE, "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "timeout", "Lokio/AsyncTimeout;", "toString", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.d$d */
    /* loaded from: classes-dex2jar.jar:c/d$d.class */
    public static final class C3200d implements AbstractC3190ad {

        /* renamed from: b */
        final /* synthetic */ AbstractC3190ad f11570b;

        C3200d(AbstractC3190ad abstractC3190ad) {
            C3196d.this = r4;
            this.f11570b = abstractC3190ad;
        }

        @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            C3196d c3196d = C3196d.this;
            c3196d.enter();
            try {
                try {
                    this.f11570b.close();
                    C20128v c20128v = C20128v.f66529a;
                    if (c3196d.exit()) {
                        throw c3196d.access$newTimeoutException(null);
                    }
                } catch (IOException e) {
                    e = e;
                    if (c3196d.exit()) {
                        e = c3196d.access$newTimeoutException(e);
                    }
                    throw e;
                }
            } catch (Throwable th) {
                c3196d.exit();
                throw th;
            }
        }

        @Override // p092c.AbstractC3190ad
        public final long read(C3202f sink, long j) {
            C18524p.m3840d(sink, "sink");
            C3196d c3196d = C3196d.this;
            c3196d.enter();
            try {
                try {
                    long read = this.f11570b.read(sink, j);
                    if (c3196d.exit()) {
                        throw c3196d.access$newTimeoutException(null);
                    }
                    return read;
                } catch (IOException e) {
                    e = e;
                    if (c3196d.exit()) {
                        e = c3196d.access$newTimeoutException(e);
                    }
                    throw e;
                }
            } catch (Throwable th) {
                c3196d.exit();
                throw th;
            }
        }

        @Override // p092c.AbstractC3190ad
        public final /* bridge */ /* synthetic */ C3191ae timeout() {
            return C3196d.this;
        }

        public final String toString() {
            return "AsyncTimeout.source(" + this.f11570b + ')';
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
            C3197a.m39223a(this, timeoutNanos, hasDeadline);
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit".toString());
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return C3197a.m39224a(this);
    }

    protected IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final AbstractC3188ab sink(AbstractC3188ab sink) {
        C18524p.m3840d(sink, "sink");
        return new C3199c(sink);
    }

    public final AbstractC3190ad source(AbstractC3190ad source) {
        C18524p.m3840d(source, "source");
        return new C3200d(source);
    }

    protected void timedOut() {
    }

    public final <T> T withTimeout(Function0<? extends T> block) {
        C18524p.m3840d(block, "block");
        enter();
        try {
            try {
                T invoke = block.invoke();
                if (exit()) {
                    throw access$newTimeoutException(null);
                }
                return invoke;
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
