package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��'\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0005*\u0001��\b\n\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u000f¨\u0006\u0010"}, d2 = {"okio/Pipe$sink$1", "Lokio/Sink;", "", "close", "()V", "flush", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "Lokio/Buffer;", "source", "", "byteCount", "write", "(Lokio/Buffer;J)V", "Lokio/Timeout;", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/Pipe$sink$1.class */
public final class Pipe$sink$1 implements Sink {

    /* renamed from: f */
    private final Timeout f24184f;

    /* renamed from: g */
    final /* synthetic */ Pipe f24185g;

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f24185g.m109a()) {
            if (!this.f24185g.m105e()) {
                Sink c = this.f24185g.m107c();
                if (c == null) {
                    if (this.f24185g.m104f() && this.f24185g.m109a().m188v0() > 0) {
                        throw new IOException("source is closed");
                    }
                    this.f24185g.m103g(true);
                    Buffer a = this.f24185g.m109a();
                    if (a != null) {
                        a.notifyAll();
                        c = null;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                    }
                }
                Unit unit = Unit.f20447a;
                if (c != null) {
                    Pipe pipe = this.f24185g;
                    Timeout timeout = c.timeout();
                    Timeout timeout2 = pipe.m101i().timeout();
                    long timeoutNanos = timeout.timeoutNanos();
                    timeout.timeout(Timeout.Companion.m30a(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
                    if (timeout.hasDeadline()) {
                        long deadlineNanoTime = timeout.deadlineNanoTime();
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                        }
                        try {
                            c.close();
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
                            c.close();
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

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        Sink c;
        synchronized (this.f24185g.m109a()) {
            if (!(!this.f24185g.m105e())) {
                throw new IllegalStateException("closed".toString());
            } else if (!this.f24185g.m108b()) {
                c = this.f24185g.m107c();
                if (c == null) {
                    if (this.f24185g.m104f() && this.f24185g.m109a().m188v0() > 0) {
                        throw new IOException("source is closed");
                    }
                    c = null;
                }
                Unit unit = Unit.f20447a;
            } else {
                throw new IOException("canceled");
            }
        }
        if (c != null) {
            Pipe pipe = this.f24185g;
            Timeout timeout = c.timeout();
            Timeout timeout2 = pipe.m101i().timeout();
            long timeoutNanos = timeout.timeoutNanos();
            timeout.timeout(Timeout.Companion.m30a(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
            if (timeout.hasDeadline()) {
                long deadlineNanoTime = timeout.deadlineNanoTime();
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                }
                try {
                    c.flush();
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
                    c.flush();
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

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.f24184f;
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j) {
        Sink sink;
        Intrinsics.m1830e(source, "source");
        synchronized (this.f24185g.m109a()) {
            if (!(!this.f24185g.m105e())) {
                throw new IllegalStateException("closed".toString());
            } else if (!this.f24185g.m108b()) {
                while (true) {
                    if (j <= 0) {
                        sink = null;
                        break;
                    }
                    sink = this.f24185g.m107c();
                    if (sink != null) {
                        break;
                    } else if (!this.f24185g.m104f()) {
                        long d = this.f24185g.m106d() - this.f24185g.m109a().m188v0();
                        if (d == 0) {
                            this.f24184f.waitUntilNotified(this.f24185g.m109a());
                            if (this.f24185g.m108b()) {
                                throw new IOException("canceled");
                            }
                        } else {
                            long min = Math.min(d, j);
                            this.f24185g.m109a().write(source, min);
                            j -= min;
                            Buffer a = this.f24185g.m109a();
                            if (a != null) {
                                a.notifyAll();
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                            }
                        }
                    } else {
                        throw new IOException("source is closed");
                    }
                }
                Unit unit = Unit.f20447a;
            } else {
                throw new IOException("canceled");
            }
        }
        if (sink != null) {
            Pipe pipe = this.f24185g;
            Timeout timeout = sink.timeout();
            Timeout timeout2 = pipe.m101i().timeout();
            long timeoutNanos = timeout.timeoutNanos();
            timeout.timeout(Timeout.Companion.m30a(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
            if (timeout.hasDeadline()) {
                long deadlineNanoTime = timeout.deadlineNanoTime();
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                }
                try {
                    sink.write(source, j);
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
                    sink.write(source, j);
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
