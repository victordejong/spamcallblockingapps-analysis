package p092c;

import com.appsflyer.internal.referrer.Payload;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import p092c.C3191ae;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\"2\u0006\u0010\u0017\u001a\u00020\u0010J\r\u0010\u0017\u001a\u00020\u0010H\u0007¢\u0006\u0002\b$J\r\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\b%J&\u0010&\u001a\u00020\"*\u00020\u00102\u0017\u0010'\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\"0(¢\u0006\u0002\b)H\u0082\bR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u00020\u00108G¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0012R\u001a\u0010\u0018\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\u0013\u0010\u001b\u001a\u00020\u001c8G¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000e¨\u0006*"}, m4298d2 = {"Lokio/Pipe;", "", "maxBufferSize", "", "(J)V", "buffer", "Lokio/Buffer;", "getBuffer$okio", "()Lokio/Buffer;", "canceled", "", "getCanceled$okio", "()Z", "setCanceled$okio", "(Z)V", "foldedSink", "Lokio/Sink;", "getFoldedSink$okio", "()Lokio/Sink;", "setFoldedSink$okio", "(Lokio/Sink;)V", "getMaxBufferSize$okio", "()J", "sink", "sinkClosed", "getSinkClosed$okio", "setSinkClosed$okio", Payload.SOURCE, "Lokio/Source;", "()Lokio/Source;", "sourceClosed", "getSourceClosed$okio", "setSourceClosed$okio", "cancel", "", "fold", "-deprecated_sink", "-deprecated_source", "forward", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.v */
/* loaded from: classes-dex2jar.jar:c/v.class */
public final class C3223v {

    /* renamed from: a */
    final C3202f f11614a = new C3202f();

    /* renamed from: b */
    boolean f11615b;

    /* renamed from: c */
    boolean f11616c;

    /* renamed from: d */
    boolean f11617d;

    /* renamed from: e */
    AbstractC3188ab f11618e;

    /* renamed from: f */
    public final AbstractC3188ab f11619f;

    /* renamed from: g */
    public final AbstractC3190ad f11620g;

    /* renamed from: h */
    final long f11621h;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"okio/Pipe$sink$1", "Lokio/Sink;", "timeout", "Lokio/Timeout;", EventConstants.CLOSE, "", "flush", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.v$a */
    /* loaded from: classes-dex2jar.jar:c/v$a.class */
    public static final class C3224a implements AbstractC3188ab {

        /* renamed from: b */
        private final C3191ae f11623b = new C3191ae();

        C3224a() {
            C3223v.this = r5;
        }

        @Override // p092c.AbstractC3188ab, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            synchronized (C3223v.this.f11614a) {
                if (C3223v.this.f11616c) {
                    return;
                }
                AbstractC3188ab abstractC3188ab = C3223v.this.f11618e;
                if (abstractC3188ab == null) {
                    if (C3223v.this.f11617d && C3223v.this.f11614a.f11572b > 0) {
                        throw new IOException("source is closed");
                    }
                    C3223v.this.f11616c = true;
                    C3202f c3202f = C3223v.this.f11614a;
                    if (c3202f == null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                    }
                    c3202f.notifyAll();
                    abstractC3188ab = null;
                }
                C20128v c20128v = C20128v.f66529a;
                if (abstractC3188ab == null) {
                    return;
                }
                C3223v c3223v = C3223v.this;
                C3191ae timeout = abstractC3188ab.timeout();
                C3191ae timeout2 = c3223v.f11619f.timeout();
                long timeoutNanos = timeout.timeoutNanos();
                timeout.timeout(C3191ae.C3192a.m39231a(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
                if (!timeout.hasDeadline()) {
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                    }
                    try {
                        abstractC3188ab.close();
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (!timeout2.hasDeadline()) {
                            return;
                        }
                        timeout.clearDeadline();
                        return;
                    } catch (Throwable th) {
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        throw th;
                    }
                }
                long deadlineNanoTime = timeout.deadlineNanoTime();
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                }
                try {
                    abstractC3188ab.close();
                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                    if (!timeout2.hasDeadline()) {
                        return;
                    }
                    timeout.deadlineNanoTime(deadlineNanoTime);
                } catch (Throwable th2) {
                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(deadlineNanoTime);
                    }
                    throw th2;
                }
            }
        }

        @Override // p092c.AbstractC3188ab, java.io.Flushable
        public final void flush() {
            AbstractC3188ab abstractC3188ab;
            synchronized (C3223v.this.f11614a) {
                if (!(!C3223v.this.f11616c)) {
                    throw new IllegalStateException("closed".toString());
                }
                if (C3223v.this.f11615b) {
                    throw new IOException("canceled");
                }
                abstractC3188ab = C3223v.this.f11618e;
                if (abstractC3188ab == null) {
                    if (C3223v.this.f11617d && C3223v.this.f11614a.f11572b > 0) {
                        throw new IOException("source is closed");
                    }
                    abstractC3188ab = null;
                }
                C20128v c20128v = C20128v.f66529a;
            }
            if (abstractC3188ab != null) {
                C3223v c3223v = C3223v.this;
                C3191ae timeout = abstractC3188ab.timeout();
                C3191ae timeout2 = c3223v.f11619f.timeout();
                long timeoutNanos = timeout.timeoutNanos();
                timeout.timeout(C3191ae.C3192a.m39231a(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
                if (!timeout.hasDeadline()) {
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                    }
                    try {
                        abstractC3188ab.flush();
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (!timeout2.hasDeadline()) {
                            return;
                        }
                        timeout.clearDeadline();
                        return;
                    } catch (Throwable th) {
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        throw th;
                    }
                }
                long deadlineNanoTime = timeout.deadlineNanoTime();
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                }
                try {
                    abstractC3188ab.flush();
                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                    if (!timeout2.hasDeadline()) {
                        return;
                    }
                    timeout.deadlineNanoTime(deadlineNanoTime);
                } catch (Throwable th2) {
                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(deadlineNanoTime);
                    }
                    throw th2;
                }
            }
        }

        @Override // p092c.AbstractC3188ab
        public final C3191ae timeout() {
            return this.f11623b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v110, types: [long] */
        /* JADX WARN: Type inference failed for: r0v111, types: [long] */
        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* JADX WARN: Type inference failed for: r1v32, types: [long] */
        /* JADX WARN: Type inference failed for: r2v4, types: [long] */
        /* JADX WARN: Type inference failed for: r2v7, types: [long] */
        /* JADX WARN: Type inference failed for: r8v0, types: [long] */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Type inference failed for: r8v4 */
        @Override // p092c.AbstractC3188ab
        public final void write(C3202f source, long j) {
            AbstractC3188ab abstractC3188ab;
            C18524p.m3840d(source, "source");
            synchronized (C3223v.this.f11614a) {
                if (!(!C3223v.this.f11616c)) {
                    throw new IllegalStateException("closed".toString());
                }
                if (C3223v.this.f11615b) {
                    throw new IOException("canceled");
                }
                while (true) {
                    if ((j == true ? 1 : 0) <= 0) {
                        abstractC3188ab = null;
                        break;
                    }
                    abstractC3188ab = C3223v.this.f11618e;
                    if (abstractC3188ab != null) {
                        break;
                    } else if (C3223v.this.f11617d) {
                        throw new IOException("source is closed");
                    } else {
                        long j2 = C3223v.this.f11621h - C3223v.this.f11614a.f11572b;
                        if (j2 == 0) {
                            this.f11623b.waitUntilNotified(C3223v.this.f11614a);
                            if (C3223v.this.f11615b) {
                                throw new IOException("canceled");
                            }
                        } else {
                            long min = Math.min(j2, (long) j);
                            C3223v.this.f11614a.write(source, min);
                            j -= min;
                            C3202f c3202f = C3223v.this.f11614a;
                            if (c3202f == null) {
                                throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                            }
                            c3202f.notifyAll();
                        }
                    }
                }
                C20128v c20128v = C20128v.f66529a;
            }
            if (abstractC3188ab != null) {
                C3223v c3223v = C3223v.this;
                C3191ae timeout = abstractC3188ab.timeout();
                C3191ae timeout2 = c3223v.f11619f.timeout();
                long timeoutNanos = timeout.timeoutNanos();
                timeout.timeout(C3191ae.C3192a.m39231a(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
                if (!timeout.hasDeadline()) {
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                    }
                    try {
                        abstractC3188ab.write(source, j);
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (!timeout2.hasDeadline()) {
                            return;
                        }
                        timeout.clearDeadline();
                        return;
                    } catch (Throwable th) {
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        throw th;
                    }
                }
                long deadlineNanoTime = timeout.deadlineNanoTime();
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                }
                try {
                    abstractC3188ab.write(source, j);
                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                    if (!timeout2.hasDeadline()) {
                        return;
                    }
                    timeout.deadlineNanoTime(deadlineNanoTime);
                } catch (Throwable th2) {
                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(deadlineNanoTime);
                    }
                    throw th2;
                }
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0016J\b\u0010\u0002\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"okio/Pipe$source$1", "Lokio/Source;", "timeout", "Lokio/Timeout;", EventConstants.CLOSE, "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.v$b */
    /* loaded from: classes-dex2jar.jar:c/v$b.class */
    public static final class C3225b implements AbstractC3190ad {

        /* renamed from: b */
        private final C3191ae f11625b = new C3191ae();

        C3225b() {
            C3223v.this = r5;
        }

        @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            synchronized (C3223v.this.f11614a) {
                C3223v.this.f11617d = true;
                C3202f c3202f = C3223v.this.f11614a;
                if (c3202f == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                }
                c3202f.notifyAll();
                C20128v c20128v = C20128v.f66529a;
            }
        }

        @Override // p092c.AbstractC3190ad
        public final long read(C3202f sink, long j) {
            C18524p.m3840d(sink, "sink");
            synchronized (C3223v.this.f11614a) {
                if (!C3223v.this.f11617d) {
                    if (C3223v.this.f11615b) {
                        throw new IOException("canceled");
                    }
                    while (C3223v.this.f11614a.f11572b == 0) {
                        if (C3223v.this.f11616c) {
                            return -1L;
                        }
                        this.f11625b.waitUntilNotified(C3223v.this.f11614a);
                        if (C3223v.this.f11615b) {
                            throw new IOException("canceled");
                        }
                    }
                    long read = C3223v.this.f11614a.read(sink, j);
                    C3202f c3202f = C3223v.this.f11614a;
                    if (c3202f == null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                    }
                    c3202f.notifyAll();
                    return read;
                }
                throw new IllegalStateException("closed".toString());
            }
        }

        @Override // p092c.AbstractC3190ad
        public final C3191ae timeout() {
            return this.f11625b;
        }
    }

    public C3223v(long j) {
        this.f11621h = j;
        if (j >= 1) {
            this.f11619f = new C3224a();
            this.f11620g = new C3225b();
            return;
        }
        throw new IllegalArgumentException(("maxBufferSize < 1: " + j).toString());
    }
}
