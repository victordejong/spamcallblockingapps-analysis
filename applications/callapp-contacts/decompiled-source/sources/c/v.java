package c;

import c.ae;
import com.appsflyer.internal.referrer.Payload;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\"2\u0006\u0010\u0017\u001a\u00020\u0010J\r\u0010\u0017\u001a\u00020\u0010H\u0007¢\u0006\u0002\b$J\r\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\b%J&\u0010&\u001a\u00020\"*\u00020\u00102\u0017\u0010'\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\"0(¢\u0006\u0002\b)H\u0082\bR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u00020\u00108G¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0012R\u001a\u0010\u0018\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\u0013\u0010\u001b\u001a\u00020\u001c8G¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000e¨\u0006*"}, d2 = {"Lokio/Pipe;", "", "maxBufferSize", "", "(J)V", "buffer", "Lokio/Buffer;", "getBuffer$okio", "()Lokio/Buffer;", "canceled", "", "getCanceled$okio", "()Z", "setCanceled$okio", "(Z)V", "foldedSink", "Lokio/Sink;", "getFoldedSink$okio", "()Lokio/Sink;", "setFoldedSink$okio", "(Lokio/Sink;)V", "getMaxBufferSize$okio", "()J", "sink", "sinkClosed", "getSinkClosed$okio", "setSinkClosed$okio", Payload.SOURCE, "Lokio/Source;", "()Lokio/Source;", "sourceClosed", "getSourceClosed$okio", "setSourceClosed$okio", "cancel", "", "fold", "-deprecated_sink", "-deprecated_source", "forward", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/v.class */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    final f f6324a = new f();

    /* renamed from: b  reason: collision with root package name */
    boolean f6325b;

    /* renamed from: c  reason: collision with root package name */
    boolean f6326c;

    /* renamed from: d  reason: collision with root package name */
    boolean f6327d;
    ab e;
    public final ab f;
    public final ad g;
    final long h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"okio/Pipe$sink$1", "Lokio/Sink;", "timeout", "Lokio/Timeout;", EventConstants.CLOSE, "", "flush", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:c/v$a.class */
    public static final class a implements ab {

        /* renamed from: b  reason: collision with root package name */
        private final ae f6329b = new ae();

        a() {
        }

        @Override // c.ab, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            synchronized (v.this.f6324a) {
                if (!v.this.f6326c) {
                    ab abVar = v.this.e;
                    if (abVar == null) {
                        if (v.this.f6327d && v.this.f6324a.f6289b > 0) {
                            throw new IOException("source is closed");
                        }
                        v.this.f6326c = true;
                        f fVar = v.this.f6324a;
                        if (fVar != null) {
                            fVar.notifyAll();
                            abVar = null;
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                        }
                    }
                    kotlin.v vVar = kotlin.v.f38654a;
                    if (abVar != null) {
                        v vVar2 = v.this;
                        ae timeout = abVar.timeout();
                        ae timeout2 = vVar2.f.timeout();
                        long timeoutNanos = timeout.timeoutNanos();
                        timeout.timeout(ae.a.a(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
                        if (timeout.hasDeadline()) {
                            long deadlineNanoTime = timeout.deadlineNanoTime();
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                            }
                            try {
                                abVar.close();
                                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.hasDeadline()) {
                                    timeout.deadlineNanoTime(deadlineNanoTime);
                                }
                            } catch (Throwable th) {
                                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.hasDeadline()) {
                                    timeout.deadlineNanoTime(deadlineNanoTime);
                                }
                                throw th;
                            }
                        } else {
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                            }
                            try {
                                abVar.close();
                                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.hasDeadline()) {
                                    timeout.clearDeadline();
                                }
                            } catch (Throwable th2) {
                                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.hasDeadline()) {
                                    timeout.clearDeadline();
                                }
                                throw th2;
                            }
                        }
                    }
                }
            }
        }

        @Override // c.ab, java.io.Flushable
        public final void flush() {
            ab abVar;
            synchronized (v.this.f6324a) {
                if (!(!v.this.f6326c)) {
                    throw new IllegalStateException("closed".toString());
                } else if (!v.this.f6325b) {
                    abVar = v.this.e;
                    if (abVar == null) {
                        if (v.this.f6327d && v.this.f6324a.f6289b > 0) {
                            throw new IOException("source is closed");
                        }
                        abVar = null;
                    }
                    kotlin.v vVar = kotlin.v.f38654a;
                } else {
                    throw new IOException("canceled");
                }
            }
            if (abVar != null) {
                v vVar2 = v.this;
                ae timeout = abVar.timeout();
                ae timeout2 = vVar2.f.timeout();
                long timeoutNanos = timeout.timeoutNanos();
                timeout.timeout(ae.a.a(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
                if (timeout.hasDeadline()) {
                    long deadlineNanoTime = timeout.deadlineNanoTime();
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                    }
                    try {
                        abVar.flush();
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(deadlineNanoTime);
                        }
                    } catch (Throwable th) {
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(deadlineNanoTime);
                        }
                        throw th;
                    }
                } else {
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                    }
                    try {
                        abVar.flush();
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                    } catch (Throwable th2) {
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        throw th2;
                    }
                }
            }
        }

        @Override // c.ab
        public final ae timeout() {
            return this.f6329b;
        }

        @Override // c.ab
        public final void write(f source, long j) {
            ab abVar;
            p.d(source, "source");
            synchronized (v.this.f6324a) {
                if (!(!v.this.f6326c)) {
                    throw new IllegalStateException("closed".toString());
                } else if (!v.this.f6325b) {
                    while (true) {
                        if (j <= 0) {
                            abVar = null;
                            break;
                        }
                        abVar = v.this.e;
                        if (abVar != null) {
                            break;
                        } else if (!v.this.f6327d) {
                            long j2 = v.this.h - v.this.f6324a.f6289b;
                            if (j2 == 0) {
                                this.f6329b.waitUntilNotified(v.this.f6324a);
                                if (v.this.f6325b) {
                                    throw new IOException("canceled");
                                }
                            } else {
                                long min = Math.min(j2, j);
                                v.this.f6324a.write(source, min);
                                j -= min;
                                f fVar = v.this.f6324a;
                                if (fVar != null) {
                                    fVar.notifyAll();
                                } else {
                                    throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                                }
                            }
                        } else {
                            throw new IOException("source is closed");
                        }
                    }
                    kotlin.v vVar = kotlin.v.f38654a;
                } else {
                    throw new IOException("canceled");
                }
            }
            if (abVar != null) {
                v vVar2 = v.this;
                ae timeout = abVar.timeout();
                ae timeout2 = vVar2.f.timeout();
                long timeoutNanos = timeout.timeoutNanos();
                timeout.timeout(ae.a.a(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
                if (timeout.hasDeadline()) {
                    long deadlineNanoTime = timeout.deadlineNanoTime();
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                    }
                    try {
                        abVar.write(source, j);
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(deadlineNanoTime);
                        }
                    } catch (Throwable th) {
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(deadlineNanoTime);
                        }
                        throw th;
                    }
                } else {
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                    }
                    try {
                        abVar.write(source, j);
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                    } catch (Throwable th2) {
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        throw th2;
                    }
                }
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0016J\b\u0010\u0002\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"okio/Pipe$source$1", "Lokio/Source;", "timeout", "Lokio/Timeout;", EventConstants.CLOSE, "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:c/v$b.class */
    public static final class b implements ad {

        /* renamed from: b  reason: collision with root package name */
        private final ae f6331b = new ae();

        b() {
        }

        @Override // c.ad, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            synchronized (v.this.f6324a) {
                v.this.f6327d = true;
                f fVar = v.this.f6324a;
                if (fVar != null) {
                    fVar.notifyAll();
                    kotlin.v vVar = kotlin.v.f38654a;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                }
            }
        }

        @Override // c.ad
        public final long read(f sink, long j) {
            p.d(sink, "sink");
            synchronized (v.this.f6324a) {
                if (!(!v.this.f6327d)) {
                    throw new IllegalStateException("closed".toString());
                } else if (!v.this.f6325b) {
                    while (v.this.f6324a.f6289b == 0) {
                        if (v.this.f6326c) {
                            return -1L;
                        }
                        this.f6331b.waitUntilNotified(v.this.f6324a);
                        if (v.this.f6325b) {
                            throw new IOException("canceled");
                        }
                    }
                    long read = v.this.f6324a.read(sink, j);
                    f fVar = v.this.f6324a;
                    if (fVar != null) {
                        fVar.notifyAll();
                        return read;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                } else {
                    throw new IOException("canceled");
                }
            }
        }

        @Override // c.ad
        public final ae timeout() {
            return this.f6331b;
        }
    }

    public v(long j) {
        this.h = j;
        if (j >= 1) {
            this.f = new a();
            this.g = new b();
            return;
        }
        throw new IllegalArgumentException(("maxBufferSize < 1: " + j).toString());
    }
}
