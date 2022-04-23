package b;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:b/r.class */
public class r {

    /* renamed from: b  reason: collision with root package name */
    public static final r f343b = new r() { // from class: b.r.1
        @Override // b.r
        public final r a(long j) {
            return this;
        }

        @Override // b.r
        public final r a(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // b.r
        public final void g() {
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private long f344a;
    public boolean c;
    long d;

    public r a(long j) {
        this.c = true;
        this.f344a = j;
        return this;
    }

    public r a(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0: " + j);
        } else if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        } else {
            this.d = timeUnit.toNanos(j);
            return this;
        }
    }

    public final long f() {
        if (this.c) {
            return this.f344a;
        }
        throw new IllegalStateException("No deadline");
    }

    public void g() {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("thread interrupted");
        } else if (this.c && this.f344a - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }
}
