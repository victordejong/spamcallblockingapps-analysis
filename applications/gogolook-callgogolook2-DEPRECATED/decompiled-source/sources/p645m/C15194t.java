package p645m;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* renamed from: m.t */
/* loaded from: classes3-dex2jar.jar:m/t.class */
public class C15194t {
    public static final C15194t NONE = new C15195a();
    public long deadlineNanoTime;
    public boolean hasDeadline;
    public long timeoutNanos;

    /* renamed from: m.t$a */
    /* loaded from: classes3-dex2jar.jar:m/t$a.class */
    public final class C15195a extends C15194t {
        @Override // p645m.C15194t
        public C15194t deadlineNanoTime(long j) {
            return this;
        }

        @Override // p645m.C15194t
        public void throwIfReached() throws IOException {
        }

        @Override // p645m.C15194t
        public C15194t timeout(long j, TimeUnit timeUnit) {
            return this;
        }
    }

    public C15194t clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public C15194t clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public long deadlineNanoTime() {
        if (this.hasDeadline) {
            return this.deadlineNanoTime;
        }
        throw new IllegalStateException("No deadline");
    }

    public C15194t deadlineNanoTime(long j) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j;
        return this;
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public void throwIfReached() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        } else if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public C15194t timeout(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0: " + j);
        } else if (timeUnit != null) {
            this.timeoutNanos = timeUnit.toNanos(j);
            return this;
        } else {
            throw new IllegalArgumentException("unit == null");
        }
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }
}
